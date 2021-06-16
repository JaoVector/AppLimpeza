import 'package:flutter/material.dart';
import 'package:tcc_fatec/Home.dart';
import 'package:tcc_fatec/Login.dart';

class Cartao extends StatelessWidget {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar Cartão"),
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Icon(Icons.person_outline, size: 120.0, color: Colors.pink),
              Divider(),
              ElevatedButton(
                onPressed: (){

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Home())
                  );
                }
                ,
                child: Text("Home",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
              ),
              Divider(),
              ElevatedButton(
                onPressed: (){

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Home())
                  );
                }
                ,
                child: Text("Historico",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
              ),
              Divider(),
              ElevatedButton(
                onPressed: (){

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Home())
                  );
                }
                ,
                child: Text("Pagamento",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
              ),
              Divider(),
              ElevatedButton(
                onPressed: (){

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Home())
                  );
                }
                ,
                child: Text("Configurações",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
              ),
              Divider(),
              ElevatedButton(
                onPressed: (){

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Home())
                  );
                }
                ,
                child: Text("Ajuda",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
              ),
              ElevatedButton(
                onPressed: (){

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Home())
                  );
                }
                ,
                child: Text("Sair",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
              ),
            ],
          ),
        ),
      ),
      body: Container(
          child: Column(
            children: <Widget>[
             Divider(),
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Numero do Cartão",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira o Numero do Cartão";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Validade Cartão",
                    labelStyle: TextStyle(color: Colors.black)

                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira a Validade do Cartão";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Insira o CVC",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira o CVC do Cartão";
                  }
                },
              ),
              Divider(),
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Nome do Cartão",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira o Nome do Cartão";
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
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink),
                    borderRadius: BorderRadius.circular(100.00)
                ),
                height: 50.0,
                width: 300.0,

                child: ElevatedButton(
                  onPressed: (){
                      if(_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Home())
                        );
                      }
                  },
                  child: Text("Confirmar Pagamento",
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
            ],
          )
      ),
    );
  }
}