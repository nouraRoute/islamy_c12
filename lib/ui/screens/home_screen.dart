import 'package:flutter/material.dart';
import 'package:islamy_c12/common/app_images.dart';
import 'package:islamy_c12/ui/tabs/hadeeth_tab.dart';
import 'package:islamy_c12/ui/tabs/quran_tab.dart';
import 'package:islamy_c12/ui/tabs/radio_tab.dart';
import 'package:islamy_c12/ui/tabs/sebha_tab.dart';
import 'package:islamy_c12/ui/tabs/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'homeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabsList = [
    QuranTab(),
    const HadeethTab(),
    const SebhaTab(),
    const RadioTab(),
    const SettingsTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? AppImages.bgImage
                        : AppImages.darkBgImage),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islamy),
          ),
          body: tabsList[index],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;

                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AppImages.quranIcon)),
                    label: AppLocalizations.of(context)!.quraan),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AppImages.hadeethIcon)),
                    label: 'hadeeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AppImages.sebhaIcon)),
                    label: 'sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AppImages.radioIcon)),
                    label: 'radio'),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'settings'),
              ]),
        ));
  }
}
