
import 'package:finkidz/src/models/hijo_model.dart';

class ActividadModel {
  int id;
  String rutaLogo;
  String descripcionActividad;
  int puntaje;
  List<HijoModel> hijoModel;

  ActividadModel({
    this.id,
    this.rutaLogo,
    this.descripcionActividad,
    this.puntaje,
    this.hijoModel
  });

}

