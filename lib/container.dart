import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String name;
  final IconData icon;

  const Category({
    Key key,
    @required this.name,
    @required this.icon
    })
      : assert(name != null),
        assert(icon != null),
        super(key: key);

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
            onTap: () => print(name),
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
