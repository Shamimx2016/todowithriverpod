import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todowithriverpod/common/utils/constans.dart';
import 'package:todowithriverpod/common/widgets/appstyle.dart';
import 'package:todowithriverpod/common/widgets/custom_otn_btn.dart';
import 'package:todowithriverpod/common/widgets/height_specer.dart';
import 'package:todowithriverpod/common/widgets/reuseable_text.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.w,
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Image.asset(
                  "assets/images/todo.png",
                  width: 300,
                ),
              ),
              const HeightSpacer(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 16.w),
                child: ReuseableText(
                  text: "Please enter your phone number",
                  style: appstyle(17, AppConst.kLight, FontWeight.w500),
                ),
              ),
              const HeightSpacer(height: 20),

              ///  Center(
              ///  child: CustomTextField(),
              ///    ),
              const HeightSpacer(height: 20),
              CustomOtnBtn(
                  height: AppConst.kHeight * 0.07,
                  width: AppConst.kWidth * 0.9,
                  color: AppConst.kBkDark,
                  color2: AppConst.kLight,
                  text: "Sent Code")
            ],
          ),
        ),
      ),
    );
  }
}
