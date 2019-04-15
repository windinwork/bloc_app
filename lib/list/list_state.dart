import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'dart:collection';

@immutable
abstract class ListState extends Equatable {
  ListState([List props = const []]) : super(props);
}

class InitialListState extends ListState {}

class FetchListState extends ListState {

  List<String> _list = [];

  UnmodifiableListView<String> get list => UnmodifiableListView(_list);

  FetchListState(this._list);
}