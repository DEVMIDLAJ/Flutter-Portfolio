import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Globals/app_assets.dart';
import 'package:my_portfolio/Globals/app_colors.dart';
import 'package:my_portfolio/Globals/app_material_button.dart';
import 'package:my_portfolio/Globals/app_text_style.dart';
import 'package:my_portfolio/Globals/constants.dart';
import 'package:my_portfolio/helper_class/helper_class.dart';

class MyServices extends StatefulWidget {
  const MyServices({super.key});

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false;
  bool isGraphic = false;
  bool isDataAnalyst = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: HelperClass(
        mobile: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Constants.sizedBox(hight: size.height * 0.02),
              buildOurServiceText(),
              Constants.sizedBox(hight: size.height * 0.04),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainerWithHover(
                  url: AppAssets.androidDevelopment,
                  title: 'Android Development',
                  hover: isApp,
                  subTitle:
                      'Transforming ideas into powerful Android experiences is my forte. As a Flutter Developer, I specialize in crafting seamless and feature-rich Android applications. From sleek UI design to robust backend integration, I leverage the power of Flutter and Dart to deliver Android apps that stand out in the crowded digital landscape. Let\'s collaborate to bring your Android app vision to life with creativity and precision.',
                ),
              ),
              Constants.sizedBox(hight: size.height * 0.03),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainerWithHover(
                  url: AppAssets.iosDevelopment,
                  title: 'Ios Development',
                  hover: isGraphic,
                  subTitle:
                      'Elevate your iOS app game with my expertise in Flutter and Dart. As a seasoned Flutter Developer, I specialize in creating stunning and high-performance iOS applications. Harnessing the capabilities of Flutter, I ensure a unified codebase that guarantees a consistent and delightful user experience across iOS devices. Let\'s embark on the journey of crafting an exceptional iOS app that captivates your audience.',
                ),
              ),
              Constants.sizedBox(hight: size.height * 0.03),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isDataAnalyst = value;
                  });
                },
                child: buildAnimatedContainerWithHover(
                  url: AppAssets.webDevelopment,
                  title: 'Web Development',
                  hover: isDataAnalyst,
                  subTitle:
                      'Extend your digital footprint to the web with my proficiency in Flutter. As a Flutter Developer, I bring the magic of Flutter to web application development, delivering responsive and engaging user interfaces. With a focus on seamless cross-platform experiences, I utilize Flutter\'s capabilities to create web applications that mirror the quality and functionality of native apps. Explore the possibilities of a dynamic and interactive web presence with my expertise in Flutter.',
                ),
              ),
              Constants.sizedBox(hight: size.height * 0.03),
            ],
          ),
        ),
        tablet: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildOurServiceText(),
              Constants.sizedBox(hight: size.height * 0.02),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          isApp = value;
                        });
                      },
                      child: buildAnimatedContainerWithHover(
                        url: AppAssets.androidDevelopment,
                        title: 'Android Development',
                        hover: isApp,
                        subTitle:
                            'Transforming ideas into powerful Android experiences is my forte. As a Flutter Developer, I specialize in crafting seamless and feature-rich Android applications. From sleek UI design to robust backend integration, I leverage the power of Flutter and Dart to deliver Android apps that stand out in the crowded digital landscape. Let\'s collaborate to bring your Android app vision to life with creativity and precision.',
                      ),
                    ),
                    Constants.sizedBox(width: size.width * 0.02),
                    InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          isGraphic = value;
                        });
                      },
                      child: buildAnimatedContainerWithHover(
                        url: AppAssets.iosDevelopment,
                        title: 'Ios Development',
                        hover: isGraphic,
                        subTitle:
                            'Elevate your iOS app game with my expertise in Flutter and Dart. As a seasoned Flutter Developer, I specialize in creating stunning and high-performance iOS applications. Harnessing the capabilities of Flutter, I ensure a unified codebase that guarantees a consistent and delightful user experience across iOS devices. Let\'s embark on the journey of crafting an exceptional iOS app that captivates your audience.',
                      ),
                    ),
                    Constants.sizedBox(hight: size.height * 0.02),
                  ],
                ),
              ),
              Constants.sizedBox(hight: size.height * 0.04),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isDataAnalyst = value;
                  });
                },
                child: buildAnimatedContainerWithHover(
                  url: AppAssets.webDevelopment,
                  title: 'Web Development',
                  hover: isDataAnalyst,
                  subTitle:
                      'Extend your digital footprint to the web with my proficiency in Flutter. As a Flutter Developer, I bring the magic of Flutter to web application development, delivering responsive and engaging user interfaces. With a focus on seamless cross-platform experiences, I utilize Flutter\'s capabilities to create web applications that mirror the quality and functionality of native apps. Explore the possibilities of a dynamic and interactive web presence with my expertise in Flutter.',
                  width: 820,
                  hoverWidth: 830,
                ),
              ),
              Constants.sizedBox(hight: size.height * 0.04),
            ],
          ),
        ),
        desktop: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Constants.sizedBox(hight: size.height * 0.04),
            buildOurServiceText(),
            Constants.sizedBox(hight: size.height * 0.04),
            ListView(
              shrinkWrap: true,
              children: [
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          onHover: (value) {
                            setState(() {
                              isApp = value;
                            });
                          },
                          child: buildAnimatedContainerWithHover(
                            url: AppAssets.androidDevelopment,
                            title: 'Android Development',
                            hover: isApp,
                            subTitle:
                                'Transforming ideas into powerful Android experiences is my forte. As a Flutter Developer, I specialize in crafting seamless and feature-rich Android applications. From sleek UI design to robust backend integration, I leverage the power of Flutter and Dart to deliver Android apps that stand out in the crowded digital landscape. Let\'s collaborate to bring your Android app vision to life with creativity and precision.',
                          ),
                        ),
                      ),
                      Constants.sizedBox(width: size.width * 0.02),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          onHover: (value) {
                            setState(() {
                              isGraphic = value;
                            });
                          },
                          child: buildAnimatedContainerWithHover(
                            url: AppAssets.iosDevelopment,
                            title: 'Ios Development',
                            hover: isGraphic,
                            subTitle:
                                'Elevate your iOS app game with my expertise in Flutter and Dart. As a seasoned Flutter Developer, I specialize in creating stunning and high-performance iOS applications. Harnessing the capabilities of Flutter, I ensure a unified codebase that guarantees a consistent and delightful user experience across iOS devices. Let\'s embark on the journey of crafting an exceptional iOS app that captivates your audience.',
                          ),
                        ),
                      ),
                      Constants.sizedBox(width: size.width * 0.02),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          onHover: (value) {
                            setState(() {
                              isDataAnalyst = value;
                            });
                          },
                          child: buildAnimatedContainerWithHover(
                            url: AppAssets.webDevelopment,
                            title: 'Web Development',
                            hover: isDataAnalyst,
                            subTitle:
                                'Extend your digital footprint to the web with my proficiency in Flutter. As a Flutter Developer, I bring the magic of Flutter to web application development, delivering responsive and engaging user interfaces. With a focus on seamless cross-platform experiences, I utilize Flutter\'s capabilities to create web applications that mirror the quality and functionality of native apps. Explore the possibilities of a dynamic and interactive web presence with my expertise in Flutter.',
                          ),
                        ),
                      ),
                      Constants.sizedBox(width: size.width * 0.02),
                    ],
                  ),
                ),
              ],
            ),
            Constants.sizedBox(width: size.width * 0.04),
          ],
        ),
        paddingWidth: size.width * 0.04,
        backgroungColor: AppColors.bgColor2,
      ),
    );
  }
}

