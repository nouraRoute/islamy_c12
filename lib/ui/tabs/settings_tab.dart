import 'package:flutter/material.dart';
import 'package:islamy_c12/common/app_colors.dart';
import 'package:islamy_c12/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SwitchListTile.adaptive(
            title: Text(
              'Dark theme',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 18),
            ),
            activeColor: AppColors.goldColor,
            inactiveTrackColor: Colors.grey,
            thumbColor:
                WidgetStatePropertyAll(Theme.of(context).colorScheme.surface),
            value: provider.isDark,
            onChanged: (value) {
              provider
                  .changeThemeMode(value ? ThemeMode.dark : ThemeMode.light);
            },
          ),
          ListTile(
            title: Text(
              'language',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 18),
            ),
            trailing: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: DropdownButton<String>(
                dropdownColor: AppColors.goldColor.withOpacity(.5),
                underline: Container(),
                value: provider.localeCode,
                borderRadius: BorderRadius.circular(20),
                items: [
                  DropdownMenuItem(
                    value: 'en',
                    child: Text(
                      'English',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: 15),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'ar',
                    child: Text(
                      'عربي',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: 15),
                    ),
                  )
                ],
                onChanged: (value) {
                  print('value-->$value');
                  if (value != null) {
                    provider.changeAppLocal(value);
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
