import 'package:flutter/material.dart';

class TamanhoSenha extends StatelessWidget {
  const TamanhoSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 25,
        ),
        const Text(
          "BOA SENHA!",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          color: const Color.fromARGB(255, 197, 42, 31),
          width: 35,
          height: 3,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          color: const Color.fromARGB(255, 245, 38, 23),
          width: 35,
          height: 3,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          color: const Color.fromARGB(255, 214, 133, 127),
          width: 35,
          height: 3,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          color: const Color.fromARGB(255, 221, 206, 67),
          width: 35,
          height: 3,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          color: const Color.fromARGB(255, 93, 209, 97),
          width: 35,
          height: 3,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          color: Colors.green,
          width: 35,
          height: 3,
        ),
      ],
    );
  }
}
