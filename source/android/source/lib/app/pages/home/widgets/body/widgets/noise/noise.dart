// Home page - Body - Noise

import 'dart:typed_data';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';



class Noise extends HookWidget {

  final double scale;
  final double speed;
  final double sharpness;
  final double blurSigma;
  final int resolution;
  final double topDarkness;
  final double topDarknessHeight;
  final Color primaryColor;
  final Color secondaryColor;
  final Color backgroundColor;


  const Noise ({
    super.key,
    required this.scale,
    required this.speed,
    required this.sharpness,
    required this.blurSigma,
    required this.resolution,
    required this.topDarkness,
    required this.topDarknessHeight,
    required this.primaryColor,
    required this.secondaryColor,
    required this.backgroundColor
  });


  @override Widget build (BuildContext context) {

    final TickerProvider vsync = useSingleTickerProvider ();
    final ValueNotifier <double> timeNotifier = useValueNotifier (0);

    final Offset spaceOffset = useMemoized (() {

      final random = Random ();


      return Offset (
        random.nextDouble () * 10000,  // Случайный сдвиг по x
        random.nextDouble () * 10000  // Случайный сдвиг по y
      );

    });


    useEffect (() {

      final Ticker ticker = vsync.createTicker ((elapsed) {

        timeNotifier.value = elapsed.inMilliseconds / 1000;

      });

      ticker.start ();


      return ticker.dispose;

    }, [vsync]);


    return (

      Container (
        color: backgroundColor,
        child: Stack (
          children: [
            RepaintBoundary (  // Шум перлина
              child: ImageFiltered (
                imageFilter: ImageFilter.blur (
                  sigmaX: blurSigma,
                  sigmaY: blurSigma
                ),
                child: CustomPaint (
                  size: Size.infinite,
                  painter: _NoisePainter (
                    timeNotifier: timeNotifier,
                    spaceOffset: spaceOffset,  // Передаем случайное смещение
                    primaryColor: primaryColor,
                    secondaryColor: secondaryColor,
                    scale: scale,
                    sharpness: sharpness,
                    resolution: resolution,
                    speed: speed
                  )
                )
              )
            ),

            if (topDarkness > 0)  // Затемнение сверху

              Positioned.fill (
                child: IgnorePointer (
                  child: Container (
                    decoration: BoxDecoration (
                      gradient: LinearGradient (
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                          0,
                          topDarknessHeight * 0.5,
                          topDarknessHeight
                        ],
                        colors: [
                          backgroundColor.withValues (
                            alpha: topDarkness
                          ),
                          backgroundColor.withValues (
                            alpha: topDarkness * 0.6
                          ),
                          backgroundColor.withValues (
                            alpha: 0
                          )
                        ]
                      )
                    )
                  )
                )
              )

          ]
        )
      )

    );

  }

}



class _NoisePainter extends CustomPainter {

  final ValueNotifier <double> timeNotifier;
  final Offset spaceOffset;
  final Color primaryColor;
  final Color secondaryColor;
  final double scale;
  final double sharpness;
  final int resolution;
  final double speed;


  late final List <Color> _palette = List.generate (256, (i) {

    final double t = i / 255;
    final double sharpT = pow(t, sharpness).toDouble();


    return Color.lerp (secondaryColor, primaryColor, sharpT)!;

  });


  _NoisePainter ({
    required this.timeNotifier,
    required this.spaceOffset,
    required this.primaryColor,
    required this.secondaryColor,
    required this.scale,
    required this.sharpness,
    required this.resolution,
    required this.speed
  }) : super (repaint: timeNotifier);


  @override void paint (Canvas canvas, Size size) {

    if (size.isEmpty) {

      return;

    }

    final double time = timeNotifier.value * speed;
    final double cellWidth = size.width / resolution;
    final double cellHeight = size.height / resolution;

    final double aspectRatio = size.height / size.width;
    final double stepX = scale;
    final double stepY = scale * aspectRatio;

    final Paint paint = Paint()..style = PaintingStyle.fill;

    for (int y = 0; y < resolution; y++) {

      final double ny = (y * stepY) + spaceOffset.dy;

      final double top = y * cellHeight - 1;
      final double height = cellHeight + 2;

      for (int x = 0; x < resolution; x++) {

        final double nx = (x * stepX) + spaceOffset.dx;

        final double noise = _Noise.noise3D (nx, ny, time);
        final int colorIndex = (noise * 255).clamp(0, 255).round();

        paint.color = _palette [colorIndex];

        canvas.drawRect (
          Rect.fromLTWH (
            x * cellWidth - 1,
            top,
            cellWidth + 2,
            height
          ),
          paint
        );

      }

    }

  }


