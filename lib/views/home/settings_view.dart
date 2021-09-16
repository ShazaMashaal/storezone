import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezone/translations/locale_keys.g.dart';
import 'package:storezone/views/home/components/category_view_components/grey_back_arrow.dart';
import 'package:easy_localization/easy_localization.dart';
import 'components/settings_view_components/settings_item.dart';
import 'components/settings_view_components/settings_title.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingsTitle(),
            SettingsItem(
              title:LocaleKeys.settings_account.tr() ,
              icon: Icons.person,
            ),
            SettingsItem(
              title: LocaleKeys.settings_notifications.tr(),
              icon: Icons.notifications,
            ),
            SettingsItem(
              title:LocaleKeys.settings_language.tr(),
              icon: Icons.language,
            ),
            SettingsItem(
              title: LocaleKeys.settings_aboutUs.tr(),
              icon: Icons.info_rounded,
            ),
            SettingsItem(
              title: LocaleKeys.settings_contactUs.tr(),
              icon: Icons.quick_contacts_dialer_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
