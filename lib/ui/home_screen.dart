import 'package:flutter/material.dart';
import 'package:islamy_c12/common/app_images.dart';

class HomeScreen extends StatelessWidget {
  static const String routName = 'homeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.bgImage), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar:
              BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImages.qauranIcon)),
                label: 'quraan'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImages.haqeethIcon)),
                label: 'hadeeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImages.sebhaIcon)),
                label: 'sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImages.radioIcon)),
                label: 'sebha'),
          ]),
        ));
  }
}
