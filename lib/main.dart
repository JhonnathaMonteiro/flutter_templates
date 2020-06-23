import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        elevation: 5.0,
        title: Text("Flutter Templates"),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          BackdropToggleButton(),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      backLayer: Center(
        child: Text("Back Layer Placeholder!!"),
      ),
      frontLayerBorderRadius: BorderRadius.zero,
      frontLayer: Builder(
        builder: (context) => Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: ExpansionTile(
                  title: Text(
                    "Widgets",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: Icon(
                    Icons.extension,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('SUB 1'),
                      leading: IconButton(
                        splashColor: Colors.transparent,
                        icon: Icon(Icons.star_border),
                        onPressed: () {},
                      ),
                      subtitle: Text('Sub text (description)'),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                      ),
                    ),
                    ListTile(
                      title: Text('SUB 2'),
                      leading: IconButton(
                        splashColor: Colors.transparent,
                        icon: Icon(Icons.star_border),
                        onPressed: () {},
                      ),
                      subtitle: Text('Sub text (description)'),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: 2,
          ),
        ),
      ),
    );
  }
}
