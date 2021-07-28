import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formulario/formulariocontroller.dart';

void main() {
  runApp(Formulario());
}

class Formulario extends StatelessWidget {
  //Criação dos controladores

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Configurando todos os lados pra alinhar os textfield do nosso formulário!
    //Parte visual do formulário em si.

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Cadastrando produto")),
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: TextField(
                    controller: _controladorNome,
                    decoration: InputDecoration(labelText: "Nome"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controladorQuantidade,
                    decoration: InputDecoration(labelText: "Quantidade"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: TextField(
                    controller: _controladorValor,
                    decoration: InputDecoration(labelText: "Valor"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: ElevatedButton(
                    child: Text("Cadastrar"),

                    //Configurando os controladores para reconhecer no formulário.

                    onPressed: () {
                      final String nome = _controladorNome.text;
                      final int? quantidade =
                          int.tryParse(_controladorQuantidade.text);
                      final double? valor =
                          double.tryParse(_controladorValor.text);

                      final Produto produtoNovo =
                          Produto(nome, quantidade!, valor!);
                      print(produtoNovo);
                      print(nome);
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
