import 'package:flutter/material.dart';
import 'package:tcc_fatec/Home.dart';
import 'package:tcc_fatec/Pagamento.dart';

class Limpeza_Pesada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Limpeza Pesada"),
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
                    labelText: "Tipo de Serviço",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira o Tipo de Serviço";
                  }
                },
              ),
              SizedBox(height: 30,),
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Outros Tipos",
                    labelStyle: TextStyle(color: Colors.black)
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Insira o que deseja";
                  }
                },
              ),
              SizedBox(height: 30,),
              //Adicionar Calendário
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.pink[500]
                ),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Cartao())
                    );
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

              )
            ],
          )
      ),
    );
  }
}