import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final int index;
  final List<String> list;
  final VoidCallback onPressed;
  final bool firstClick;
  const MyButton(
      {super.key,
      required this.index,
      required this.list,
      required this.onPressed,
      required this.firstClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          firstClick ? Colors.white : Colors.blue,
          // Change color on first click
        ),
      ),
      child: Center(
          child: Text(
        list[index],
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
        ),
      )),
    );
  }
}
