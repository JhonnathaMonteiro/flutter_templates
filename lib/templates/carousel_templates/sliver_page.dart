import 'package:flutter/material.dart';

class HomePageSliverPage extends StatefulWidget {
  @override
  _HomePageSliverPageState createState() => _HomePageSliverPageState();
}

class _HomePageSliverPageState extends State<HomePageSliverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScrollable(context),
    );
  }

  _buildScrollable(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 120.0,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text("Sliver Page Exaple"),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 30.0,
            crossAxisSpacing: 20.0,
            childAspectRatio: 1 / 2,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                height: 60,
                width: 60,
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Center(child: Text('GG $index')),
              );
            },
            childCount: 20,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 50,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text(
                  'List Item $index',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
