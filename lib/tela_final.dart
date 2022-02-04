import 'package:app_tela_13k/tela0.dart';
import 'package:flutter/material.dart';

class TelaFinal extends StatelessWidget {
  const TelaFinal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Tela0(),
          ),
          (route) => false);
    });
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            const Center(
              child: Text(
                "Cadastro realizado com sucesso!",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 450,
            ),
            SizedBox(
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Tela0(),
                      ),
                      (route) => false);
                },
                child: const Text("Voltar para o Login"),
                style: ElevatedButton.styleFrom(primary: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
