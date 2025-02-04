import 'package:flutter/material.dart';

import 'constants/app_routes.dart';
import 'utils/dimens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Dimenstions.instance.setDimens(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: AppRoutes.instance.routes,
      initialRoute: AppRoutes.splashScreen,
    );
  }
}
