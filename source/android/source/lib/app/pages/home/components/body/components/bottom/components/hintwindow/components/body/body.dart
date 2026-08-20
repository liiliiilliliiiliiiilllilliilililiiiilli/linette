// Home page - Body - Bottom - Hint window - Body

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';



class BodyComponent extends StatelessWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    final String text = 'Если Вы сталкиваетесь с проблемами доступа к удаленным ресурсам или хотите сохранить конфиденциальность личных данных в небезопасной сети, одним из решений может стать надежное VPN соединение.\n\nVPN (Virtual Private Network) - технология межсетевой коммуникации для создания безопасных виртуальных каналов связи. Шифруемые данные трафика защищены криптографическими методами так, что злоумышленнику при перехвате на их дешифровку потребуются миллионы и миллионы лет.\n\nПомимо VPN сущетсвует множество иных способов обезопасить себя в сети, например сетевые прокси или изменение IP адреса. Почти каждый из них разделяет принципы работы VPN, а также имеет ряд отдельных протоколов связи, разработанных для лучшей работы в определенных сценариях (корпоративные, персональные решения или иные специфические области).\n\nНесмотря на свои широкие возможности, такие технологии основаны на простых математических принципах и несложны в реализации. При желании, Вы можете развернуть свой собственный VPN сервер или настроить приватный прокси - это лучший способ сохранить контроль и приватность Ваших данных.\n\nOliveVPN - такой же сетевой провайдер, каким Вы можете стать для самих себя, если внимательно изучите кибербезопасность и основы программирования.\n\nПомните: никто не может ощутить информацию физически, но кто угодно может воплотить любую идею, основанную на этой информации.';


    return (

      Expanded (
        child: Container (
          padding: EdgeInsets.symmetric (
            horizontal: 20
          ),
          child: Stack (
            children: [
              SingleChildScrollView (
                child: Padding (
                  padding: EdgeInsets.only (
                    top: 10
                  ),
                  child: Text (
                    text,
                    style: TextStyle (
                      fontFamily: 'Fedoka',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: context.colors.white
                    )
                  )
                )
              ),
              Positioned (
                top: 0,
                left: 0,
                right: 0,
                height: 15,
                child: IgnorePointer (
                  child: Container (
                    decoration: BoxDecoration (
                      gradient: LinearGradient (
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          context.colors.windowBack,
                          context.colors.windowBack.withAlpha (0)
                        ]
                      )
                    )
                  )
                )
              )
            ]
          )
        )
      )

    );

  }

}