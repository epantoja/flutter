import 'package:finkidz/src/models/actividad_model.dart';
import 'package:finkidz/src/models/hijo_model.dart';
import 'package:finkidz/src/widgets/controles_padre/page_principal/banner_actividades/banner_actividades_widget.dart';
import 'package:finkidz/src/widgets/controles_padre/page_principal/banner_padre/banner_padre_widget.dart';
import 'package:finkidz/src/widgets/controles_padre/page_principal/actividades/lista_actividades.dart';
import 'package:finkidz/src/widgets/controles_padre/page_principal/lista_hijos_widget.dart/lista_hijos_widget.dart';
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

     List<ActividadModel> listaActividad = [
      new ActividadModel(
        id: 1,
        descripcionActividad: "Nota sobresaliente",
        puntaje: 5000,
        rutaLogo: "actividades_escolares_boton.png",
        hijoModel: [
          new HijoModel(
            id: 1,
            nombre: "Erwin",
            puntaje: 5000,
            rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"
          ),
          new HijoModel(
            id: 2,
            nombre: "Ricardo",
            puntaje: 5000,
            rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"
          )
        ]
      ),
      new ActividadModel(
        id: 3,
        descripcionActividad: "Sacar basura",
        puntaje: 5000,
        rutaLogo: "actividades_domesticas_boton.png",
        hijoModel: [
          new HijoModel(
            id: 1,
            nombre: "Erwin",
            puntaje: 5000,
            rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"
          ),
          new HijoModel(
            id: 2,
            nombre: "Ricardo",
            puntaje: 5000,
            rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"
          ),
        ]
      ),
      new ActividadModel(
        id: 4,
        descripcionActividad: "Cepillarse los dientes",
        puntaje: 5000,
        rutaLogo: "autocuidado_boton.png",
        hijoModel: [
          new HijoModel(
            id: 1,
            nombre: "Erwin",
            puntaje: 5000,
            rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"
          ),
          new HijoModel(
            id: 2,
            nombre: "Ricardo",
            puntaje: 5000,
            rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"
          )
        ]
      ),
      new ActividadModel(
        id: 5,
        descripcionActividad: "Hacer la tarea",
        puntaje: 5000,
        rutaLogo: "actividades_escolares_boton.png",
        hijoModel: [
          new HijoModel(
            id: 1,
            nombre: "Erwin",
            puntaje: 5000,
            rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"
          ),
          new HijoModel(
            id: 2,
            nombre: "Ricardo",
            puntaje: 5000,
            rutaImagen: "https://educacioninicial.mx/wp-content/uploads/2017/06/porque_muerden.jpg"
          )
        ]
      )
    ];

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
              ],
            ),
            SizedBox(height: 20.0,),
            BannerActividadesWidget(),
            SizedBox(height: 20.0,),
            ListaActividadesWidget(
              titulo: "Lista de actividades",
              listaActividad: listaActividad,
            )
          ],
        ),
      ),
    );
  }

}