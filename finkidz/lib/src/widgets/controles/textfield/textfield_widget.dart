import 'package:flutter/material.dart';


class TextFieldWidget extends StatefulWidget {
  final amber= Colors.amber;
  final String labelText;
  final String hintText;
  final TextInputType typeInput;
  final IconData icono;
  final Color colorIcono;
  final bool isPassword;
  

  TextFieldWidget({@required this.labelText, @required this.hintText, 
                  @required this.typeInput, this.isPassword = false, this.icono, this.colorIcono});

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {

  bool _hidePassword = false;
  bool _isPassword = false; 
  String _labelText = '';
  String _hintText = '';
  IconData _icono;
  Color _colorIcono;
  TextInputType _typeInput;
  
  @override
  void initState() {
    super.initState();

    _hidePassword = widget.isPassword;
    _isPassword = widget.isPassword;
    _labelText = widget.labelText;
    _hintText = widget.hintText;
    _typeInput = widget.typeInput;
    _icono = widget.icono;
    _colorIcono = widget.colorIcono;
  }

  

  @override
  Widget build(BuildContext context) {
    
    var size = MediaQuery.of(context).size;

    return Stack(
      children: [
        _metodoImagenFondo(size),
        _metodoCajaTexto(size)
      ], 
    );
  }

  Widget _metodoImagenFondo(Size size) {
    return Container(
      child: Image(
        image: AssetImage('assets/img/barra_texto.png'),
        width: size.width * 100,
        //height: size.height * 0.10,
      ),
    );
  }

  Widget _metodoCajaTexto(Size size) {
    return Container(
      margin: EdgeInsets.only(
        //top: size.height * 0.014,
        left: 30.0,
        right: 30.0
      ),
      child: TextField(
        keyboardType: _typeInput,
        obscureText: _hidePassword,
        textInputAction: TextInputAction.next,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: _hintText,
          labelText: _labelText,
          prefixIcon: _icono != null ? Icon(
            _icono,
            color: _colorIcono != null ? _colorIcono : Colors.black45,
            size: 27.0,
          ): null,
          suffixIcon: _isPassword ? IconButton(
            iconSize: 27.0,
            alignment: Alignment.centerRight,
            onPressed: () {
              setState(() 
              {
                _hidePassword = !_hidePassword;
              });
            },
            icon: Icon(
              _hidePassword
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: Colors.black45,
            ),
          ): null,
        ),
      ),
    );
  }
}