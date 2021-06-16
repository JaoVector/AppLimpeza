


import 'package:flutter/material.dart';
import 'package:tcc_fatec/CadastroUsuario.dart';
import 'package:tcc_fatec/Home.dart';


class Login extends StatelessWidget {

  var esqsde = TextStyle(color: Colors.black);
  var caduse = TextStyle(color: Colors.black);
  var linkesq = TextStyle(color: Colors.blue);
  var linkcad = TextStyle(color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.pink,
                  Colors.purple
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Bem-vindo", style: TextStyle(color: Colors.white, fontSize: 18),),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: Colors.pink,
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child:  TextFormField(keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      labelText: "Email",
                                      labelStyle: TextStyle(color: Colors.black)
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return "Insira seu Email";
                                    }
                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child:  TextFormField(obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Senha",
                                      labelStyle: TextStyle(color: Colors.black)
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return "Insira sua Senha";
                                    } else if(value.length < 8) {
                                      return "Sua senha deve ter no minimo 8 caracteres";
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50,),
                       Column(
                         children: <Widget>[

                           ElevatedButton(onPressed: (){
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (BuildContext context) => Usuario())
                             );

                           },
                             child: Text("Novo Cadastro",
                               style: TextStyle(color: Colors.blue, fontSize: 15.0),),
                             style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),),
                         ],
                       ),

                       // SizedBox(height: 40,),
                        //Text("Esqueceu a senha", style: TextStyle(color: Colors.grey),),
                       // SizedBox(height: 40,),
                       // Text("Nova Conta", style: TextStyle(color: Colors.grey),),
                       // SizedBox(height: 40,),

                        SizedBox(height: 50,),
                        Container(

                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 100),

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.pink[500]
                          ),
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) => Home())
                              );
                            },
                            child: Text("Login",
                              style: TextStyle(color: Colors.white, fontSize: 25.0),),
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
                        SizedBox(height: 50,),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}