import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class KuMaterialLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const KuMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      KuWidgetLocalizations(),
    );
  }

  @override
  bool shouldReload(KuMaterialLocalizationsDelegate old) => false;
}

class KuWidgetLocalizations extends WidgetsLocalizations {
  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      KuMaterialLocalizationsDelegate();

  @override
  TextDirection get textDirection => TextDirection.rtl;
}
