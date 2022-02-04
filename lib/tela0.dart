import 'package:app_tela_13k/botao_personalizado.dart';
import 'package:app_tela_13k/tela1.dart';
import 'package:flutter/material.dart';

class Tela0 extends StatelessWidget {
  const Tela0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/TelaCadastro.png",
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "RegisterFly",
                style: TextStyle(
                  fontSize: 55,
                  color: Color.fromARGB(255, 2, 67, 165),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              const BotaoPersonalizado(
                title: "Entrar",
                page: Tela1(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
