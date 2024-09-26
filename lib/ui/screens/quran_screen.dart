import 'package:flutter/material.dart';
import 'package:islamy_c12/common/app_images.dart';
import 'package:islamy_c12/ui/tabs/quran_tab.dart';

class QuranScreen extends StatelessWidget {
  static const routName = 'QuranScreen';
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuranModel quranModel =
        ModalRoute.of(context)!.settings.arguments as QuranModel;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.bgImage), fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {}),
            title: const Text('islamy'),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * .02,
                horizontal: MediaQuery.of(context).size.width * .09),
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .06,
              vertical: MediaQuery.of(context).size.height * .05,
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary.withOpacity(.85),
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  quranModel.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Divider()
              ],
            ),
          ),
        ));
  }
}
