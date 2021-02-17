import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _mode;
  ThemeProvider(this._mode);

  ThemeMode get theme => _mode;
}
