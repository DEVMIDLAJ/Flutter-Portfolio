// ignore_for_file: prefer_typing_uninitialized_variables, deprecated_member_use, use_build_context_synchronously, unused_element, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:my_portfolio/Globals/constants.dart';
import 'package:my_portfolio/Globals/app_assets.dart';
import 'package:my_portfolio/Globals/app_colors.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_portfolio/Globals/app_text_style.dart';
import 'package:my_portfolio/helper_class/helper_class.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_portfolio/widgets/profile_animation.dart';
import 'package:my_portfolio/Globals/app_material_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final socialMediaButtons = <String>[
    AppAssets.gitub,
    AppAssets.linkedIn,
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.instagram
  ];

  final socialMediaLinks = <String>[
    'https://github.com/DEVMIDLAJ',
    'https://www.linkedin.com/in/midlaj-bin-muhammadmidlaj-bin-muhammad/',
    'https://www.facebook.com/your_username/',
    'https://twitter.com/your_username/',
    'https://www.instagram.com/your_username/',
  ];

  String? hoveredButton;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: SingleChildScrollView(
        child: Column(
          children: [
            buildHomePersonalInfo(size: size),
            const Profileanimation(),
          ],
        ),
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: buildHomePersonalInfo(size: size)),
          const Expanded(child: Profileanimation()),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size: size)),
          const Expanded(child: Profileanimation()),
        ],
      ),
      paddingWidth: size.width * 0.1,
      backgroungColor: AppColors.bgColor,
    );
  }

  Column buildHomePersonalInfo({Size? size}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            'Hello, It\'s Me',
            style: AppTextStyle.montserratTextStyle(
              color: AppColors.white,
            ),
          ),
        ),
        Constants.sizedBox(hight: size!.height * 0.02),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'MIDLAJ ',
            style: AppTextStyle.rubikMonoOneTextStyle(),
          ),
        ),
        Constants.sizedBox(hight: size.height * 0.02),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'I\'m a ',
                style: AppTextStyle.montserratTextStyle(
                  color: AppColors.white,
                ),
              ),
              Expanded(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'Flutter Developer',
                      textStyle: AppTextStyle.montserratTextStyle(
                        color: AppColors.themeColor,
                      ),
                    ),
                  ],
                  totalRepeatCount: 4,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ),
            ],
          ),
        ),
        Constants.sizedBox(hight: size.height * 0.02),
        FadeInDown(
          duration: const Duration(milliseconds: 1800),
          child: Text(
            'I\'m a passionate Software developer specializing in building and designing exceptional digital experience. Currently, I\'m focused on building accessible,  humencentered prodect about mobile application',
            style: AppTextStyle.signikaNegativeTextStyle(
              color: AppColors.white,
            ),
          ),
        ),
        Constants.sizedBox(hight: size.height * 0.02),
        FadeInUp(
          child: Row(
            children: [
              socialMediaButton(imageUrl: AppAssets.gitub, link: socialMediaLinks[0]),
              Constants.sizedBox(width: size.width * 0.01),
              socialMediaButton(imageUrl: AppAssets.linkedIn, link: socialMediaLinks[1]),
              Constants.sizedBox(width: size.width * 0.01),
              socialMediaButton(imageUrl: AppAssets.twitter, link: socialMediaLinks[3]),
              Constants.sizedBox(width: size.width * 0.01),
              socialMediaButton(imageUrl: AppAssets.facebook, link: socialMediaLinks[2]),
              Constants.sizedBox(width: size.width * 0.01),
              socialMediaButton(imageUrl: AppAssets.instagram, link: socialMediaLinks[4]),
            ],
          ),
        ),
        Constants.sizedBox(hight: size.height * 0.02),
        FadeInUp(
          duration: const Duration(milliseconds: 2000),
          child: AppMateralButton.buildMaterialButton(
            onTap: () {},
            buttonText: 'Download CV',
          ),
        ),
        Constants.sizedBox(hight: size.height * 0.02),
      ],
    );
  }

  Container socialMediaButton({required String imageUrl, required String link}) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: hoveredButton == imageUrl
              ? AppColors.hoverColor
              : AppColors.bgColor2,
          width: 4.0,
        ),
      ),
      child: InkWell(
        onHover: (value) {
          setState(() {
            hoveredButton = value ? imageUrl : null;
          });
        },
        radius: 30,
        splashColor: AppColors.bgColor2,
        hoverColor: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(500),
        onTap: () {
          _launchURL(link);
        },
        child: CircleAvatar(
          maxRadius: 20,
          backgroundColor: AppColors.bgColor,
          child: Image(
            image: AssetImage(imageUrl),
            height: 20,
            width: 20,
            color: hoveredButton == imageUrl
                ? AppColors.hoverColor
                : AppColors.bgColor2,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  // Function to open a URL
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  
  // Function to download the PDF
  Future<void> _downloadPDF() async {
    final pdfUrl = 'https://example.com/your-cv.pdf';

    // Check if the URL can be launched
    if (await canLaunch(pdfUrl)) {
      // Launch the URL (this will open the browser or a PDF viewer if available)
      await launch(pdfUrl);
    } else {
      // Handle the case where the URL can't be launched
      // (e.g., the URL is not valid or the user doesn't have a PDF viewer installed)
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Could not launch the PDF download.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}