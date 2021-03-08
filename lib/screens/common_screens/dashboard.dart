import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "Dashboard",
            style: GoogleFonts.nunito(
                letterSpacing: 0.5, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 10, bottom: 10),
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/placeholder.jpg'),
                      fit: BoxFit.contain),
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(
                    width: 3,
                    color: Color(0xFF05CF97),
                  ),
                ),
              )),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        margin: EdgeInsets.only(top: 30, left: 30, right: 30),
        height: 708,
        width: 691,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Color(
                0xFFC9C9C9,
              ),
              width: 1),
        ),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 19.0,
                        offset: Offset(0, 4),
                        color: Colors.black12)
                  ],
                  color: Color(0xFFAD00FF),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 53.33,
                    height: 60,
                    child: Image.asset('assets/images/grid_placeholder.png'),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Teacher Profile",
                      style: GoogleFonts.nunito(
                          letterSpacing: 0.5,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))
                ],
              ),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 19.0,
                        offset: Offset(0, 4),
                        color: Colors.black12)
                  ],
                  color: Color(0xFFFC9C00),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 53.33,
                    height: 60,
                    child: Image.asset('assets/images/grid_placeholder.png'),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Attendance",
                    style: GoogleFonts.nunito(
                      letterSpacing: 0.5,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 19.0,
                      offset: Offset(0, 4),
                      color: Colors.black12,
                    )
                  ],
                  color: Color(0xFF4ECDC4),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 53.33,
                    height: 60,
                    child: Image.asset('assets/images/grid_placeholder.png'),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Teacher Profile",
                    style: GoogleFonts.nunito(
                      letterSpacing: 0.5,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
