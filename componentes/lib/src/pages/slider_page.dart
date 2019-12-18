import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valor = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamano de la imagen',
      divisions: 1000,
      value: _valor,
      min: 10.0,
      max: 400.0,
      onChanged: _bloquearCheck ? null : (valor) {
        setState(() {
         _valor=valor; 
        });
      },
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged:  (valor) {
    //     setState(() {
    //       _bloquearCheck = valor;
    //     });
    //   },
    // ); 

    return CheckboxListTile(
       value: _bloquearCheck,
       title: Text('Bloquear slider'),
       onChanged:  (valor) {
         setState(() {
           _bloquearCheck = valor;
         });
       },
    );
  }


 Widget _crearSwitch() {
   
    return SwitchListTile(
       value: _bloquearCheck,
       title: Text('Bloquear slider'),
       onChanged:  (valor) {
         setState(() {
           _bloquearCheck = valor;
         });
       },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3e14c32b-9b73-4351-b998-4ba095539837/dd0cm8f-f191dbfc-ca90-4354-8320-29d23fce6722.png/v1/fill/w_724,h_1104,strp/superman_png_by_stark3879_dd0cm8f-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTk1MSIsInBhdGgiOiJcL2ZcLzNlMTRjMzJiLTliNzMtNDM1MS1iOTk4LTRiYTA5NTUzOTgzN1wvZGQwY204Zi1mMTkxZGJmYy1jYTkwLTQzNTQtODMyMC0yOWQyM2ZjZTY3MjIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.N6t2NvExCIDnyh2VESts25QH8SK3JEASrI8WasEzm6Q'),
      width: _valor,
      fit: BoxFit.contain,
    );
  }
}