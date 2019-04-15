import 'dart:async';

import 'package:bloc/bloc.dart';

import './show.dart';

class ShowBloc extends Bloc<ShowEvent, ShowState> {
  @override
  ShowState get initialState => InitialShowState();

  @override
  Stream<ShowState> mapEventToState(
    ShowEvent event,
  ) async* {
    if (event is SelectShowEvent) {
      yield SelectedShowState(event.selected);
    }
  }
}
