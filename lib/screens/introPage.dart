// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background.png"),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 40),
            child: Image.asset(
              "assets/images/introimg.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29.0),
            child: Text(
              "Continue as",
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'Oswald',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                height: 48,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 490.0, left: 30, right: 30),
            child: Column(
              children: [
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      foregroundColor: Colors.black,
                      backgroundColor: Color.fromARGB(236, 208, 214, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.elderly, color: Colors.black),
                        SizedBox(width: 19),
                        Text(
                          "Elderly Users",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'lora',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 25,
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      foregroundColor: Colors.black,
                      backgroundColor: Color.fromARGB(236, 208, 214, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.family_restroom, color: Colors.black),
                        SizedBox(width: 19),
                        Text(
                          "Family Members",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'lora',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 25,
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      foregroundColor: Colors.black,
                      backgroundColor: Color.fromARGB(236, 208, 214, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.volunteer_activism, color: Colors.black),
                        SizedBox(width: 19),
                        Text(
                          "Community Volunteers",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'lora',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 25,
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      foregroundColor: Colors.black,
                      backgroundColor: Color.fromARGB(236, 208, 214, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.health_and_safety, color: Colors.black),
                        SizedBox(width: 19),
                        Text(
                          "Healthcare Proffesionals",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'lora',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
