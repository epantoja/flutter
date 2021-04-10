import 'package:flutter/material.dart';


class TextFieldWidget extends StatefulWidget {
  final amber= Colors.amber;
  final String labelText;
  final String hintText;
  final TextInputType typeInput;
  final bool isPassword;
  

  TextFieldWidget({@required this.labelText, @required this.hintText, 
                  @required this.typeInput, this.isPassword = false});

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {

  bool _hidePassword = false;
  bool _isPassword = false; 
  String _labelText = '';
  String _hintText = '';
  TextInputType _typeInput = null;
  
  @override
    void initState() {
      super.initState();

      _hidePassword = widget.isPassword;
      _isPassword = widget.isPassword;
      _labelText = widget.labelText;
      _hintText = widget.hintText;
      _typeInput = widget.typeInput;
    }

  

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        Container(
          child: Image(
            image: AssetImage('assets/img/barra_texto.png'),
            width: 350.0,
            height: 80.0,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
          child: TextField(
            keyboardType: _typeInput,
            obscureText: _hidePassword,
            textInputAction: TextInputAction.next,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: _hintText,
              labelText: _labelText,
              suffixIcon: _isPassword ? IconButton(
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
        ),
      ], 
    );
  }
}