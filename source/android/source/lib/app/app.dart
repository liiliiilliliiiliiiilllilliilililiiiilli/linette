import 'package:flutter/material.dart';



class App extends StatelessWidget {

	const App ({super.key});

	@override
	Widget build (BuildContext context) {

		return Column (

			crossAxisAlignment: CrossAxisAlignment.stretch,

			children: [

				Container (
					width: 50,
					height: 86,
					decoration: BoxDecoration (
						color: Color (0xff070707),
						border: Border (
							bottom: BorderSide (
								width: 2.0,
								color: Color (0xff171717)
							)
						)
					),
					child: Row (children: [
						Container (
							width: 25,
							height: 25,
							decoration: BoxDecoration (
								color: Color (0xff000000),
								border: Border.all (
									width: 3,
									color: Color (0xff202020)
								),
								borderRadius: BorderRadius.circular (50)
							)
						),
						Text ('Linette')
					])
				),

				SizedBox (
					width: 10,
					height: 10
				),

				Expanded (child:

					Container (
						width: 50,
						color: Colors.blue
					)

				),

				SizedBox (
					width: 10,
					height: 10
				),

				Container (
					width: 50,
					height: 76,
					decoration: BoxDecoration (
						color: Color (0xff070707),
						border: Border (
							top: BorderSide (
								width: 2.0,
								color: Color (0xff171717)
							)
						)
					)
				)

		]);

	}

}