import 'package:flutter/material.dart';

import 'modelos.dart';

class Detalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Producto item = ModalRoute.of(context).settings.arguments; // bajamos el parametro ingresado
    return Scaffold(
      appBar: AppBar(title: Text('Producto elegido ${item.nombre}'),),
      body: Center(
        child: Text('${item.detalle} de ${item.nombre}'),
      ),
    );
  }
}
