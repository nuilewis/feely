import 'package:flutter/material.dart';

///-------Paddings--------///
const double kPadding4 = 4.0;
const double kPadding8 = 8.0;
const double kPadding12 = 12.0;
const double kPadding16 = 16.0;
const double kPadding24 = 24.0;
const double kPadding32 = 32.0;
const double kPadding48 = 48.0;
const double kPadding64 = 64.0;

///------Input Decorations-------///
class AppInputDecoration {
  static InputDecoration inputDecoration(BuildContext context){
  final ThemeData theme = Theme.of(context);
  final bool isDarkMode = theme.brightness == Brightness.dark;
    return InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        errorStyle: AppTextStyles.bodyLarge
            .copyWith(color: Theme.of(context).colorScheme.error),
        errorBorder: OutlineInputBorder(
          gapPadding: 4,
          borderSide:
              BorderSide(color: Theme.of(context).colorScheme.error, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        disabledBorder: OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 0,
          borderSide:
              const BorderSide(width: 1, color: AppColors.blue60),
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        isDense: true,
        fillColor: Theme.of(context).cardColor,
        hintStyle: AppTextStyles.bodyLarge
            .copyWith(color: isDarkMode ? AppColors.neutral30 : AppColors.neutral70),
        labelStyle:
            AppTextStyles.bodyLarge.copyWith(color: AppColors.black));
  }

  static InputDecoration borderlessInputDecoration(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDarkMode = theme.brightness == Brightness.dark;
    return InputDecoration(

        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
        errorStyle: AppTextStyles.bodyLarge
            .copyWith(color: Theme.of(context).colorScheme.error),
        errorBorder: OutlineInputBorder(
          gapPadding: 4,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        disabledBorder: OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 0,
          borderSide:
        BorderSide.none,
         // const BorderSide(width: 1, color: AppColors.blue60),
          borderRadius: BorderRadius.circular(12),
        ),

        filled: false,
        isDense: true,
        hintStyle: AppTextStyles.titleLarge
            .copyWith(color: isDarkMode ? AppColors.neutral30 : AppColors.neutral70),



    );
  }

}

///------Colors-------///
class AppColors {
  static const Color black = Color(0xFF101114);
  static const Color white = Color(0xFFFFFFFF);

  ///-----------Blue---------///
  static const Color blueSeed = Color(0xFF2F489A);
  static const Color blue0 = Color(0xFF000000);
  static const Color blue05 = Color(0xFF000C38);
  static const Color blue10 = Color(0xFF001650);
  static const Color blue15 = Color(0xFF011E67);
  static const Color blue20 = Color(0xFF06287B);
  static const Color blue25 = Color(0xFF183486);
  static const Color blue30 = Color(0xFF183486);
  static const Color blue35 = Color(0xFF284092);
  static const Color blue40 = Color(0xFF4159AC);
  static const Color blue50 = Color(0xFF5C72C7);
  static const Color blue60 = Color(0xFF748CE3);
  static const Color blue70 = Color(0xFF90A7FF);
  static const Color blue80 = Color(0xFFB6C4FF);
  static const Color blue90 = Color(0xFFDCE1FF);
  static const Color blue95 = Color(0xFFEFF0FF);
  static const Color blue98 = Color(0xFFFAF8FF);
  static const Color blue99 = Color(0xFFFFFBFF);
  static const Color blue100 = Color(0xFFFFFFFF);

  ///-----------Light Blue---------///
  static const Color lightBlueSeed = Color(0xFF2E8CFF);
  static const Color lightBlue0 = Color(0xFF000000);
  static const Color lightBlue05 = Color(0xFF00112A);
  static const Color lightBlue10 = Color(0xFF001B3D);
  static const Color lightBlue15 = Color(0xFF002550);
  static const Color lightBlue20 = Color(0xFF003063);
  static const Color lightBlue25 = Color(0xFF003B77);
  static const Color lightBlue30 = Color(0xFF00468B);
  static const Color lightBlue35 = Color(0xFF0051A1);
  static const Color lightBlue40 = Color(0xFF005DB6);
  static const Color lightBlue50 = Color(0xFF0076E3);
  static const Color lightBlue60 = Color(0xFF3B90FF);
  static const Color lightBlue70 = Color(0xFF79ACFF);
  static const Color lightBlue80 = Color(0xFFA9C7FF);
  static const Color lightBlue90 = Color(0xFFD6E3FF);
  static const Color lightBlue95 = Color(0xFFECF0FF);
  static const Color lightBlue98 = Color(0xFFF9F9FF);
  static const Color lightBlue99 = Color(0xFFFDFBFF);
  static const Color lightBlue100 = Color(0xFFFFFFFF);


  ///-----------Peach---------///
  static const Color peachSeed = Color(0xFFF5645D);
  static const Color peach0 = Color(0xFF000000);
  static const Color peach05 = Color(0xFF2D0002);
  static const Color peach10 = Color(0xFF410003);
  static const Color peach15 = Color(0xFF540006);
  static const Color peach20 = Color(0xFF680009);
  static const Color peach25 = Color(0xFF7B0710);
  static const Color peach30 = Color(0xFF8C161A);
  static const Color peach35 = Color(0xFF9D2424);
  static const Color peach40 = Color(0xFFAE302E);
  static const Color peach50 = Color(0xFFCF4844);
  static const Color peach60 = Color(0xFFF1615B);
  static const Color peach70 = Color(0xFFFF8981);
  static const Color peach80 = Color(0xFFFFB3AD);
  static const Color peach90 = Color(0xFFFFDAD6);
  static const Color peach95 = Color(0xFFFFEDEB);
  static const Color peach98 = Color(0xFFFFF8F7);
  static const Color peach99 = Color(0xFFFFFBFF);
  static const Color peach100 = Color(0xFFFFFFFF);

