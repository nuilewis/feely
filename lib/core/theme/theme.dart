import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core.dart';


class AppThemeData {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.neutral98,
    iconTheme: const IconThemeData(color: AppColors.black),
    primaryIconTheme: const IconThemeData(color: AppColors.black),
    expansionTileTheme: ExpansionTileThemeData(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: AppColors.neutral90),
        borderRadius: BorderRadius.circular(Dimensions.padding24),
      ),
      collapsedShape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: AppColors.neutral90),
        borderRadius: BorderRadius.circular(Dimensions.padding16),
      ),
      childrenPadding: const EdgeInsets.only(
          left: Dimensions.padding16, right: Dimensions.padding16, bottom: Dimensions.padding8),
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
    cardColor: AppColors.peach95,
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
      AppTextStyles.bodyMedium.copyWith(color: AppColors.peach10),
      elevation: 0,
      selectedColor: AppColors.peach90,
      backgroundColor: AppColors.neutral95,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: const WidgetStatePropertyAll<Color>(AppColors.white),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.peach40;
        }
        return AppColors.peach90;
      }),
      trackOutlineColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.peach40;
        }
        return AppColors.peach90;
      }),
      trackOutlineWidth: const WidgetStatePropertyAll<double>(0),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: AppColors.peachSeed,
      primary: AppColors.peachSeed,
      onPrimary: AppColors.white,
      primaryContainer: AppColors.peach90,
      onPrimaryContainer: AppColors.peach10,
      secondary: AppColors.lilacSeed,
      secondaryContainer: AppColors.lilac90,
      //Or maybe do Yellow 90
      onSecondary: Colors.white,
      onSecondaryContainer: AppColors.lilac20,
      error: AppColors.red50,
      onError: AppColors.white,
      errorContainer: AppColors.red90,
      onErrorContainer: AppColors.red10,
      tertiary: AppColors.blueSeed,
      onTertiary: AppColors.white,
      tertiaryContainer: AppColors.blue95,
      onTertiaryContainer: AppColors.blue10,
    ),
  );

  ///--------Dark Theme-------///
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.neutral05,
    iconTheme: const IconThemeData(color: AppColors.white),
    primaryIconTheme: const IconThemeData(color: AppColors.white),
    expansionTileTheme: ExpansionTileThemeData(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: AppColors.neutral20),
        borderRadius: BorderRadius.circular(Dimensions.padding24),
      ),
      collapsedShape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: AppColors.neutral20),
        borderRadius: BorderRadius.circular(Dimensions.padding16),
      ),
      childrenPadding: const EdgeInsets.only(
          left: Dimensions.padding16, right: Dimensions.padding16, bottom: Dimensions.padding8),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.peach10;
        }
        return AppColors.neutral70;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.peach70;
        }
        return AppColors.neutral20;
      }),
      trackOutlineColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.peach70;
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
      selectedColor: AppColors.peach60,
      backgroundColor: AppColors.neutral20,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),

    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppColors.peachSeed,
      primary: AppColors.peach60,
      onPrimary: AppColors.peach10,
      primaryContainer: AppColors.peach10,
      onPrimaryContainer: AppColors.peach95,
      secondary: AppColors.lilac70,
      secondaryContainer: AppColors.lilac10,
      onSecondary: AppColors.black,
      onSecondaryContainer: Colors.white,
      error: AppColors.red60,
      onError: AppColors.white,
      errorContainer: AppColors.red10,
      onErrorContainer: AppColors.red90,
      tertiary: AppColors.blue70,
      onTertiary: AppColors.white,
      tertiaryContainer: AppColors.blue10,
      onTertiaryContainer: AppColors.blue90,
    ),
  );
}

