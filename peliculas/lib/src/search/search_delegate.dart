import 'package:flutter/material.dart';
import 'package:peliculas/src/models/pelicula_model.dart';
import 'package:peliculas/src/pages/pelicula_detalle.dart';
import 'package:peliculas/src/providers/peliculas_provider.dart';

class DataSearch extends SearchDelegate {

  String seleccion = '';

  Pelicula peliculaSeleccionada = new Pelicula();

  final peliculasProvider = new PeliculasProvider();

  final peliculas = [
    'Spiderman',
    'Aquaman',
    'Batman',
    'Shazam',
    'IronMan',
    'Capitan America',
    'Superman',
    'IronMan 1',
    'IronMan 2',
    'IronMan 3',
    'IronMan 4',
  ];

  final peliculasRecientes = [
    'Spiderman',
    'Capitan America'
  ];


  @override
  String get searchFieldLabel => 'Buscar Película';

  @override
  List<Widget> buildActions(BuildContext context) {
      // Acciones de nuestro appbar
      return [
        IconButton(
          icon: Icon(Icons.clear), 
          onPressed: () {
            query = '';
          })
      ];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      // Icono a la izquierda del appbar
      return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ), 
        onPressed: () {
          close(context, null);
        }
      );
    }
  
    @override
    Widget buildResults(BuildContext context) {

       if (query.isEmpty) showSuggestions(context); // T

      // Crea los resultdos que se van a mostrar 
      /*
      return Center(
        child: Container(
          height: 100.0,
          width: 100.0,
          color: Colors.blueAccent,
          child: Text(seleccion),
        ),
      );
      */

      final detalle = PeliculaDetalle();

      return Scaffold(
        body: CustomScrollView(
          slivers: [
            _crearAppBar(peliculaSeleccionada),
            SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(height: 10.0,),
                    detalle.posterTitulo(context, peliculaSeleccionada),
                    detalle.descripcion(peliculaSeleccionada),
                    detalle.descripcion(peliculaSeleccionada),
                    detalle.descripcion(peliculaSeleccionada),
                    detalle.descripcion(peliculaSeleccionada),
                    detalle.crearCasting(peliculaSeleccionada)
                  ]
                )
            )
          ],
        )
      );
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
    // sugerencias que aparecen cuando la persona escribe
    if (query.isEmpty) return Container();

    return FutureBuilder(
      future: peliculasProvider.getBuscarpelicula(query),
      builder: (BuildContext context, AsyncSnapshot<List<Pelicula>> snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: snapshot.data.map((pelicula) {
              return ListTile(
                leading: FadeInImage(
                  image: NetworkImage(pelicula.getPosterImg()),
                  placeholder: AssetImage('assets/img/no-image.jpg'),
                  width: 50.0,
                  fit: BoxFit.contain,
                ),
                title: Text(pelicula.title),
                subtitle: Text(pelicula.originalTitle),
                onTap: () {
                  /*
                  close(context, null);
                  pelicula.uniqueId = '${pelicula.id}-busqueda';
                  Navigator.pushNamed(context, 'detalle', arguments: pelicula);
                  */
                  pelicula.uniqueId = '${pelicula.id}-busqueda';
                  peliculaSeleccionada = pelicula;
                  showResults(context);
                },
              );
            }).toList(),
          );
        }
        else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
  

    Widget _crearAppBar(Pelicula pelicula) {
      return SliverAppBar(
        automaticallyImplyLeading: false,
        elevation: 2.0,
        backgroundColor: Colors.indigoAccent,
        expandedHeight: 200.0,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              pelicula.title,
              style: TextStyle(color: Colors.white, fontSize: 16.0,),
            ),
          ),
          background: FadeInImage(
            image: NetworkImage(pelicula.getBackdropPath()),
            placeholder: AssetImage('assets/img/loading.gif'),
            fadeInDuration: Duration(milliseconds: 100),
            fit: BoxFit.cover,
          ),
        ),
      );
    }


  /*
  @override
    Widget buildSuggestions(BuildContext context) {
    // sugerencias que aparecen cuando la persona escribe

    final listaSugerida = (query.isEmpty) ? 
                        peliculasRecientes : 
                        peliculas.where(
                          (p) => p.toLowerCase().startsWith(query.toLowerCase())
                        ).toList();

    return ListView.builder(
        itemCount: listaSugerida.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.movie),
            title: Text(listaSugerida[i]),
            onTap: () {
              seleccion = listaSugerida[i];
              showResults(context);
            },
          );
        }
      );
  }
  */

}