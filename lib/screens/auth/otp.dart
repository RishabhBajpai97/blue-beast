import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pin_put/pin_put.dart';
// import 'package:pinput/pin_put/pin_put.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _pinPutController = TextEditingController();
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Color(0xFFC9C9C9)),
      borderRadius: BorderRadius.circular(20),
    );
  }

  @override
  Widget build(BuildContext context) {
    final otp = ModalRoute.of(context).settings.arguments;
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
                  child: SvgPicture.asset('assets/images/otp_image.svg'),
                  height: 168,
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
                    child: FittedBox(
                      child: Column(
                        children: [
                          Container(
                            height: 55,
                            width: 82,
                            child: Text(
                              "OTP",
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
                            height: 110,
                            width: 360,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 82,
                                  height: 30,
                                  child: Text(
                                    "Enter OTP",
                                    style:
                                        GoogleFonts.nunito(letterSpacing: 0.5),
                                  ),
                                ),
                                Container(
                                  height: 80,
                                  child: PinPut(
                                    controller: _pinPutController,
                                    submittedFieldDecoration: _pinPutDecoration,
                                    selectedFieldDecoration: _pinPutDecoration,
                                    followingFieldDecoration: _pinPutDecoration,
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    fieldsCount: 4,
                                    eachFieldWidth: 60,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: Text(otp),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/dashboard');
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "NEXT",
                                style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.8,
                                ),
                              ),
                              width: 107,
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
                ),
              ],
            ),
          ),
        ));
  }
}
