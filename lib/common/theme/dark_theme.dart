import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_massagner/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_massagner/common/ultis/colors.dart';
ThemeData darkTheme(){
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      backgroundColor: Coloors.backgroundDark,
      scaffoldBackgroundColor: Coloors.backgroundDark,
      extensions: [
        CustomThemeExtension.darkMode,
      ],
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
        )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
           backgroundColor:Coloors.grenDark,
          foregroundColor:Coloors.backgroundDark,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent
        )
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Coloors.greyBackground,
        modalBackgroundColor:Coloors.greyBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          )
        )
      ),
  );

}