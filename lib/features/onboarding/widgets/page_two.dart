import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todowithriverpod/common/widgets/custom_otn_btn.dart';

import '../../../common/utils/constans.dart';
import '../../../common/widgets/appstyle.dart';
import '../../../common/widgets/height_specer.dart';
import '../../../common/widgets/reuseable_text.dart';
import '../../auth/pages/login_page.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kHeight,
      width: AppConst.kWidth,
      color: AppConst.kBkDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Image.asset("assets/images/todo.png"),
          ),
          const HeightSpacer(height: 50),
          CustomOtnBtn(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              height: AppConst.kHeight * 0.06,
              width: AppConst.kWidth * 0.9,
              color: AppConst.kLight,
              text: "Login with a phone number"),

        ],
      ),
    );
  }
}
