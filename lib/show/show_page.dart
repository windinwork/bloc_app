import 'package:bloc_app/list/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'show.dart';

class ShowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var showBloc = BlocProvider.of<ShowBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Show"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlocBuilder(
              bloc: showBloc,
              builder: (context, state) {
                if (state is SelectedShowState) {
                  return Text(state.selected);
                }
                return Text("");
              }),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 36.0),
              textColor: Colors.white,
              child: Text(
                '前往列表',
              ),
              color: Colors.lightBlue,
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ListPage();
                  })),
            ),
          ),
        ],
      )),
    );
  }
}
