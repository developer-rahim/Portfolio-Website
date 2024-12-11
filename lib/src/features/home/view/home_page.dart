import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:portfolio_website/globals/app_assets.dart';
import 'package:portfolio_website/globals/app_buttons.dart';
import 'package:portfolio_website/globals/app_colors.dart';
import 'package:portfolio_website/globals/app_text_styles.dart';
import 'package:portfolio_website/globals/constants.dart';
import 'package:portfolio_website/src/features/home/controller/home_view_controller.dart';
import 'package:portfolio_website/src/utils/helper_class.dart';
part '../widgets/home_personal_info.dart';
part '../widgets/social_button.dart';
part '../widgets/profile_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          const _HomePersonalInfo(),
          Constants.sizedBox(height: 25.0),
          const ProfileAnimation()
        ],
      ),
      tablet: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: _HomePersonalInfo()),
          ProfileAnimation(),
        ],
      ),
      desktop: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: _HomePersonalInfo()),
          ProfileAnimation(),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
    );
  }
}