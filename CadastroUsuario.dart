
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tcc_fatec/Cad_Endereco.dart';


class Usuario extends StatelessWidget {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
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
              TextFormField(keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(color: Colors.black)
              ),
                validator: (value){
                  if(value!.isEmpty){
                      return "Insira seu nome";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "CPF",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira seu CPF";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    labelText: "Data de Nascimento",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira sua Data de Nascimento";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: "Telefone",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira seu Telefone";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira seu E-mail";
                  }
                },
              ),
              Divider(),
              TextFormField(obscureText: true,
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira sua Senha";
                  }
                },
              ),
              TextFormField(obscureText: true,
                decoration: InputDecoration(
                    labelText: "Confirme senha",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Confirme sua Senha";
                  } else if(value.length < 8) {
                    return "Sua senha não é compativel";
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
                                  builder: (BuildContext context) => Endereco())
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
                  )
              ),
            ],
          ),
        ),
      ),
    );

  }
}


