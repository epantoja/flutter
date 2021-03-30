import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/functions/general.dart';

class LoginPage extends StatelessWidget {
  
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        //title: Text("Tic tac Toe"),
        centerTitle: false,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                  'assets/img/banner_1.PNG',
                  fit: BoxFit.fitWidth,
                  height: 150.0,
              ),
            ),

            SizedBox(height: 20.0,),
            Text(
                "Acceso",
                style: TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
            ),

            Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 1.0,),
                    TextField(
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Correo",
                          labelStyle: TextStyle(
                              fontSize: 14.0
                          ),
                          hintStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: 10.0
                          )
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),

                    SizedBox(height: 1.0,),
                    TextField(
                      controller: passwordTextEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Clave",
                          labelStyle: TextStyle(
                              fontSize: 14.0
                          ),
                          hintStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: 10.0
                          )
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),

                    SizedBox(height: 10.0,),

                     // ignore: deprecated_member_use
                     RaisedButton (
                      color: Colors.yellow,
                      textColor: Colors.black,
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            "Iniciar",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(24.0)
                      ),
                       onPressed: () {
                         if(!emailTextEditingController.text.contains("@")){
                           displayToastMessage("La dirección de correo electrónico no es valido.", context);
                         }else if(passwordTextEditingController.text.isEmpty){
                           displayToastMessage("La clave es requerida.", context);
                         } else {
                           //loginAndAuthenticateUser(context);
                         }
                       },
                    )
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "register");
                },
                child: Text(
                  "¿No tienes una cuenta? Regístrate aquí."
                ),
              )
          ],
        )
      )
    );
  }
}