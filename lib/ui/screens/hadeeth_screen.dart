import 'package:flutter/material.dart';
import 'package:islamy_c12/common/app_images.dart';
import 'package:islamy_c12/providers/theme_provider.dart';
import 'package:islamy_c12/ui/tabs/hadeeth_tab.dart';
import 'package:provider/provider.dart';

class HadeethDetailsScreen extends StatelessWidget {
  static const routName = 'hadeethDetailScreen';

  const HadeethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadeethModel hadeethModel =
        ModalRoute.of(context)!.settings.arguments as HadeethModel;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(!Provider.of<ThemeProvider>(context).isDark
                    ? AppImages.bgImage
                    : AppImages.darkBgImage),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back,
                    color: Theme.of(context).colorScheme.secondary),
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
                  hadeethModel.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Divider(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      hadeethModel.content,
                      style: Theme.of(context).textTheme.titleSmall,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
