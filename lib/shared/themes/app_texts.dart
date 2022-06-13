import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_app/shared/themes/app_colors.dart';

class AppTexts {
  static final title = GoogleFonts.robotoCondensed(
    fontSize: 24,
    color: AppColors.shadow,
    fontWeight: FontWeight.bold
  );

  static final subtitle = GoogleFonts.robotoCondensed(
    fontSize: 22,
    color: AppColors.shadow,
    fontWeight: FontWeight.bold
  );

  static final search = GoogleFonts.robotoCondensed(
    fontSize: 18,
    color: AppColors.shadow,
  );

  static final small = GoogleFonts.robotoCondensed(
    fontSize: 16,
    color: AppColors.shadow,
  );

  static final link = GoogleFonts.robotoCondensed(
    fontSize: 18,
    color: AppColors.button,
    fontWeight: FontWeight.bold
  );

  static final mediun = GoogleFonts.robotoCondensed(
    fontSize: 20,
    color: AppColors.shadow,
    fontWeight: FontWeight.bold
  );

  static final description = GoogleFonts.robotoCondensed(
    fontSize: 18,
    color: AppColors.shadow,
  );

  static final extra = GoogleFonts.robotoCondensed(
    fontSize: 18,
    color: AppColors.background,
    fontWeight: FontWeight.bold
  );
}