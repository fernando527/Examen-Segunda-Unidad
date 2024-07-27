import 'package:examenunidad2/respuesta/respuesta.dart';
import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
//Fernando Jose Cruz Murillo
//cuenta: 20222001186

class Pagina1 extends StatefulWidget {
  const Pagina1({super.key});

  @override
  State<Pagina1> createState() => _pagina1State();
}

class _pagina1State extends State<Pagina1> {
  Respuesta? respuesta;

  @override
  void initState() {
    super.initState();
    //   getRespuesta();
  }

  Future<void> getRespuesta() async {
    final response = await Dio().get('https://yesno.wtf/api');
    respuesta = Respuesta.fromJson(response.data);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Examen Fernando Jose Cruz'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://yesno.wtf/assets/no/23-5fe6c1ca6c78e7bf9a7cf43e406fb8db.gif",
                height: 200,
                fit: BoxFit.cover,
              ),
              const TextField()
            ],
          ),
        ));
  }
}
