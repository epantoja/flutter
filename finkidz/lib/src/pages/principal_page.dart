import 'package:finkidz/src/models/hijo_model.dart';
import 'package:finkidz/src/widgets/controles_padre/banner_padre/banner_padre_widget.dart';
import 'package:finkidz/src/widgets/controles_padre/lista_hijos_widget.dart/lista_hijos_widget.dart';
import 'package:finkidz/src/widgets/fondos/fondo_principal/fondo_principal_widget.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  PrincipalPage({Key key}) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FondoPrincipalWidget(
      textoAppBar: "Inicio",
      body: Center(
        child: Column(
          children: [
            BennerPadreWidget(
              tituloBanner: "¡Bienvenido!",
              nombreUsuario: "FINDKIZ",
              rutaImagen: "https://upload.wikimedia.org/wikipedia/commons/b/be/Perfil-Berna.jpg",
            ),
            ListaHijosWidget(
              titulo: "Tus hijos",
              tituloIcono: "Agregar hijo",
              hijos: [
                new HijoModel(id: 1, nombre: "Jefferson", puntaje: 4500, rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"),
                new HijoModel(id: 2, nombre: "Ricardo", puntaje: 4500, rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"),
                new HijoModel(id: 3, nombre: "Carlos", puntaje: 4500, rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"),
                new HijoModel(id: 4, nombre: "Steven", puntaje: 4500, rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"),
                new HijoModel(id: 5, nombre: "Sebastiàn", puntaje: 4500, rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"),
              ],
            )
          ],
        ),
      ),
    );
  }

}