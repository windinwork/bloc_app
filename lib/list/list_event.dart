import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ListEvent extends Equatable {
  ListEvent([List props = const []]) : super(props);
}

class FetchListEvent extends ListEvent {

}