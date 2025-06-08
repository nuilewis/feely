import 'package:flutter/material.dart';

class Dimensions {
  static const double padding4 = 4.0;
  static const double padding8 = 8.0;
  static const double padding12 = 12.0;
  static const double padding16 = 16.0;
  static const double padding24 = 24.0;
  static const double padding32 = 32.0;
  static const double padding48 = 48.0;
  static const double padding64 = 64.0;
}

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
              const BorderSide(width: 1, color: AppColors.peach60),
          borderRadius: BorderRadius.circular(12),

        ),
        filled: true,
        isDense: true,
        fillColor: isDarkMode? Colors.white.withValues(alpha: .1) : AppColors.white,
        hintStyle: AppTextStyles.bodyLarge
            .copyWith(color: AppColors.neutral70),
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
  static const Color blueSeed = Color(0xFF2E8CFF);
  static const Color blue0 = Color(0xFF000000);
  static const Color blue05 = Color(0xFF00112A);
  static const Color blue10 = Color(0xFF001B3D);
  static const Color blue15 = Color(0xFF002550);
  static const Color blue20 = Color(0xFF003063);
  static const Color blue25 = Color(0xFF003B77);
  static const Color blue30 = Color(0xFF00468B);
  static const Color blue35 = Color(0xFF0051A1);
  static const Color blue40 = Color(0xFF005DB6);
  static const Color blue50 = Color(0xFF0076E3);
  static const Color blue60 = Color(0xFF3B90FF);
  static const Color blue70 = Color(0xFF79ACFF);
  static const Color blue80 = Color(0xFFA9C7FF);
  static const Color blue90 = Color(0xFFD6E3FF);
  static const Color blue95 = Color(0xFFECF0FF);
  static const Color blue98 = Color(0xFFF9F9FF);
  static const Color blue99 = Color(0xFFFDFBFF);
  static const Color blue100 = Color(0xFFFFFFFF);


  ///-----------Peach---------///
  static const Color peachSeed = Color(0xFFF5645D);
  static const Color peach0 = Color(0xFF000000);
  static const Color peach05 = Color(0xFF2D0001);
  static const Color peach10 = Color(0xFF410001);
  static const Color peach15 = Color(0xFF540006);
  static const Color peach20 = Color(0xFF680205);
  static const Color peach25 = Color(0xFF780F0C);
  static const Color peach30 = Color(0xFF891D17);
  static const Color peach35 = Color(0xFF992921);
  static const Color peach40 = Color(0xFFAA352B);
  static const Color peach50 = Color(0xFFCB4D41);
  static const Color peach60 = Color(0xFFED6658);
  static const Color peach70 = Color(0xFFFF8A7B);
  static const Color peach80 = Color(0xFFFFB4AA);
  static const Color peach90 = Color(0xFFFFDAD5);
  static const Color peach95 = Color(0xFFFFEDEA);
  static const Color peach98 = Color(0xFFFFF8F7);
  static const Color peach99 = Color(0xFFFFFBFF);
  static const Color peach100 = Color(0xFFFFFFFF);

  ///-----------Lilac---------///
  static const Color lilacSeed = Color(0xFFF5645D);
  static const Color lilac0 = Color(0xFF000000);
  static const Color lilac05 = Color(0xFF120C29);
  static const Color lilac10 = Color(0xFF1D1735);
  static const Color lilac15 = Color(0xFF27213F);
  static const Color lilac20 = Color(0xFF322C4B);
  static const Color lilac25 = Color(0xFF3D3757);
  static const Color lilac30 = Color(0xFF494263);
  static const Color lilac35 = Color(0xFF554E6F);
  static const Color lilac40 = Color(0xFF615A7B);
  static const Color lilac50 = Color(0xFF7B7295);
  static const Color lilac60 = Color(0xFFAFA6CC);
  static const Color lilac70 = Color(0xFFCBC1E8);
  static const Color lilac80 = Color(0xFFE7DEFF);
  static const Color lilac90 = Color(0xFFF5EEFF);
  static const Color lilac95 = Color(0xFFFDF7FF);
  static const Color lilac98 = Color(0xFFFFF8F7);
  static const Color lilac99 = Color(0xFFFFFBFF);
  static const Color lilac100 = Color(0xFFFFFFFF);

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
  static const Color greenSeed = Color(0xFF07BA57);
  static const Color green0 = Color(0xFF000000);
  static const Color green05 = Color(0xFF001605);
  static const Color green10 = Color(0xFF00210B);
  static const Color green15 = Color(0xFF012D10);
  static const Color green20 = Color(0xFF013916);
  static const Color green25 = Color(0xFF00461C);
  static const Color green30 = Color(0xFF005322);
  static const Color green35 = Color(0xFF036029);
  static const Color green40 = Color(0xFF016D30);
  static const Color green50 = Color(0xFF008A3F);
  static const Color green60 = Color(0xFF008A3F);
  static const Color green70 = Color(0xFF23C460);
  static const Color green80 = Color(0xFF4BE178);
  static const Color green90 = Color(0xFF6CFE92);
  static const Color green95 = Color(0xFFC5FFC8);
  static const Color green98 = Color(0xFFEAFFE8);
  static const Color green99 = Color(0xFFF6FFF2);
  static const Color green100 = Color(0xFFFFFFFF);

  ///-----------Red---------///
  static const Color redSeed = Color(0xFFED2950);
  static const Color red0 = Color(0xFF000000);
  static const Color red05 = Color(0xFF2B0006);
  static const Color red10 = Color(0xFF40000D);
  static const Color red15 = Color(0xFF530013);
  static const Color red20 = Color(0xFF68011A);
  static const Color red25 = Color(0xFF7C0022);
  static const Color red30 = Color(0xFF910128);
  static const Color red35 = Color(0xFFBE0037);
  static const Color red40 = Color(0xFFBE0037);
  static const Color red50 = Color(0xFFE6234B);
  static const Color red60 = Color(0xFFFF5168);
  static const Color red70 = Color(0xFFFF8790);
  static const Color red80 = Color(0xFFFFB3B6);
  static const Color red90 = Color(0xFFFFDADA);
  static const Color red95 = Color(0xFFFFEDEC);
  static const Color red98 = Color(0xFFFFF8F7);
  static const Color red99 = Color(0xFFFFFBFF);
  static const Color red100 = Color(0xFFFFFFFF);

  ///-----------Neutral---------///
  static const Color neutral0 = Color(0xFF000000);
  static const Color neutral05 = Color(0xFF111111);
  static const Color neutral10 = Color(0xFF1C1B1B);
  static const Color neutral15 = Color(0xFF272525);
  static const Color neutral20 = Color(0xFF313030);
  static const Color neutral25 = Color(0xFF3C3B3B);
  static const Color neutral30 = Color(0xFF484646);
  static const Color neutral35 = Color(0xFF545252);
  static const Color neutral40 = Color(0xFF605E5D);
  static const Color neutral50 = Color(0xFF787676);
  static const Color neutral60 = Color(0xFF92908F);
  static const Color neutral70 = Color(0xFFAEAAAA);
  static const Color neutral80 = Color(0xFFC8C6C5);
  static const Color neutral90 = Color(0xFFE6E1E1);
  static const Color neutral95 = Color(0xFFF4F0EF);
  static const Color neutral98 = Color(0xFFFDF8F7);
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






