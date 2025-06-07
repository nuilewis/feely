import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core.dart';


class AppThemeData {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white,
    iconTheme: const IconThemeData(color: AppColors.black),
    primaryIconTheme: const IconThemeData(color: AppColors.black),
    expansionTileTheme: ExpansionTileThemeData(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: AppColors.neutral90),
        borderRadius: BorderRadius.circular(kPadding24),
      ),
      collapsedShape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: AppColors.neutral90),
        borderRadius: BorderRadius.circular(kPadding16),
      ),
      childrenPadding: const EdgeInsets.only(
          left: kPadding16, right: kPadding16, bottom: kPadding8),
    ),
    fontFamily: 'SF Pro',
    textTheme: TextTheme(
      displayLarge:
      AppTextStyles.displayLarge.copyWith(color: AppColors.black),
      displayMedium:
      AppTextStyles.displayMedium.copyWith(color: AppColors.black),
      displaySmall:
      AppTextStyles.displaySmall.copyWith(color: AppColors.black),

      ///
      headlineLarge:
      AppTextStyles.headlineLarge.copyWith(color: AppColors.black),
      headlineSmall:
      AppTextStyles.headlineSmall.copyWith(color: AppColors.black),
      headlineMedium:
      AppTextStyles.headlineMedium.copyWith(color: AppColors.black),

      ///
      titleLarge: AppTextStyles.titleLarge.copyWith(color: AppColors.black),
      titleMedium:
      AppTextStyles.titleMedium.copyWith(color: AppColors.black),
      titleSmall: AppTextStyles.titleSmall.copyWith(color: AppColors.black),

      ///
      bodyLarge: AppTextStyles.bodyLarge.copyWith(color: AppColors.black),
      bodyMedium: AppTextStyles.bodyMedium.copyWith(color: AppColors.black),
      bodySmall: AppTextStyles.bodySmall.copyWith(color: AppColors.black),
    ),
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 0,
        backgroundColor: Colors.transparent),
    cardColor: AppColors.blue95,
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          fixedSize: WidgetStatePropertyAll<Size>(Size.fromHeight(52)),
          padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(horizontal: 16)),
          elevation: WidgetStatePropertyAll<double>(0),
          splashFactory: InkSparkle.splashFactory),
    ),
    iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
          splashFactory: InkSparkle.splashFactory,
          elevation: WidgetStatePropertyAll<double>(0),
        )),
    textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll<double>(0),
          splashFactory: InkSparkle.splashFactory,
        )),
    chipTheme: ChipThemeData(
      labelStyle:
      AppTextStyles.bodyMedium.copyWith(color: AppColors.blue10),
      elevation: 0,
      selectedColor: AppColors.blue90,
      backgroundColor: AppColors.neutral95,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: const WidgetStatePropertyAll<Color>(AppColors.white),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.blue40;
        }
        return AppColors.blue90;
      }),
      trackOutlineColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.blue40;
        }
        return AppColors.blue90;
      }),
      trackOutlineWidth: const WidgetStatePropertyAll<double>(0),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: AppColors.blueSeed,
      primary: AppColors.blueSeed,
      onPrimary: AppColors.white,
      primaryContainer: AppColors.blue95,
      onPrimaryContainer: AppColors.blue10,
      secondary: AppColors.peachSeed,
      secondaryContainer: AppColors.peach95,
      //Or maybe do Yellow 90
      onSecondary: Colors.white,
      onSecondaryContainer: AppColors.peach20,
      error: AppColors.red50,
      onError: AppColors.white,
      errorContainer: AppColors.red90,
      onErrorContainer: AppColors.red10,
      tertiary: AppColors.greenSeed,
      onTertiary: AppColors.white,
      tertiaryContainer: AppColors.green95,
      onTertiaryContainer: AppColors.green10,
    ),
  );

  ///--------Dark Theme-------///
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.black,
    iconTheme: const IconThemeData(color: AppColors.white),
    primaryIconTheme: const IconThemeData(color: AppColors.white),
    expansionTileTheme: ExpansionTileThemeData(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: AppColors.neutral20),
        borderRadius: BorderRadius.circular(kPadding24),
      ),
      collapsedShape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: AppColors.neutral20),
        borderRadius: BorderRadius.circular(kPadding16),
      ),
      childrenPadding: const EdgeInsets.only(
          left: kPadding16, right: kPadding16, bottom: kPadding8),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.blue10;
        }
        return AppColors.neutral70;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.blue70;
        }
        return AppColors.neutral20;
      }),
      trackOutlineColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.blue70;
        }
        return AppColors.neutral20;
      }),
      trackOutlineWidth: const WidgetStatePropertyAll<double>(0),
    ),
    fontFamily: 'SF Pro',
    textTheme: TextTheme(
      displayLarge:
      AppTextStyles.displayLarge.copyWith(color: AppColors.white),
      displayMedium:
      AppTextStyles.displayMedium.copyWith(color: AppColors.white),
      displaySmall:
      AppTextStyles.displaySmall.copyWith(color: AppColors.white),

      ///
      headlineLarge:
      AppTextStyles.headlineLarge.copyWith(color: AppColors.white),
      headlineSmall:
      AppTextStyles.headlineSmall.copyWith(color: AppColors.white),
      headlineMedium:
      AppTextStyles.headlineMedium.copyWith(color: AppColors.white),

      ///
      titleLarge: AppTextStyles.titleLarge.copyWith(color: AppColors.white),
      titleMedium:
      AppTextStyles.titleMedium.copyWith(color: AppColors.white),
      titleSmall: AppTextStyles.titleSmall.copyWith(color: AppColors.white),

      ///
      bodyLarge: AppTextStyles.bodyLarge.copyWith(color: AppColors.white),
      bodyMedium: AppTextStyles.bodyMedium.copyWith(color: AppColors.white),
      bodySmall: AppTextStyles.bodySmall.copyWith(color: AppColors.white),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    cardColor: AppColors.neutral20,
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        fixedSize: WidgetStatePropertyAll<Size>(Size.fromHeight(52)),
        padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 16)),
        elevation: WidgetStatePropertyAll<double>(0),
        splashFactory: InkSparkle.splashFactory,
      ),
    ),
    iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
          splashFactory: InkSparkle.splashFactory,
          elevation: WidgetStatePropertyAll<double>(0),
        )),
    textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll<double>(0),
          splashFactory: InkSparkle.splashFactory,
        )),
    chipTheme: ChipThemeData(
      elevation: 0,
      selectedColor: AppColors.blue60,
      backgroundColor: AppColors.neutral20,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),

    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppColors.blueSeed,
      primary: AppColors.blue60,
      onPrimary: AppColors.blue10,
      primaryContainer: AppColors.blue10,
      onPrimaryContainer: AppColors.blue95,
      secondary: AppColors.peach70,
      secondaryContainer: AppColors.peach10,
      //Or maybe do Yellow 90
      onSecondary: AppColors.black,
      onSecondaryContainer: Colors.white,
      error: AppColors.red60,
      onError: AppColors.white,
      errorContainer: AppColors.red10,
      onErrorContainer: AppColors.red90,
      tertiary: AppColors.green70,
      onTertiary: AppColors.white,
      tertiaryContainer: AppColors.green10,
      onTertiaryContainer: AppColors.green90,
    ),
  );
}

