import 'package:flutter/material.dart';

class CategoryDescriptor extends StatefulWidget {
  final ColorSwatch color;

  const CategoryDescriptor({Key key, @required this.color})
      : assert(color != null),
        super(key: key);

  @override
  _CategoryDescriptorState createState() => _CategoryDescriptorState();
}

class _CategoryDescriptorState extends State<CategoryDescriptor> {
  var _color = Colors.pink;
  var _textField = 'Marcelo Wippel';

  void _performAction() {
    print('xD');
    setState(() {
      if (_color == Colors.green) {
        _color = Colors.pink;
      } else {
        _color = Colors.green;
      }
    });
  }

  void _handleInputName(String name){
    setState(() {
      _textField = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    final input = Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              keyboardType: TextInputType.text,
              onChanged: (name) => this._handleInputName(name),
            ),
          ),
        ],
      ),
    );

    return Container(
      color: widget.color['secondaryColor'],
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width,
      child: FlatButton(
        onPressed: () => _performAction(),
        child: Column(
          children: <Widget>[
            Text(
              'Write your name',
              style: TextStyle(
                color: _color,
                fontSize: 30,
              ),
            ),
            Text(
              _textField,
              style: Theme.of(context).textTheme.subhead,
            ),
            input,
          ],
        ),
      ),
    );
  }
}
