import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Otpverify extends StatelessWidget {
  const Otpverify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background.png"),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 300.0),
              child: Column(
                children: [
                  const Text(
                    'Verification',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "4-digit code has been sent to your email/phone",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'lora',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  OtpTextField(
                    numberOfFields: 4,
                    fillColor: const Color(0xFFFDFFF5),
                    filled: true,
                    fieldWidth: 50,
                    fieldHeight: 50,
                    borderWidth: 0,
                    borderRadius: BorderRadius.circular(6),
                    margin: const EdgeInsets.all(9),
                    focusedBorderColor: const Color(0xFFFDFFF5),
                    showFieldAsBox: true,
                    keyboardType: TextInputType.number,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Didn't get the code?",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Lora',
                            fontWeight: FontWeight.w300,
                          )),
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(4),
                            minimumSize: Size.zero,
                          ),
                          child: const Text(
                            'Resend it',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
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
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 140.0, vertical: 15),
                          child: const Text(
                            "Verify",
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
