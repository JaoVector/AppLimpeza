

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcc_fatec/Lavagem.dart';
import 'package:tcc_fatec/Login.dart';
import 'package:tcc_fatec/PassarRoupa.dart';

import 'LimpezaLeve.dart';
import 'LimpezaPesada.dart';


class Home extends StatelessWidget {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
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
                            builder: (BuildContext context) => Login())
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(

                children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink),
                          borderRadius: BorderRadius.circular(4.00)
                      ),
                      height: 150.0,
                      width: 150.0,

                      child:  ElevatedButton(

                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Limpeza_Pesada())
                          );
                        },
                        child: Text("Limpeza Pesada",
                          style: TextStyle(color: Colors.black, fontSize: 15.0),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),

                        ),
                      ),
                    ),
                  Divider(),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(4.00)
                    ),
                    height: 150.0,
                    width: 150.0,


                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Lavagem())
                        );
                      },
                      child: Text("Lavagem",
                        style: TextStyle(color: Colors.black, fontSize: 15.0),),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                    ),
                  ),
                ],
              ),

              Column(

              children: [
                Container(

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink),
                      borderRadius: BorderRadius.circular(4.00)

                  ),
                  height: 150.0,
                  width: 150.0,



                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Limpeza_leve())
                      );
                    },
                    child: Text("Limpeza Leve",
                      style: TextStyle(color: Colors.black, fontSize: 15.0),),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                  ),
                ),
                Divider(),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink),
                      borderRadius: BorderRadius.circular(4.00)
                  ),
                  height: 150.0,
                  width: 150.0,

                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Passar())
                      );
                    },
                    child: Text("Passar Roupa",
                      style: TextStyle(color: Colors.black, fontSize: 15.0),),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                  ),
                ),
              ],)
            ],
            )
          ],
        ),
      )
    );
  }
}