  @override bool shouldRepaint (covariant _NoisePainter oldDelegate) {

    return oldDelegate.timeNotifier != timeNotifier ||
      oldDelegate.spaceOffset != spaceOffset ||
      oldDelegate.primaryColor != primaryColor ||
      oldDelegate.secondaryColor != secondaryColor ||
      oldDelegate.scale != scale ||
      oldDelegate.sharpness != sharpness ||
      oldDelegate.resolution != resolution ||
      oldDelegate.speed != speed;

  }

}



class _Noise {

  static const List <int> permutation = [151, 160, 137, 91, 90, 15, 131, 13, 201, 95, 96, 53, 194, 233, 7, 225, 140, 36, 103, 30, 69, 142, 8, 99, 37, 240, 21, 10, 23, 190, 6, 148, 247, 120, 234, 75, 0, 26, 197, 62, 94, 252, 219, 203, 117, 35, 11, 32, 57, 177, 33, 88, 237, 149, 56, 87, 174, 20, 125, 136, 171, 168, 68, 175, 74, 165, 71, 134, 139, 48, 27, 166, 77, 146, 158, 231, 83, 111, 229, 122, 60, 211, 133, 230, 220, 105, 92, 41, 55, 46, 245, 40, 244, 102, 143, 54, 65, 25, 63, 161, 1, 216, 80, 73, 209, 76, 132, 187, 208, 89, 18, 169, 200, 196, 135, 130, 116, 188, 159, 86, 164, 100, 109, 198, 173, 186, 3, 64, 52, 217, 226, 250, 124, 123, 5, 202, 38, 147, 118, 126, 255, 82, 85, 212, 207, 206, 59, 227, 47, 16, 58, 17, 182, 189, 28, 42, 223, 183, 170, 213, 119, 248, 152, 2, 44, 154, 163, 70, 221, 153, 101, 155, 167, 43, 172, 9, 129, 22, 39, 253, 19, 98, 108, 110, 79, 113, 224, 232, 178, 185, 112, 104, 218, 246, 97, 228, 251, 34, 242, 193, 238, 210, 144, 12, 191, 179, 162, 241, 81, 51, 145, 235, 249, 14, 239, 107, 49, 192, 214, 31, 181, 199, 106, 157, 184, 84, 204, 176, 115, 121, 50, 45, 127, 4, 150, 254, 138, 236, 205, 93, 222, 114, 67, 29, 24, 72, 243, 141, 128, 195, 78, 66, 215, 61, 156, 180];

  static final Uint16List p = Uint16List.fromList (List.generate (512, (i) => permutation [i % 256]));


  static double fade (double t) {

    return t * t * t * (t * (t * 6 - 15) + 10);

  }

  static double lerp (double a, double b, double t) {

    return a + t * (b - a);

  }

  static double grad (int hash, double x, double y, double z) {

    final int h = hash & 15;
    final double u = h < 8 ? x : y;
    final double v = h < 4 ? y : (h == 12 || h == 14 ? x : z);


    return ((h & 1) == 0 ? u : -u) + ((h & 2) == 0 ? v : -v);

  }

  static double noise3D (double x, double y, double z) {

    final int xFloor = x.floor ();
    final int yFloor = y.floor ();
    final int zFloor = z.floor ();

    final int xi = xFloor & 255;
    final int yi = yFloor & 255;
    final int zi = zFloor & 255;

    final double xf = x - xFloor;
    final double yf = y - yFloor;
    final double zf = z - zFloor;

    final double u = fade (xf);
    final double v = fade (yf);
    final double w = fade (zf);

    final int pXi = p [xi];
    final int pXi1 = p [xi + 1];

    final int pXiy = p [pXi + yi];
    final int pXiy1 = p [pXi + yi + 1];
    final int pXi1y = p [pXi1 + yi];
    final int pXi1y1 = p [pXi1 + yi + 1];

    final int aaa = p [pXiy + zi];
    final int aba = p [pXiy1 + zi];
    final int aab = p [pXiy + zi + 1];
    final int abb = p [pXiy1 + zi + 1];
    final int baa = p [pXi1y + zi];
    final int bba = p [pXi1y1 + zi];
    final int bab = p [pXi1y + zi + 1];
    final int bbb = p [pXi1y1 + zi + 1];

    final double x1 = lerp (grad (aaa, xf, yf, zf), grad (baa, xf - 1, yf, zf), u);
    final double x2 = lerp (grad (aba, xf, yf - 1, zf), grad (bba, xf - 1, yf - 1, zf), u);
    final double y1 = lerp (x1, x2, v);

    final double x3 = lerp (grad (aab, xf, yf, zf - 1), grad (bab, xf - 1, yf, zf - 1), u);
    final double x4 = lerp (grad (abb, xf, yf - 1, zf - 1), grad (bbb, xf - 1, yf - 1, zf - 1), u);
    final double y2 = lerp (x3, x4, v);


    return (lerp (y1, y2, w) + 1) / 2;

  }

}