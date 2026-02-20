import 'package:flutter/material.dart';
import 'package:r_shop_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:r_shop_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:r_shop_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:r_shop_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:r_shop_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:r_shop_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:r_shop_app/utils/theme/custom_themes/text_theme.dart';
import 'package:r_shop_app/utils/theme/custom_themes/textformfield.dart';

/// -- Dark and Light Theme Setup
class RAppTheme {
  RAppTheme._();

  /// -- Light Theme's
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: RTextTheme.lightTextTheme,
    chipTheme: RChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: RAppBarTheme.lightAppBarTheme,
    checkboxTheme: RCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: RBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: RElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ROutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: RTextFormFieldTheme.lightInputDecorationTheme,
  );

  /// -- dark Theme's
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: RTextTheme.darkTextTheme,
    chipTheme: RChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: RAppBarTheme.darkAppBarTheme,
    checkboxTheme: RCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: RBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: RElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ROutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: RTextFormFieldTheme.darkInputDecorationTheme,
  );
}
