import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_massagner/common/ultis/colors.dart';

import '../extension/custom_theme_extension.dart';
ThemeData lightTheme(){
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      backgroundColor: Coloors.backgroundLight,
      scaffoldBackgroundColor: Coloors.backgroundLight,
       extensions: [
        CustomThemeExtension.LightMode,
      ],
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
        )
      ),
         elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
           backgroundColor:Coloors.grenlight,
          foregroundColor:Coloors.backgroundLight,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent
        )
      ),
         bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Coloors.backgroundLight,
        modalBackgroundColor:Coloors.backgroundLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          )
        )
      ),
  );

}