import 'package:flutter/material.dart';

class Signinpage extends StatelessWidget {
  const Signinpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/background.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 120, left: 20),
                  child: Text("Login",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2,
                          fontFamily: 'Oswald',
                          color: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170, left: 20),
                  child: Row(
                    children: [
                      Text("Don't have an account?",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                              fontFamily: "Lora",
                              color: Colors.black)),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.values[1],
                        ),
                        child: Text('Sign Up',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                                fontFamily: "Lora",
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: Stack(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(251, 253, 248, 230),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60),
                              )),
                          height: 650,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [],
                          )),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(45.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              autofocus: false,
                              decoration: InputDecoration(
                                labelText: "Email/Phone number",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: "Lora",
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF0B2399),
                                    width: 2.0,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF0B2399),
                                    width: 3.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 45.0, right: 45.0),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              autofocus: false,
                              decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: "Lora",
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF0B2399),
                                    width: 2.0,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF0B2399),
                                    width: 3.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 40.0,
                              left: 210.0,
                            ),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Color(0xFF0B2399),
                                  ),
                                )),
                          ),
                          SizedBox(height: 50),
                          Container(
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                center: Alignment.center,
                                radius: 4.0,
                                focal: Alignment.center,
                                colors: [
                                  Color.fromRGBO(253, 216, 193, 0.82),
                                  Color.fromRGBO(254, 177, 130, 0.82),
                                  Color.fromRGBO(255, 139, 67, 0.82),
                                ],
                                stops: [0.0, 0.3, 0.6],
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 140.0, vertical: 15),
                                  child: Text(
                                    "LogIn",
                                    style: TextStyle(
                                      fontFamily: "Lora",
                                      fontSize: 16,
                                      color: const Color.fromARGB(255, 9, 9, 9),
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Or continue with",
                            style: TextStyle(fontFamily: "Lora"),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.g_mobiledata),
                                iconSize: 37,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.facebook),
                                iconSize: 35,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
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
