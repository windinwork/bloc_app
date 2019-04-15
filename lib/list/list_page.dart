import 'package:bloc_app/show/show.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListPageState();
  }
}

class ListPageState extends State<ListPage> {
  // 声明Bloc
  ListBloc bloc;

  @override
  void initState() {
    bloc = ListBloc();
    bloc.dispatch(FetchListEvent());
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    buildLoad() {
      return Center(
        child: Text("正在加载中..."),
      );
    }

    buildList(list) {
      return ListView.builder(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(list[index]),
              onTap: () {
                ShowBloc bloc = BlocProvider.of<ShowBloc>(context);
                // 发送选择的action
                bloc.dispatch(SelectShowEvent(list[index]));
                // 返回到上一级页面
                Navigator.pop(context);
              },
            );
          });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("List"),
        ),
        body: BlocBuilder(
            bloc: bloc,
            builder: (context, state) {
              // 根据状态显示界面
              if (state is InitialListState) {
                // 显示loading界面
                return buildLoad();
              } else if (state is FetchListState) {
                // 显示列表界面
                var list = state.list;
                return buildList(list);
              }
            }));
    ;
  }
}
