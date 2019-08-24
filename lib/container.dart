import 'package:flutter/material.dart';
import 'package:flutter_demo/category-descriptor.dart';

class Category extends StatelessWidget {
  final String name;
  final IconData icon;

  const Category({Key key, @required this.name, @required this.icon})
      : assert(name != null),
        assert(icon != null),
        super(key: key);

  static const _colorSwatch = ColorSwatch(0x33579168, {
    'primaryColor': Colors.blue,
    'secondaryColor': Colors.lightGreen,
  });

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Unit Converter',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: CategoryDescriptor(
          color: _colorSwatch,
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: Container(
          height: 100,
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            highlightColor: Colors.yellow,
            splashColor: Colors.yellow,
            onTap: () {
              print('${this.name} | i was tapped');
              _navigateToConverter(context);
            },
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Icon(
                      this.icon,
                      size: 60,
                    ),
                  ),
                  Center(
                    child: Text(
                      this.name,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
