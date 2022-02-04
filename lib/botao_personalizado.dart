import 'package:flutter/material.dart';

class BotaoPersonalizado extends StatelessWidget {
  final String title;
  final Widget page;

  const BotaoPersonalizado({
    Key? key,
    required this.title,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  page,
            ),
          );
        },
        child: Text(title),
        style: ElevatedButton.styleFrom(primary: Colors.red),
      ),
    );
  }
}
