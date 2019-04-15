import 'dart:async';
import 'package:bloc/bloc.dart';
import './list.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  @override
  ListState get initialState => InitialListState();

  @override
  Stream<ListState> mapEventToState(
    ListEvent event,
  ) async* {
    if (event is FetchListEvent) {
      // 模拟网络请求
      await Future.delayed(Duration(milliseconds: 2000));
      var list = [
        "1. Bloc artitechture",
        "2. Bloc artitechture",
        "3. Bloc artitechture",
        "4. Bloc artitechture",
        "5. Bloc artitechture",
        "6. Bloc artitechture",
        "7. Bloc artitechture",
        "8. Bloc artitechture",
        "9. Bloc artitechture",
        "10. Bloc artitechture"
      ];

      yield FetchListState(list);
    }
  }
}
