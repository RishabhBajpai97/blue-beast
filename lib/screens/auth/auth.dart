import 'package:blue_beast/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  void _verifyNumber(BuildContext context) {
    if (_formkey.currentState.validate()) {
      otp = "1234";
      Navigator.of(context).pushReplacementNamed(
        '/otp-screen',
        arguments: otp,
      );
    }
    setState(() {
      _tovalidate = true;
    });
  }

  var otp = "";
  var _phoneController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  var _tovalidate = false;

  @override
  build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: SvgPicture.asset('assets/images/auth_image.svg'),
                  height: 12.17 * SizeConfig.heightMultiplier,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        border: Border.all(width: 1, color: Color(0xFFC9C9C9))),
                    alignment: Alignment.center,
                    height: 340,
                    width: 600,
                    child: Column(
                      children: [
                        Container(
                          height: 55,
                          width: 120,
                          margin: EdgeInsets.only(
                            top: 35,
                          ),
                          child: Text(
                            "Login",
                            style: GoogleFonts.nunito(
                              color: Colors.blue,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 90,
                          width: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Registered mobile no.",
                                  style: GoogleFonts.nunito(letterSpacing: 0.5),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Form(
                                  key: _formkey,
                                  autovalidate: _tovalidate,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Empty Number";
                                      } else if (value.length < 10 ||
                                          value.contains('a')) {
                                        return "Inavlid Input";
                                      }
                                      return null;
                                    },
                                    keyboardAppearance: Brightness.dark,
                                    controller: _phoneController,
                                    textInputAction: TextInputAction.done,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 30),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            _verifyNumber(context);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "GET OTP",
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.8,
                              ),
                            ),
                            width: 134,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Color(0xFF007FFF),
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
