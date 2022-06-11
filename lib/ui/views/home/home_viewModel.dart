import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String _title = "Home View";
  String get title => '$_title $_counters';

  int _counters = 0;
  int get counters => _counters;

  void increment() {
    _counters++;
    notifyListeners();
  }
}
