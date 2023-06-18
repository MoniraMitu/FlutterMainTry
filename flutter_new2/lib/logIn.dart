import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_new2/main.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(
            height: 5,
          ),
          Image(
            image: AssetImage("img/img"),
            height: 250,
            width: 390,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            "Login as User",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: [
              const SizedBox(
                height: 5.0,
              ),
              TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 14.0),
                  hintStyle: TextStyle(fontSize: 30, color: Colors.amber),
                ),
                style: TextStyle(fontSize: 10.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 14.0),
                  hintStyle: TextStyle(fontSize: 30, color: Colors.amber),
                ),
                style: TextStyle(fontSize: 10.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0)
                            )
                            )
                            ),
                            child: Container( 
                              height: 50.0,
                              child: Text(
                                "Log IN"
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  COLOR:Colors.pink,

                                ),
                                 ),
                            ),
                            onPressed: () {
                              if (!email.text.contains("@")){
                                displayToastMassage("Invalid email", BuildContext);
                              }else if(password.text.length<3){
                                displayToastMassage("Invalid password", BuildContext);}
                                {
                                  displayToastMassage("Hello !! ${email.text} !! ${password.text}")
                                }
                              }
                            
              )
            ]),
          )
        ]),
      )),
    );
  }
}
