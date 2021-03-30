import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/functions/general.dart';

class RegisterPage extends StatelessWidget {

  
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
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
                "Registro",
                style: TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
            ),

            Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [

                    SizedBox(height: 1.0,),
                    TextField(
                      controller: nameTextEditingController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Nombre",
                          labelStyle: TextStyle(
                              fontSize: 14.0
                          ),
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.0
                          )
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),


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
                         if(nameTextEditingController.text.length < 3) {
                            displayToastMessage("El nombre debe tener al menos 3 caracteres.", context);
                          }else if(!emailTextEditingController.text.contains("@")){
                            displayToastMessage("El correo electrónico no es valido.", context);
                          }else if(passwordTextEditingController.text.length < 6){
                            displayToastMessage("La clave debe tener al menos 6 caracteres.", context);
                          }else {
                            //registerNewUser(context);
                          }
                       },
                    )
                  ],
                ),
              ),
              /*
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Text(
                  "¿Ya tienes una cuenta? Ingresa aquí."
                ),
              )
              */
          ],
        )
      )
    );
  }
}