  ///-----------Yellow---------///
  static const Color yellowSeed = Color(0xFFFFC482);
  static const Color yellow0 = Color(0xFF000000);
  static const Color yellow05 = Color(0xFF1C0D00);
  static const Color yellow10 = Color(0xFF2B1700);
  static const Color yellow15 = Color(0xFF392000);
  static const Color yellow20 = Color(0xFF482900);
  static const Color yellow25 = Color(0xFF573300);
  static const Color yellow30 = Color(0xFF653E06);
  static const Color yellow35 = Color(0xFF734912);
  static const Color yellow40 = Color(0xFF81551E);
  static const Color yellow50 = Color(0xFF9D6D34);
  static const Color yellow60 = Color(0xFFBA874B);
  static const Color yellow70 = Color(0xFFD7A162);
  static const Color yellow80 = Color(0xFFF6BC7A);
  static const Color yellow90 = Color(0xFFFFDDBA);
  static const Color yellow95 = Color(0xFFFFEEDF);
  static const Color yellow98 = Color(0xFFFFF8F4);
  static const Color yellow99 = Color(0xFFFFFBFF);
  static const Color yellow100 = Color(0xFFFFFFFF);

  ///-----------Green---------///
  static const Color greenSeed = Color(0xFF0EB63D);
  static const Color green0 = Color(0xFF000000);
  static const Color green05 = Color(0xFF001602);
  static const Color green10 = Color(0xFF002105);
  static const Color green15 = Color(0xFF012D08);
  static const Color green20 = Color(0xFF01390D);
  static const Color green25 = Color(0xFF004611);
  static const Color green30 = Color(0xFF005316);
  static const Color green35 = Color(0xFF03601B);
  static const Color green40 = Color(0xFF006E20);
  static const Color green50 = Color(0xFF008A2C);
  static const Color green60 = Color(0xFF05A836);
  static const Color green70 = Color(0xFF2CC549);
  static const Color green80 = Color(0xFF4FE163);
  static const Color green90 = Color(0xFFB5F2B0);
  static const Color green95 = Color(0xFFC8FFC0);
  static const Color green98 = Color(0xFFEBFFE5);
  static const Color green99 = Color(0xFFF6FFF0);
  static const Color green100 = Color(0xFFFFFFFF);

  ///-----------Red---------///
  static const Color redSeed = Color(0xFFF56476);
  static const Color red0 = Color(0xFF000000);
  static const Color red05 = Color(0xFF2C0007);
  static const Color red10 = Color(0xFF40000E);
  static const Color red15 = Color(0xFF530015);
  static const Color red20 = Color(0xFF67001C);
  static const Color red25 = Color(0xFF7C0223);
  static const Color red30 = Color(0xFF8C132E);
  static const Color red35 = Color(0xFF9C2138);
  static const Color red40 = Color(0xFFAD2E43);
  static const Color red50 = Color(0xFFCE475A);
  static const Color red60 = Color(0xFFF06072);
  static const Color red70 = Color(0xFFFF8792);
  static const Color red80 = Color(0xFFFFB2B7);
  static const Color red90 = Color(0xFFFFDADB);
  static const Color red95 = Color(0xFFFFECED);
  static const Color red98 = Color(0xFFFFF8F7);
  static const Color red99 = Color(0xFFFFFBFF);
  static const Color red100 = Color(0xFFFFFFFF);

  ///-----------Neutral---------///
  static const Color neutral0 = Color(0xFF000000);
  static const Color neutral05 = Color(0xFF101114);
  static const Color neutral10 = Color(0xFF1A1B1F);
  static const Color neutral15 = Color(0xFF252629);
  static const Color neutral20 = Color(0xFF2F3033);
  static const Color neutral25 = Color(0xFF3B3B3F);
  static const Color neutral30 = Color(0xFF46464A);
  static const Color neutral35 = Color(0xFF525256);
  static const Color neutral40 = Color(0xFF5E5E62);
  static const Color neutral50 = Color(0xFF77777A);
  static const Color neutral60 = Color(0xFF919094);
  static const Color neutral70 = Color(0xFFABABAF);
  static const Color neutral80 = Color(0xFFC7C6CA);
  static const Color neutral90 = Color(0xFFE3E2E6);
  static const Color neutral95 = Color(0xFFF2F0F4);
  static const Color neutral98 = Color(0xFFFAF9FD);
  static const Color neutral99 = Color(0xFFFDFBFF);
  static const Color neutral100 = Color(0xFFFFFFFF);
}

///------Text Styles-------///
class AppTextStyles {

  ///---Display---//
  static TextStyle displayLarge = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 57,
  );

  static TextStyle displayMedium = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 45,
  );

  static TextStyle displaySmall = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 36,
  );

  ///---Headline---///
  static TextStyle headlineLarge = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 32,
  );
  static TextStyle headlineMedium = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 28,
  );
  static TextStyle headlineSmall = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  ///---Title---///

  static TextStyle titleLarge = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 22,
  );

  static TextStyle titleMedium = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  static TextStyle titleSmall = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  ///---Body---///

  static TextStyle bodyLarge = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static TextStyle bodyMedium = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  static TextStyle bodySmall = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );
}






