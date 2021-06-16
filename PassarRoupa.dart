import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:tcc_fatec/Home.dart';

import 'Pagamento.dart';


class Passar extends StatelessWidget {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passar Roupa"),
        backgroundColor: Colors.pink[500],
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
              SizedBox(height: 50,),
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Quantidade de Roupas",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira a Quantidade de Roupas";
                  }
                },
              ),
              SizedBox(height: 30,),
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Tipos de Roupas",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira o Tipo de Roupa";
                  }
                },
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink),
                    borderRadius: BorderRadius.circular(4.00)
                ),
                height: 150.0,
                width: 150.0,

                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Cartao())
                    );
                  },
                  child: Text("Passar Roupa",
                    style: TextStyle(color: Colors.black, fontSize: 15.0),),
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