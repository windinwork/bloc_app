import 'package:meta/meta.dart';

@immutable
abstract class ShowState {}

class InitialShowState extends ShowState {}

class SelectedShowState extends ShowState {
  String _selectedString = "";

  String get selected => _selectedString;

  SelectedShowState(this._selectedString);
}