FadeInUp buildOurServiceText() {
  return FadeInUp(
    duration: const Duration(milliseconds: 1400),
    child: RichText(
      text: TextSpan(
        text: 'Our',
        style: AppTextStyle.rubicTextStyle(fontSize: 30),
        children: [
          TextSpan(
            text: ' Services',
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

Widget buildAnimatedContainerWithHover({
  required String url,
  required String title,
  required bool hover,
  required String subTitle,
  double? width = 400,
  double? hoverWidth = 410,
}) {
  return MouseRegion(
    child: GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        width: hover ? hoverWidth : width,
        height: 480,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              width: 5,
              color: hover ? AppColors.hoverColor : AppColors.bgColor),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                url,
                height: 50,
                width: 50,
                color: hover ? AppColors.hoverColor : AppColors.themeColor,
              ),
              Text(
                title,
                style: AppTextStyle.montserratTextStyle(
                  color: AppColors.white,
                ),
              ),
              Constants.sizedBox(hight: 20),
              Text(
                subTitle,
                style: AppTextStyle.rubicTextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                ),
              ),
              Constants.sizedBox(hight: 20),
              FadeInDown(
                duration: const Duration(milliseconds: 1800),
                child: AppMateralButton.buildMaterialButton(
                  onTap: () {},
                  buttonText: 'Read More',
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
