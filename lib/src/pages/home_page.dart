import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final TextStyle estiloTexto = TextStyle(fontSize: 25);
  final int conteo = 10 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(75,0,255,0.9),
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks: ', style: estiloTexto ),
            Text('$conteo', style: TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('Hola mundo');
        },
        child: Icon(Icons.add),
      ) ,
    );
  }

}