import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(context),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }

  Widget _crearImagen() {
      return  Container(
        width: double.infinity,
        child: Image(
          image: NetworkImage('https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8&w=1000&q=80'),
          height: 200.0,
          fit: BoxFit.cover,
        ),
      );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("lago con un puente", style: estiloTitulo),
                  SizedBox(height: 7.0,),
                  Text("Un lago en Alemania", style: estiloSubTitulo)
                ],
              ),
            ),

            Icon(Icons.star, color: Colors.red, size: 30.0,),

            Text("41", style: TextStyle(fontSize: 20.0),)

          ],
        ),
      ),
    );
  }

  Widget _crearAcciones(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(context, Icons.call, "Basico"),
        _accion(context, Icons.near_me, "Scroll"),
        _accion(context, Icons.share, 'Botones'),
      ],
    );
  }

  Widget _accion(BuildContext context, IconData icon, String texto) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, texto.toLowerCase());
      },
      child: Column(
        children: [
          Icon(icon, color: Colors.blue, size: 35.0, ),
          SizedBox(height: 5.0,),
          Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),),
        ],
      ),
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Exercitation dolore non incididunt in mollit pariatur quis dolor dolor id ad duis. Laborum nisi ipsum eiusmod mollit tempor Lorem cupidatat et Lorem culpa. Pariatur ullamco enim anim id in exercitation quis esse. Dolore non sunt magna esse eiusmod ullamco qui magna anim ad enim non cillum. Eu anim ut officia sit id ipsum. Et pariatur tempor et voluptate duis est reprehenderit voluptate culpa officia laboris.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}