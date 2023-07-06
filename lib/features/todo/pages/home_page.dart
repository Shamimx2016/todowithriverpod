import 'package:flutter/material.dart';
import 'package:todowithriverpod/common/utils/constans.dart';
import 'package:todowithriverpod/common/widgets/appstyle.dart';
import 'package:todowithriverpod/common/widgets/height_specer.dart';
import 'package:todowithriverpod/common/widgets/reuseable_text.dart';
import 'package:todowithriverpod/common/widgets/width_spacer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ReuseableText(
              text: "Todo",
              style: appstyle(26, AppConst.kGreen, FontWeight.bold),
            ),
            const WidthSpacer(width: 20),
            ReuseableText(
              text: "Todo",
              style: appstyle(26, AppConst.kGreen, FontWeight.bold),
            ),
            const WidthSpacer(width: 20),
            ReuseableText(
              text: "Todo",
              style: appstyle(26, AppConst.kGreen, FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
