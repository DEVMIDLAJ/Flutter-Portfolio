// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:my_portfolio/Globals/app_assets.dart';
// import 'package:my_portfolio/Globals/app_colors.dart';
// import 'package:my_portfolio/Globals/app_material_button.dart';
// import 'package:my_portfolio/Globals/app_text_style.dart';
// import 'package:my_portfolio/Globals/constants.dart';

// class MyServices extends StatefulWidget {
//   const MyServices({super.key});

//   @override
//   State<MyServices> createState() => _MyServicesState();
// }

// class _MyServicesState extends State<MyServices> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: AppColors.bgColor2,
//       body: SizedBox(
//         height: size.height,
//         width: size.width,
//         child: 
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Constants.sizedBox(hight: size.height * 0.04),
//             FadeInUp(
//               duration: const Duration(milliseconds: 1400),
//               child: RichText(
//                 text: TextSpan(
//                   text: 'Our',
//                   style: AppTextStyle.rubicTextStyle(fontSize: 30),
//                   children: [
//                     TextSpan(
//                       text: ' Services',
//                       style: AppTextStyle.rubicTextStyle(
//                         fontSize: 30,
//                         color: AppColors.themeColor,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Constants.sizedBox(hight: size.height * 0.04),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 buildAnimatedContainerWithHover(
//                   url: AppAssets.androidDevelopment,
//                   title: 'Android Development',
//                   subTitle:
//                       'Transforming ideas into powerful Android experiences is my forte. As a Flutter Developer, I specialize in crafting seamless and feature-rich Android applications. From sleek UI design to robust backend integration, I leverage the power of Flutter and Dart to deliver Android apps that stand out in the crowded digital landscape. Let\'s collaborate to bring your Android app vision to life with creativity and precision.',
//                 ),
//                 buildAnimatedContainerWithHover(
//                   url: AppAssets.iosDevelopment,
//                   title: 'iOS Development',
//                   subTitle:
//                       'Elevate your iOS app game with my expertise in Flutter and Dart. As a seasoned Flutter Developer, I specialize in creating stunning and high-performance iOS applications. Harnessing the capabilities of Flutter, I ensure a unified codebase that guarantees a consistent and delightful user experience across iOS devices. Let\'s embark on the journey of crafting an exceptional iOS app that captivates your audience.',
//                 ),
//                 buildAnimatedContainerWithHover(
//                   url: AppAssets.webDevelopment,
//                   title: 'Web Development',
//                   subTitle:
//                       'Extend your digital footprint to the web with my proficiency in Flutter. As a Flutter Developer, I bring the magic of Flutter to web application development, delivering responsive and engaging user interfaces. With a focus on seamless cross-platform experiences, I utilize Flutter\'s capabilities to create web applications that mirror the quality and functionality of native apps. Explore the possibilities of a dynamic and interactive web presence with my expertise in Flutter.',
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildAnimatedContainerWithHover({
//     required String url,
//     required String title,
//     required String subTitle,
//   }) {
//     return buildAnimatedContainerWithHover(
//         url: url, title: title, subTitle: subTitle);
//   }
// }

// Widget buildAnimatedContainerWithHover({
//   required String url,
//   required String title,
//   required String subTitle,
// }) {
//   return MouseRegion(
//     child: GestureDetector(
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 600),
//         width: 400,
//         height: 450,
//         alignment: Alignment.center,
//         padding: const EdgeInsets.symmetric(
//           horizontal: 18,
//           vertical: 24,
//         ),
//         decoration: BoxDecoration(
//           color: AppColors.bgColor,
//           borderRadius: BorderRadius.circular(30),
//           boxShadow: const [
//             BoxShadow(
//               color: Colors.black54,
//               spreadRadius: 5.0,
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             Image.asset(
//               url,
//               height: 50,
//               width: 50,
//               color: AppColors.themeColor,
//             ),
//             Text(
//               title,
//               style: AppTextStyle.montserratTextStyle(
//                 color: Colors.white,
//               ),
//             ),
//             Constants.sizedBox(hight: 20),
//             Text(
//               subTitle,
//               style: AppTextStyle.rubicTextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//               ),
//             ),
//             Constants.sizedBox(hight: 20),
//             FadeInDown(
//               duration: const Duration(milliseconds: 1800),
//               child: AppMateralButton.buildMaterialButton(
//                 onTap: () {},
//                 buttonText: 'Read More',
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
