import 'package:flutter/material.dart';
import 'package:flutter_demo/container.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key key}) : super(key: key);

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  static const icons = [
    Icons.airplay,
    Icons.airport_shuttle,
    Icons.all_inclusive,
    Icons.arrow_upward,
    Icons.video_call,
    Icons.volume_off,
    Icons.accessible_forward,
  ];

  static const names = [
    'Airplay',
    'Airport Shuttle',
    'All Inclusive',
    'Arrow Upward',
    'Video Call',
    'Volume Off',
    'Accessible Forward',
  ];

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < names.length; i++) {
      categories.add(Category(
        name: names[i],
        icon: icons[i],
      ));
    }

    return Container(
      color: Colors.green,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: _buildCategoryWidgets(categories),
    );
  }
}
