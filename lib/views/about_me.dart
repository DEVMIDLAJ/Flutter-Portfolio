import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Globals/app_colors.dart';
import 'package:my_portfolio/Globals/app_material_button.dart';
import 'package:my_portfolio/Globals/app_text_style.dart';
import 'package:my_portfolio/Globals/constants.dart';
import 'package:my_portfolio/helper_class/helper_class.dart';
import 'package:my_portfolio/widgets/profile_animation.dart';

class AboutMe extends StatelessWidget {
   const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            buildAboutContent(size),
           const Profileanimation(),
          ],
        ),
      ),
      tablet: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: Profileanimation(),
            ),
            Expanded(child: buildAboutContent(size),),
            Constants.sizedBox(width: size.width * 0.03),
          ],
        ),
      ),
      desktop: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: Profileanimation(),
            ),
            Expanded(child: buildAboutContent(size)),
            Constants.sizedBox(width: size.width * 0.03),
          ],
        ),
      ),
      paddingWidth: size.width * 0.1,
      backgroungColor: AppColors.bgColor2,
    );
  }

  Widget buildAboutContent(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeInUp(
          duration: const Duration(milliseconds: 1400),
          child: RichText(
            text: TextSpan(
              text: 'About',
              style: AppTextStyle.rubicTextStyle(fontSize: 30),
              children: [
                TextSpan(
                  text: ' Me',
                  style: AppTextStyle.rubicTextStyle(
                    fontSize: 30,
                    color: AppColors.themeColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Constants.sizedBox(hight: size.height * 0.02),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            'Flutter Developer',
            style: AppTextStyle.montserratTextStyle(color: AppColors.white),
          ),
        ),
        Constants.sizedBox(hight: size.height * 0.02),
        FadeInRight(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            'Embarking on the relentless pursuit of innovation, I am Midlaj , a seasoned Flutter Developer with a nuanced understanding of crafting transformative cross-platform mobile applications. My professional journey unfolds at Edapt, where I am orchestrating the development of cutting-edge mobile solutions. In this dynamic role, I have engineered a weather app that seamlessly integrates external APIs for real-time data and an intuitive expense tracker fortified with Firebase authentication and Provider for robust state management. My tenure at Avodha was marked by the mastery of Dart programming, responsive UI design, and the orchestration of a sophisticated personal money management application. My educational foundation in Automobile/Automotive Mechanics from the IT@School Project, Government of Kerala, instilled in me a meticulous problem-solving approach. A certified Flutter virtuoso by Avodha, I consistently stay at the forefront of industry trends, ensuring that my contributions are not just technically sound but also forward-thinking. Let\'s connect and delve into the realm of possibilities where we can coalesce creativity and technical prowess to drive unparalleled innovation in mobile app development.',
            style: AppTextStyle.signikaNegativeTextStyle(color: AppColors.white),
          ),
        ),
        Constants.sizedBox(hight: size.height * 0.05),
        FadeInDown(
          duration: const Duration(milliseconds: 1800),
          child: AppMateralButton.buildMaterialButton(
              onTap: () {}, buttonText: 'Read More'),
        ),
      ],
    );
  }
}
