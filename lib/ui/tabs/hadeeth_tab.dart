// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:islamy_c12/common/app_images.dart';
import 'package:islamy_c12/ui/screens/hadeeth_screen.dart';

class HadeethTab extends StatefulWidget {
  const HadeethTab({super.key});

  @override
  State<HadeethTab> createState() => _HadeethTabState();
}

class _HadeethTabState extends State<HadeethTab> {
  List<HadeethModel> hadeethModelList = [];
  @override
  Widget build(BuildContext context) {
    if (hadeethModelList.isEmpty) {
      loadAhadeeth();
    }
    return Column(
      children: [
        Image.asset(
          AppImages.hadithHeaderImage,
          height: MediaQuery.of(context).size.height * .25,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(HadeethDetailsScreen.routName,
                      arguments: hadeethModelList[index]);
                },
                child: Text(
                  hadeethModelList[index].name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            itemCount: hadeethModelList.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                height: 2,
              );
            },
          ),
        )
      ],
    );
  }

  loadAhadeeth() async {
    List<HadeethModel> _hadeethModelList = [];

    String data = await rootBundle.loadString('assets/hadeth/ahadeth.txt');
    List<String> hadeethList = data.trim().split('#');
    hadeethList.removeWhere(
      (element) => element.trim().isEmpty,
    );
    for (var i = 0; i < hadeethList.length; i++) {
      int index = hadeethList[i].trim().indexOf('\n');
      String name = hadeethList[i].trim().substring(0, index);
      String content = hadeethList[i].trim().substring(index + 1);
      print('name:$name');
      print('content:$content');
      _hadeethModelList.add(HadeethModel(name: name, content: content));
    }
    hadeethModelList = _hadeethModelList;
    setState(() {});
  }
}

class HadeethModel {
  String name;
  String content;
  HadeethModel({
    required this.name,
    required this.content,
  });
}
