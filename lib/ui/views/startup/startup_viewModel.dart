import 'package:stacked/stacked.dart';

class StartupViewModel extends BaseViewModel {
  final String _title = "Startup View";
  String get title => '$_title $_counters';

  int _counters = 0;
  int get counters => _counters;

  void increment() {
    _counters++;
    notifyListeners();
  }
}
