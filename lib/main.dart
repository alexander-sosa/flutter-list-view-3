import 'package:flutter/material.dart';

import 'home.dart';
import 'modelos.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage( items: List.generate(100, (index) => Producto('Nombre de $index','Descripción del producto $index'))  ),
    );
  }
}
