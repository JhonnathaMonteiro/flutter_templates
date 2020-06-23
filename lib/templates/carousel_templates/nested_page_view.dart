import 'package:flutter/material.dart';

class HomePageNestedPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nested Scroll View'),
      ),
      body: Container(
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return _buildHorizontalListView();
      },
      itemCount: 16,
    );
  }

  Widget _buildHorizontalListView() {
    final List<Color> _contentColors = [
      Colors.red,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.blue,
    ];

    return SizedBox(
      height: 130, // <--- The nested Page View Must have a fixed height
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(8),
            width: 124,
            color: _contentColors[index % _contentColors.length],
            child: Center(
              child: Text(
                index.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          );
        },
        itemCount: 8,
      ),
    );
  }
}
