import 'package:flutter/material.dart';

import 'modelos.dart';
import 'paginas.dart';

class HomePage extends StatefulWidget{
  List<Producto> items;


  HomePage({this.items}); // las llaves indican que es un parametro con nombre

  @override
  _HomePageState createState() => _HomePageState(items);
}

class _HomePageState extends State<HomePage> {
  List<Producto> items;

  _HomePageState(this.items);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Lista generada'),),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index){
              return Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text('$index'),),
                  title: Text(items[index].nombre),
                  subtitle: Text(items[index].detalle),
                  trailing: Icon(Icons.play_circle_filled),
                  onTap: (){
                    setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => Detalle(),
                                settings: RouteSettings(
                                  arguments: items[index]
                                )
                            )
                        );
                    });
                  },
                ),
              );
            }
        ),
      ),
    );
  }
}