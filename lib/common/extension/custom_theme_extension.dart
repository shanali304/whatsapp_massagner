import 'package:flutter/material.dart';
import 'package:whatsapp_massagner/common/ultis/colors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const LightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: Coloors.greylight,
    blueColor: Coloors.bluelight,
    langBtnBgColor: Color(0xFFF7F8FA),
    langBtnHighlightColor: Color(0XFFE8E8ED),
    authAppbarTextColor: Coloors.grenlight,
  );
  static const darkMode = CustomThemeExtension(
      circleImageColor: Coloors.grenDark,
      greyColor: Coloors.greyDark,
      blueColor: Coloors.blueDark,
      langBtnBgColor: Color(0xFF182229),
      langBtnHighlightColor: Color(0XFF09141A),
      authAppbarTextColor: Color(0xFFE9EDEF));

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighlightColor;
  final Color? authAppbarTextColor;

  const CustomThemeExtension({
    this.langBtnHighlightColor,
    this.authAppbarTextColor,
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnBgColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHighlightColor,
    Color? authAppbarTextColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,

      langBtnHighlightColor:
          langBtnHighlightColor ?? this.langBtnHighlightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      authAppbarTextColor: Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),

      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      langBtnHighlightColor:
          Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t),
    );
  }

  of(BuildContext buildContext) {}
}
