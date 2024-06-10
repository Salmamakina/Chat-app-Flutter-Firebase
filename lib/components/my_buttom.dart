import 'package:flutter/material.dart';


class MyButtom extends StatelessWidget {
  final String text;
  const MyButtom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10)
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Center(child: Text(text)),
    );
  }
}