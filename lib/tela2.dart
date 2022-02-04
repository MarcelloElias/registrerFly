import 'package:app_tela_13k/tela_final.dart';
import 'package:app_tela_13k/botao_personalizado.dart';
import 'package:app_tela_13k/tamanho_senha.dart';
import 'package:flutter/material.dart';

class Tela2 extends StatefulWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  bool ocultarSenha = true;
  bool ocultarSenha1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Cadastre seus dados",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.red,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 350,
                child: TextField(
                    obscureText: ocultarSenha,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintText: "Sua senha",
                      hintStyle: const TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility),
                        onPressed: () {
                          ocultarSenha = !ocultarSenha;
                          setState(() {});
                        },
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                child: TextField(
                    obscureText: ocultarSenha1,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintText: "Confirme sua senha",
                      hintStyle: const TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility),
                        onPressed: () {
                          ocultarSenha1 = !ocultarSenha1;
                          setState(() {});
                        },
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              const TamanhoSenha(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Cuidado! Sua senha atual é fácil de adivinhar. Use\nletras, números e símbolos para deixa-la mais forte.",
                style: TextStyle(
                  color: Color.fromARGB(255, 136, 136, 136),
                ),
              ),
              const SizedBox(
                height: 300,
              ),
              const BotaoPersonalizado(title: "Próximo", page: TelaFinal()),
            ],
          ),
        ),
      ),
    );
  }
}
