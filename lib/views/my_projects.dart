// ... (your existing imports)

// ignore_for_file: library_private_types_in_public_api

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Globals/app_assets.dart';
import 'package:my_portfolio/Globals/app_colors.dart';
import 'package:my_portfolio/Globals/app_material_button.dart';
import 'package:my_portfolio/Globals/app_text_style.dart';
import 'package:my_portfolio/Globals/constants.dart';
import 'package:my_portfolio/helper_class/helper_class.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  _MyProjectsState createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  int hoveredIndex = -1;

  List images = <String>[
    AppAssets.portfolio,
    AppAssets.weatherApp,
    AppAssets.expenceTrackerApp,
    AppAssets.todoListApp,
  ];

  List<String> projectTitle = [
    'PORTFOLIO WEBSITE',
    'WEATHER APPLICATION  ',
    'EXPENCE TRACKER APPLICATION ',
    'TODO LIST APPLICATION',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildMyProjectText(),
            Constants.sizedBox(hight: size.height * 0.02),
            buildMyProjectGridviewSection(size, crossAxisCount: 1),
            Constants.sizedBox(hight: size.height * 0.04),
            AppMateralButton.buildMaterialButton(
              onTap: () {},
              buttonText: 'See More',
            ),
            Constants.sizedBox(hight: size.height * 0.02),
          ],
        ),
      ),
      tablet: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Constants.sizedBox(hight: size.height * 0.02),
            buildMyProjectText(),
            Constants.sizedBox(hight: size.height * 0.02),
            buildMyProjectGridviewSection(size, crossAxisCount: 2),
            Constants.sizedBox(hight: size.height * 0.04),
            AppMateralButton.buildMaterialButton(
              onTap: () {},
              buttonText: 'See More',
            ),
            Constants.sizedBox(hight: size.height * 0.02),
          ],
        ),
      ),
      desktop: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Constants.sizedBox(hight: size.height * 0.04),
          buildMyProjectText(),
          Constants.sizedBox(hight: size.height * 0.02),
          buildMyProjectGridviewSection(size, crossAxisCount: 2),
          Constants.sizedBox(hight: size.height * 0.02),
          AppMateralButton.buildMaterialButton(
            onTap: () {},
            buttonText: 'See More',
          ),
          Constants.sizedBox(hight: size.height * 0.02),
        ],
      ),
      paddingWidth: size.width * 0.1,
      backgroungColor: AppColors.bgColor2,
    );
  }

  GridView buildMyProjectGridviewSection(Size size,
      {required int crossAxisCount}) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisExtent: 210,
        mainAxisSpacing: 30,
        crossAxisSpacing: 30,
      ),
      itemCount: images.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var image = images[index];
        bool isHovered = index == hoveredIndex;
        return InkWell(
          onTap: () {},
          onHover: (value) {
            setState(() {
              hoveredIndex = value ? index : -1;
            });
          },
          child: Stack(
            children: [
              SizedBox(
                height: size.height * 2,
                width: size.width * 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (isHovered)
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.hoverColor.withOpacity(0.6),
                          AppColors.hoverColor.withOpacity(0.9),
                          AppColors.hoverColor.withOpacity(0.6),
                          AppColors.hoverColor.withOpacity(0.9),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          projectTitle[index],
                          style: AppTextStyle.montserratTextStyle(
                              color: AppColors.bgColor),
                        ),
                        Constants.sizedBox(hight: size.height * 0.02),
                        Text(
                          'A ${projectTitle[index]} build using Flutter click here to see the source code',
                          style: AppTextStyle.signikaNegativeTextStyle(
                              color: AppColors.bgColor),
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.ios_share),
                        )
                      ],
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  FadeInUp buildMyProjectText() {
    return FadeInUp(
      duration: const Duration(milliseconds: 1400),
      child: RichText(
        text: TextSpan(
          text: 'Latest',
          style: AppTextStyle.rubicTextStyle(fontSize: 30),
          children: [
            TextSpan(
              text: ' Projects',
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
}
