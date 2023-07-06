import 'package:flutter/material.dart';
import 'package:todowithriverpod/common/widgets/appstyle.dart';
import 'package:todowithriverpod/common/widgets/reuseable_text.dart';

class CustomOtnBtn extends StatelessWidget {
  const CustomOtnBtn(
      {super.key,
      this.onTap,
      required this.height,
      required this.width,
      this.color2,
      required this.color, required this.text});

  final void Function()? onTap;
  final double height;
  final double width;
  final Color? color2;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color2,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          border: Border.all(width: 1, color: color),
        ),
        child: Center(
          child: ReuseableText(
            text: text,
            style: appstyle(18, color, FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
