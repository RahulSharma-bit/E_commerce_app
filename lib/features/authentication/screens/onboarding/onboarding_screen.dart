import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:r_shop_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:r_shop_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:r_shop_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:r_shop_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:r_shop_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:r_shop_app/utils/constants/image_strings.dart';
import 'package:r_shop_app/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //  Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                title: RAppText.onBoardingTitle1,
                image: RAppImages.onBoardingLottie1,
                subtitle: RAppText.onBoardingSubtitle1,
              ),
              OnBoardingPage(
                title: RAppText.onBoardingTitle2,
                image: RAppImages.onBoardingLottie2,
                subtitle: RAppText.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                title: RAppText.onBoardingTitle3,
                image: RAppImages.onBoardingLottie3,
                subtitle: RAppText.onBoardingSubtitle3,
              ),
            ],
          ),

          // Skip Button
          OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          DotNavigation(),

          // Circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
