import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_c12/common/app_images.dart';
import 'package:islamy_c12/ui/tabs/quran_tab.dart';

class QuranScreen extends StatefulWidget {
  static const routName = 'QuranScreen';
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List<String> virses = [];
  @override
  Widget build(BuildContext context) {
    QuranModel quranModel =
        ModalRoute.of(context)!.settings.arguments as QuranModel;
    if (virses.isEmpty) tester(quranModel.index);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.bgImage), fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
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
                const Divider(),
                virses.isEmpty
                    ? Expanded(
                        child: Center(child: CircularProgressIndicator()))
                    : Expanded(
                        child: ListView.builder(
                        itemBuilder: (context, index) => Text(
                          virses[index],
                          style: Theme.of(context).textTheme.titleSmall,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                        ),
                        itemCount: virses.length,
                      ))
              ],
            ),
          ),
        ));
  }

  Future<void> loadSuraContent(int index) async {
    rootBundle.loadString('assets/quran/${index + 1}.txt').then(
      (value) {
        virses = value.split('\n');
        setState(() {});
      },
    );
    print('xxxx');
  }

  tester(int index) async {
    loadSuraContent(index);
    print('xxx2');
  }
}
