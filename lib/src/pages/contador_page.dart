import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage>{

  final TextStyle _estiloTexto = TextStyle(fontSize: 25);
  int _conteo = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(75,0,255,0.9),
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks: ', style: _estiloTexto ),
            Text('$_conteo', style: TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment:MainAxisAlignment.end ,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset ,),
        Expanded(child: SizedBox(width: 5.0,),),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _substraer,),
        SizedBox(width: 5.0, ),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _agregar,),
        SizedBox(width: 5.0, ),
      ],
    );
  }

  void _agregar(){
    setState(() {this._conteo++;});
  }

  void _substraer(){
    setState(() {this._conteo--;});
  }

  void _reset(){
    setState(() {this._conteo = 0;});
  }
}






