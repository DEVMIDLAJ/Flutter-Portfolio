import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Globals/app_colors.dart';
import 'package:my_portfolio/Globals/app_material_button.dart';
import 'package:my_portfolio/Globals/app_text_style.dart';
import 'package:my_portfolio/Globals/constants.dart';
import 'package:my_portfolio/helper_class/helper_class.dart';

class ContactUs extends StatelessWidget {
  ContactUs({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailSubjectController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Constants.sizedBox(hight: size.height * 0.03),
            buildContactUsText(),
            Constants.sizedBox(hight: size.height * 0.03),
            Material(
              borderRadius: BorderRadius.circular(12),
              elevation: 8,
              child: buildCustomTextFeild(
                textController: nameController,
                size: size,
                hintText: 'Full Name',
              ),
            ),
            Constants.sizedBox(hight: size.height * 0.02),
            Material(
              borderRadius: BorderRadius.circular(12),
              elevation: 8,
              child: buildCustomTextFeild(
                size: size,
                textController: emailController,
                hintText: 'Email Address',
              ),
            ),
            Constants.sizedBox(hight: size.height * 0.02),
            Material(
              borderRadius: BorderRadius.circular(12),
              elevation: 8,
              child: buildCustomTextFeild(
                textController: phoneNumberController,
                size: size,
                hintText: 'Mobile Number',
              ),
            ),
            Constants.sizedBox(hight: size.height * 0.02),
            Material(
              borderRadius: BorderRadius.circular(12),
              elevation: 8,
              child: buildCustomTextFeild(
                textController: emailSubjectController,
                size: size,
                hintText: 'Email Subject',
              ),
            ),
            Constants.sizedBox(hight: size.height * 0.02),
            Material(
              borderRadius: BorderRadius.circular(12),
              elevation: 8,
              child: buildCustomTextFeild(
                size: size,
                textController: messageController,
                hintText: 'Your Message',
                maxLine: 15,
              ),
            ),
            Constants.sizedBox(hight: size.height * 0.04),
            AppMateralButton.buildMaterialButton(
              onTap: () {},
              buttonText: 'Send Message',
            ),
            Constants.sizedBox(hight: size.height * 0.02),
          ],
        ),
      ),
      tablet: SingleChildScrollView(
        child: buildFormSection(size),
      ),
      desktop: SingleChildScrollView(
        child: buildFormSection(size),
      ),
      paddingWidth: size.width * 0.1,
      backgroungColor: AppColors.bgColor2,
    );
  }

  Column buildFormSection(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Constants.sizedBox(hight: size.height * 0.02),
        buildContactUsText(),
        Constants.sizedBox(hight: size.height * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 8,
                child: buildCustomTextFeild(
                  textController: nameController,
                  size: size,
                  hintText: 'Full Name',
                ),
              ),
            ),
            Constants.sizedBox(width: size.width * 0.01),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 8,
                child: buildCustomTextFeild(
                  size: size,
                  textController: emailController,
                  hintText: 'Email Address',
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(hight: size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 8,
                child: buildCustomTextFeild(
                  textController: phoneNumberController,
                  size: size,
                  hintText: 'Mobile Number',
                ),
              ),
            ),
            Constants.sizedBox(width: size.width * 0.01),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(12),
                elevation: 8,
                child: buildCustomTextFeild(
                  textController: emailSubjectController,
                  size: size,
                  hintText: 'Email Subject',
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(hight: size.height * 0.02),
        Material(
          borderRadius: BorderRadius.circular(12),
          elevation: 8,
          child: buildCustomTextFeild(
            size: size,
            textController: messageController,
            hintText: 'Your Message',
            maxLine: 15,
          ),
        ),
        Constants.sizedBox(hight: size.height * 0.03),
        AppMateralButton.buildMaterialButton(
          onTap: () {},
          buttonText: 'Send Message',
        ),
        Constants.sizedBox(hight: size.height * 0.05),
      ],
    );
  }

  FadeInUp buildContactUsText() {
    return FadeInUp(
      duration: const Duration(milliseconds: 1400),
      child: RichText(
        text: TextSpan(
          text: 'Contact',
          style: AppTextStyle.rubicTextStyle(fontSize: 30),
          children: [
            TextSpan(
              text: ' Me!',
              style: AppTextStyle.rubicTextStyle(
                fontSize: 30,
                color: AppColors.themeColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildCustomTextFeild({
    Size? size,
    int? maxLine,
    required TextEditingController textController,
    required String hintText,
  }) {
    return TextField(
      controller: textController,
      cursorColor: AppColors.white,
      style: AppTextStyle.comfortaaTextStyle(color: AppColors.white),
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyle.comfortaaTextStyle(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: AppColors.bgColor,
        contentPadding: EdgeInsets.symmetric(
          horizontal: size!.width * 0.02,
          vertical: size.height * 0.01,
        ),
      ),
    );
  }
}
