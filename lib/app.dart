import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_e_com/utils/theme/theme.dart';

import 'features/authentication/screens/login/login.dart';
import 'utils/constants/text_strings.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,

      home: const LoginScreen(),
    
    );
  }
}
