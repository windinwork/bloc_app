import 'package:flutter/material.dart';
import 'show/show_page.dart';
import 'show/show.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  ShowBloc _showBloc;

  @override
  void initState() {
    _showBloc = ShowBloc();
    super.initState();
  }

  @override
  void dispose() {
    _showBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: _showBloc,
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: ShowPage()));
  }
}
