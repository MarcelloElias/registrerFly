import 'package:app_tela_13k/botao_personalizado.dart';
import 'package:app_tela_13k/tela2.dart';
import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

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
                  //obscureText: true, = Esconder o que está sendo digitado
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintText: "Nome completo",
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintText: "Email",
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                color: Colors.grey.shade200,
                width: 350,
                child: ListTile(
                  title: const Text(
                    "Gênero",
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.expand_more)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintText: "CPF",
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    width: 90,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Image.asset(
                            "assets/BandeiraBR.jpg",
                            width: 35,
                            height: 60,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("+55"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: "Celular",
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8.0)),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 150,
              ),
              const BotaoPersonalizado(
                title: "Próximo",
                page: Tela2(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
