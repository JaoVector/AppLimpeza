import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:postgres/postgres.dart';
import 'package:tcc_fatec/Cad_Endereco.dart';
import 'package:tcc_fatec/CadastroUsuario.dart';
import 'package:tcc_fatec/Home.dart';
import 'package:tcc_fatec/Lavagem.dart';
import 'package:tcc_fatec/LimpezaLeve.dart';
import 'package:tcc_fatec/Login.dart';
import 'package:tcc_fatec/Pagamento.dart';
import 'package:tcc_fatec/PassarRoupa.dart';




void main() => runApp(Flutter());

class Flutter extends StatelessWidget {



  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter App Clean",
      theme: ThemeData(
      ),
      home: Login(),
    );
  }
}










