import 'package:flutter/material.dart';

class HelperClass extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final double paddingWidth;
  final Color backgroungColor;

  const HelperClass({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.paddingWidth,
    required this.backgroungColor,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 768) {
          return Container(
            width: size.width,
            color: backgroungColor,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.07,
              horizontal: paddingWidth,
            ),
            child: mobile,
          );
        } else if (constraints.maxWidth < 1200) {
          return Container(
            width: size.width,
            color: backgroungColor,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.07,
              horizontal: paddingWidth,
            ),
            child: tablet,
          );
        } else {
          return Container(
            width: size.width,
            color: backgroungColor,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(
              // vertical: size.height * 0.01,
              horizontal: paddingWidth,
            ),
            child: desktop,
          );
        }
      },
    );
  }
}
