// ignore_for_file: unused_field, sort_child_properties_last,

import 'package:flutter/material.dart';
import 'package:my_portfolio/Globals/app_colors.dart';
import 'package:my_portfolio/Globals/app_text_style.dart';
import 'package:my_portfolio/Globals/constants.dart';
import 'package:my_portfolio/views/about_me.dart';
import 'package:my_portfolio/views/contact_us.dart';
import 'package:my_portfolio/views/home_page.dart';
import 'package:my_portfolio/views/my_projects.dart';
import 'package:my_portfolio/views/my_services.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainDashBord extends StatefulWidget {
  const MainDashBord({super.key});

  @override
  State<MainDashBord> createState() => _MainDashBordState();
}

class _MainDashBordState extends State<MainDashBord> {
  final menuItems = <String>['Home', 'About', 'Service', 'Project', 'Contact'];
  final ItemScrollController _itemScrollController = ItemScrollController();
  final onMenuHover = Matrix4.identity()..scale(1.0);
  var menuIndex = 0;

  final screenList = <Widget>[
    const HomePage(),
    const AboutMe(),
    const MyServices(),
    const MyProjects(),
    ContactUs(),
  ];

  Future<void> scrollTo({required int index}) async {
    _itemScrollController
        .scrollTo(
            index: index,
            duration: const Duration(seconds: 2),
            curve: Curves.fastLinearToSlowEaseIn)
        .whenComplete(
      () {
        setState(() {
          menuIndex = index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: size.height * 0.1,
        titleSpacing: 50,
        elevation: 0,
        title: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 768) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Portfolio',
                    style: AppTextStyle.rubicTextStyle(),
                  ),
                  const Spacer(),
                  Constants.sizedBox(width: size.width * 0.01),
                  PopupMenuButton(
                    icon: Icon(
                      Icons.menu_outlined,
                      color: AppColors.white,
                    ),
                    color: AppColors.bgColor,
                    position: PopupMenuPosition.under,
                    constraints:
                        BoxConstraints.tightFor(width: size.width * 0.4),
                    itemBuilder: (BuildContext context) => menuItems
                        .asMap()
                        .entries
                        .map(
                          (e) => PopupMenuItem(
                            child: Text(e.value),
                            textStyle: AppTextStyle.comfortaaTextStyle(
                              color: AppColors.white,
                            ),
                            onTap: () {
                              scrollTo(index: e.key);
                            },
                          ),
                        )
                        .toList(),
                  ),
                ],
              );
            } else {
              return Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Portfolio',
                    style: AppTextStyle.rubicTextStyle(),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 30,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            scrollTo(index: index);
                          },
                          borderRadius: BorderRadius.circular(100),
                          onHover: (value) {
                            setState(
                              () {
                                if (value) {
                                  menuIndex = index;
                                } else {
                                  menuIndex = 0;
                                }
                              },
                            );
                          },
                          child: buildAnimatedContainer(
                            index,
                            menuIndex == index ? true : false,
                          ),
                        );
                      },
                      itemCount: menuItems.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return Constants.sizedBox(width: size.width * 0.02);
                      },
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
      body: ScrollablePositionedList.builder(
        itemScrollController: _itemScrollController,
        itemCount: screenList.length,
        itemBuilder: (context, index) {
          return screenList[index];
        },
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      height: hover ? 80 : 75,
      duration: const Duration(milliseconds: 200),
      transform: hover ? onMenuHover : null,
      child: Text(
        menuItems[index],
        style: AppTextStyle.rubicTextStyle(
            color: hover ? AppColors.hoverColor : AppColors.white),
      ),
    );
  }
}
