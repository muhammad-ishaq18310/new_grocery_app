import 'package:flutter/material.dart';
import 'package:flutter_application_1/items_screen.dart';
import 'package:flutter_application_1/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool ischeck = false;
  bool ispasswordhide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Group 1.png',
              ),
              SizedBox(
                height: 20,
              ),

              //text iput
              Text(
                'input your credemental \n             to login',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff06161C)),
              ),
              SizedBox(
                height: 20,
              ),

              //text email
              Row(
                children: const [
                  Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff999999)),
                  ),
                ],
              ),
              SizedBox(height: 5),
              //textfeild
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff000842)),
                  prefixIcon: Icon(Icons.mail),
                  // border: OutlineInputBorder()
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff999999)),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter your password",
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff000842)),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                      onPressed: () {
                        ispasswordhide = !ispasswordhide;
                        setState(() {});
                      },
                      icon: ispasswordhide
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility)),
                  //border: OutlineInputBorder(),
                ),
                obscureText: ispasswordhide,
                obscuringCharacter: '*',
              ),
              SizedBox(
                height: 10,
              ),
              // checkbox nad forget password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                      value: ischeck,
                      onChanged: (value) {
                        ischeck = !ischeck;
                        setState(() {});
                      }),
                  Text('Remenber me'),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("forget password"),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //login button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => homescreen()));
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
