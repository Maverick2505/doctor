import 'package:doctor/screens/login_screen.dart';
import 'package:doctor/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: (){
                //Navigator.push(context, MaterialPageRoute(
                  //builder: (context)=>
                  //));
              },
              child: Text(
                "SKIP",
                style: TextStyle(
                  color: Color(0xFF7165D6),
                  fontSize: 20,
                ),
              ),
            ),
            ),
            SizedBox(height: 1),
            Padding(
              padding: EdgeInsets.all(1),
              child: Image.asset("images/doctores.png"),
            ),
            SizedBox(height: 50),
            Text("Aplicacion de citas Medicas",
            style: TextStyle(
              color: Color(0xFF7165D6),
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2,
            ),
            ),
            SizedBox(height: 10),
            Text("Elija a su medico",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> LoginScreen()
                     ));
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> SignupScreen(),
                         ));
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}