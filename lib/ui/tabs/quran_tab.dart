// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:islamy_c12/common/app_images.dart';
import 'package:islamy_c12/ui/screens/quran_screen.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  List<int> virsesCount = [];

  @override
  Widget build(BuildContext context) {
    if (virsesCount.isEmpty) loadSuras();
    return Stack(children: [
      Column(
        children: [
          Image.asset(
            AppImages.quranHeaderIcn,
            height: MediaQuery.of(context).size.height * .25,
          ),
          Divider(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'sura Name',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Text(
                  'virses count',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Divider(
            height: 5,
          ),
          virsesCount.isEmpty
              ? Expanded(
                  child: Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ))
              : Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(QuranScreen.routName,
                              arguments: QuranModel(
                                  name: suraNames[index], index: index));
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                suraNames[index],
                                style: Theme.of(context).textTheme.titleMedium,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                virsesCount[index].toString(),
                                style: Theme.of(context).textTheme.titleMedium,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    itemCount: suraNames.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                        height: 2,
                      );
                    },
                  ),
                )
        ],
      ),
      if (virsesCount.isNotEmpty)
        Align(
            alignment: Alignment.center,
            child: VerticalDivider(
              indent: MediaQuery.of(context).size.height * .25 + 2.5,
            ))
    ]);
  }

  loadSuras() async {
    List<int> _virsesCount = [];

    for (var i = 0; i < suraNames.length; i++) {
      String data = await rootBundle.loadString('assets/quran/${i + 1}.txt');
      List<String> content = data.trim().split('\n');
      content.removeWhere(
        (element) => element.trim().isEmpty,
      );
      _virsesCount.add(content.length);
    }
    virsesCount = _virsesCount;
    setState(() {});
  }
}

class QuranModel {
  String name;
  int index;
  QuranModel({
    required this.name,
    required this.index,
  });
}
