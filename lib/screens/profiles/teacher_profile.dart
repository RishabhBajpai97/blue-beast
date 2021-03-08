import 'package:flutter/material.dart';

class TeacherProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
    );
  }
}
