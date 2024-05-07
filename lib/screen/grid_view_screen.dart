import 'package:flutter/material.dart';

import '../common/my_button.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  List<String> buttonNames = ['C', 'R', 'Y', 'S', 'T', 'A', 'L'];
  List<bool> firstClickList = List.generate(7, (index) => true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Grid View'),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        children: List.generate(buttonNames.length, (index) {
          return MyButton(
            list: buttonNames,
            index: index,
            onPressed: () {
              setState(() {
                if (firstClickList[index]) {
                  firstClickList[index] = false;
                } else {
                  firstClickList.removeAt(index);
                  buttonNames.removeAt(index);
                }
              });
            },
            firstClick: firstClickList[index],
          );
        }),
      ),
    );
  }
}
