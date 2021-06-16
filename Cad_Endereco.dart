

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tcc_fatec/Home.dart';

class Endereco extends StatelessWidget {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro do Endereço"),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "CEP",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira seu CEP";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Rua",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira sua Rua";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    labelText: "Bairro",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira seu Bairro";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Numero",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira seu Numero";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Complemento",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira seu Complemento";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Cidade",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira seu Estado";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    labelText: "UF",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Confirme seu Estado";
                  }
                },
              ),
              Divider(),
              Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Container(
                    height: 50.0,

                    child: ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Home())
                          );
                        }
                      },
                      child: Text("Próximo",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),) ,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.pink),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.00),
                        side: BorderSide(color: Colors.pink),
                        
                                   ),
                                ),
                              ),

                      ),

                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
