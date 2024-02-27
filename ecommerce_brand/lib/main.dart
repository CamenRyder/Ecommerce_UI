import 'package:ecommerce_brand/core/routes/pages.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/domain/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "/",
          getPages: AppPages.pages,
          title: 'Ping Meme',
          theme: ThemeData(
            pageTransitionsTheme: const PageTransitionsTheme(builders: {
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            }),
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
            useMaterial3: false,
          ),
        );
      },
    );
  }
}

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HeroExample(),
    );
  }
}

class HeroExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero Sample')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20.0),
          GestureDetector(
            onTap: () {
              _gotoDetailsPage(context);
            },
            child: Hero(
              tag: 'hero-rectangle',
              child: Assets.imagesMockImage07.image(),
            ),
          )
        ],
      ),
    );
  }

  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) => Scaffold(
          appBar: AppBar(
            title: const Text('Second Page'),
          ),
          body: Center(
            child: Hero(
                tag: 'hero-rectangle', child: Assets.imagesMockImage07.image()),
          ),
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  const BoxWidget({required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.blue,
    );
  }
}
