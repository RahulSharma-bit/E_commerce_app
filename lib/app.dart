import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:r_shop_app/utils/theme/theme.dart';

import 'features/authentication/screens/onboarding/onboarding_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: RAppTheme.lightTheme,
      darkTheme: RAppTheme.darkTheme,
      // home: Scaffold(appBar: AppBar(title: Text('Initial'))),
      home: OnboardingScreen(),
    );
  }
}
