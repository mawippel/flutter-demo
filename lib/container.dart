import 'package:flutter/material.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  final String name;

  const Category({Key key, @required this.name})
      : assert(name != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Container(
          color: Colors.blue,
          height: 100,
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () => print(name),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Icon(Icons.accessible_forward),
                  ),
                  Center(
                    child: Text(
                      'This man has no legs workin',
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
