import 'package:flutter/material.dart';
import 'package:my_portfolio/Globals/app_colors.dart';
import 'package:my_portfolio/Globals/app_text_style.dart';

class AppMateralButton {
  static MaterialButton buildMaterialButton({required VoidCallback onTap,required String buttonText}) {
    return MaterialButton(
      height: 50,
      minWidth: 130,
      color: AppColors.themeColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      elevation: 6,
      focusElevation: 12,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      hoverColor: AppColors.hoverColor,
      onPressed: onTap,
      child: Text(buttonText,
          style:
              AppTextStyle.signikaNegativeTextStyle(color: AppColors.bgColor)),
    );
  }
}
