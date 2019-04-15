import 'package:meta/meta.dart';

@immutable
abstract class ShowEvent {}

class SelectShowEvent extends ShowEvent {
  String selected;

  SelectShowEvent(this.selected);
}
