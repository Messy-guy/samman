import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  String selectOption = 'Select the user Type';
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/background.png"),
                const Padding(
                  padding: EdgeInsets.only(top: 120, left: 20),
                  child: Text("SignUp",
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
                      const Text("Already have an account?",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                              fontFamily: "Lora",
                              color: Colors.black)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/signin");
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.values[1],
                        ),
                        child: const Text('Sign In',
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
                  padding: const EdgeInsets.only(top: 245.0),
                  child: Stack(
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(251, 253, 248, 230),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60),
                              )),
                          height: 800,
                          width: MediaQuery.of(context).size.width,
                          child: const Column(
                            children: [],
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 30.0, left: 45.0),
                            child: Container(
                              height: 50,
                              width: 320,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFA46B),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: DropdownButton<String>(
                                  value: selectOption,
                                  icon: const Icon(Icons.arrow_drop_down),
                                  iconSize: 24,
                                  elevation: 16,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 16),
                                  underline: Container(
                                    height: 0,
                                    color: Colors.transparent,
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectOption = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Select the user Type',
                                    'Elderly User',
                                    'Community Volunteer',
                                    'Family Member',
                                    'Healthcare Professional',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 45.0, right: 45.0, top: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              autofocus: false,
                              decoration: const InputDecoration(
                                labelText: "Full Name",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
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
                                left: 45.0, right: 45.0, top: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              autofocus: false,
                              decoration: const InputDecoration(
                                labelText: "Email/Phone number",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
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
                                left: 45.0, right: 45.0, top: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              autofocus: false,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
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
                                left: 45.0, right: 45.0, top: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              autofocus: false,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: "Confirm Password",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
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
                                left: 45.0, right: 45.0, top: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.streetAddress,
                              autofocus: false,
                              decoration: const InputDecoration(
                                labelText: "Address",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
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
                                left: 45.0, right: 45.0, top: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              autofocus: false,
                              decoration: const InputDecoration(
                                labelText: "Emergency Contact",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
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
                                left: 45.0, right: 45.0, top: 10),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              autofocus: false,
                              decoration: const InputDecoration(
                                labelText:
                                    "Volunteer Availability(for Volunteers only)",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
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
                            padding: const EdgeInsets.only(left: 32.0, top: 10),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                                const Text(
                                    "I agree to the terms and conditions")
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 45.0),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const RadialGradient(
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
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/otp");
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 140.0, vertical: 15),
                                    child: const Text(
                                      "SignUp",
                                      style: TextStyle(
                                        fontFamily: "Lora",
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 9, 9, 9),
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Center(
                            child: Text(
                              "Or continue with",
                              style: TextStyle(fontFamily: "Lora"),
                            ),
                          ),
                          const SizedBox(height: 1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.g_mobiledata),
                                iconSize: 37,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.facebook),
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
