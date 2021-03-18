import 'package:blue_beast/screens/profiles/widgets/pie_chart_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TeacherProfile extends StatefulWidget {
  @override
  _TeacherProfileState createState() => _TeacherProfileState();
}

class _TeacherProfileState extends State<TeacherProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: Image.asset('assets/images/back_button.png'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/home-icon.png'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/dashboard');
              },
            ),
            Text('/'),
            SizedBox(
              width: 10,
            ),
            Text(
              "Profile",
              style: GoogleFonts.nunito(
                fontSize: 21,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              top: 10,
              bottom: 10,
            ),
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
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          //Black header container
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            width: double.infinity,
            height: 198,
            decoration: BoxDecoration(
              color: Color(0xFF162030),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Image
                Container(
                  width: 158,
                  height: 158,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/placeholder.jpg',
                      ),
                    ),
                  ),
                ),
                //Name and details
                Container(
                  padding: EdgeInsets.only(left: 20),
                  width: 260,
                  height: 142,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mr. Mayank Mathur",
                        style: GoogleFonts.nunito(
                            fontSize: 25, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Teacher ID",
                                      style: GoogleFonts.nunito(
                                          fontSize: 15,
                                          letterSpacing: 0.25,
                                          color: Color(0xFF828282)),
                                    ),
                                    Text(
                                      "Soft1001",
                                      style: GoogleFonts.nunito(
                                          fontSize: 16,
                                          letterSpacing: 0.5,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Designation",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.nunito(
                                          fontSize: 15,
                                          letterSpacing: 0.25,
                                          color: Color(0xFF828282)),
                                    ),
                                    Text(
                                      "Vice Principal",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.nunito(
                                          fontSize: 16,
                                          letterSpacing: 0.5,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Status",
                                    style: GoogleFonts.nunito(
                                        fontSize: 15,
                                        letterSpacing: 0.25,
                                        color: Color(0xFF828282)),
                                  ),
                                  Text(
                                    "6A",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      letterSpacing: 0.5,
                                      color: Color(
                                        0xFF05CF97,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Class teacher",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.nunito(
                                        fontSize: 15,
                                        letterSpacing: 0.25,
                                        color: Color(0xFF828282)),
                                  ),
                                  Text(
                                    "VII, VIII, IX",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        letterSpacing: 0.5,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 52,
                    width: 127,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.edit, size: 16, color: Colors.white),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "EDIT",
                          style: GoogleFonts.nunito(
                              fontSize: 15,
                              letterSpacing: 1.25,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          DefaultTabController(
            length: 5,
            initialIndex: 0,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  height: 44,
                  child: TabBar(
                    labelColor: Color(0xFF007FFF),
                    unselectedLabelColor: Color(0xFF162030),
                    tabs: [
                      Text(
                        "MATHS",
                        style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.25,
                        ),
                      ),
                      Text(
                        "ENGLISH",
                        style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.25,
                        ),
                      ),
                      Text(
                        "HINDI",
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.25),
                      ),
                      Text(
                        "SCIENCE",
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.25),
                      ),
                      Text(
                        "LAB",
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.25),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 880,
                  width: 768,
                  child: TabBarView(
                    children: [
                      //Mathematics Tab
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "I-A",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "I-B",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-B",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-C",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: Color(
                                            0xFFC9C9C9,
                                          ),
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-D",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            DefaultTabController(
                              length: 3,
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 30, right: 80),
                                    width: double.infinity,
                                    height: 44,
                                    child: TabBar(
                                      labelColor: Color(0xFF007FFF),
                                      unselectedLabelColor: Color(0xFF162030),
                                      indicatorSize: TabBarIndicatorSize.label,
                                      tabs: [
                                        Text(
                                          "ATTENDANCE",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        ),
                                        Text(
                                          "TIMETABLE",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        ),
                                        Text(
                                          "STAFF",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 720,
                                    child: TabBarView(
                                      children: [
                                        //Attendance Tab
                                        Column(
                                          children: [
                                            SizedBox(
                                              width: double.infinity,
                                              height: 40.0,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFC9C9C9),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    height: 338,
                                                    width: 180,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                            width: 140,
                                                            height: 140,
                                                            child:
                                                                PieChartPage()),
                                                        Text(
                                                          "Attendance",
                                                          style: GoogleFonts
                                                              .nunito(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 101,
                                                          width: 84,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    height: 16,
                                                                    width: 16,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Color(
                                                                          0xFF05CF97),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 8,
                                                                  ),
                                                                  Text(
                                                                    "Present",
                                                                    style: GoogleFonts.nunito(
                                                                        fontSize:
                                                                            17,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            0.15),
                                                                  )
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    height: 16,
                                                                    width: 16,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Color(
                                                                          0xFFF90000),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 9,
                                                                  ),
                                                                  Text(
                                                                    "Absent",
                                                                    style: GoogleFonts.nunito(
                                                                        fontSize:
                                                                            17,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            0.15),
                                                                  )
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    height: 16,
                                                                    width: 16,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Color(
                                                                          0xFFF4BA00),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 9,
                                                                  ),
                                                                  Text(
                                                                    "Leave",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: GoogleFonts
                                                                        .nunito(
                                                                      fontSize:
                                                                          17,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      letterSpacing:
                                                                          0.15,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 50,
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      width: 188,
                                                      height: 54,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color:
                                                            Color(0xFFE7F3FF),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Image.asset(
                                                            'assets/images/calendar.png',
                                                            height: 16,
                                                            width: 16,
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            "${DateFormat('d MMM, ' 'yyyy').format(DateTime.now()).toString()}",
                                                            style: GoogleFonts
                                                                .nunito(
                                                              color: Color(
                                                                  0xFF007FFF),
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        //Time Table Tab
                                        Center(
                                          child: Text("Timetable"),
                                        ),
                                        //Staff Tab
                                        Padding(
                                          padding: const EdgeInsets.all(30.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  //TextField
                                                  Container(
                                                    height: 38,
                                                    width: 320,
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: "Search",
                                                        contentPadding:
                                                            EdgeInsets.all(
                                                          10.0,
                                                        ),
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        prefixIcon: Image.asset(
                                                          'assets/images/search_icon.png',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  //FilterButton
                                                  Container(
                                                    height: 36,
                                                    width: 125.33,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Color(
                                                                0xFF007FFF),
                                                            width: 1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/filter.png',
                                                          color:
                                                              Color(0xFF007FFF),
                                                          width: 13.33,
                                                          height: 12,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          "FILTER",
                                                          style: GoogleFonts
                                                              .nunito(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Color(
                                                                0xFF007FFF),
                                                            letterSpacing: 1.25,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              //DataTable
                                              Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 560,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 20),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("Name"),
                                                          Text("Subject"),
                                                          Text("Class"),
                                                          Text("Status"),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 800,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Color(
                                                              0xFFDCFFDB)),
                                                      margin: EdgeInsets.only(
                                                          top: 20),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 20,
                                                              horizontal: 35),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    shape: BoxShape
                                                                        .circle),
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                "Anna",
                                                                style: GoogleFonts.nunito(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 118,
                                                            child: Stack(
                                                              children: [
                                                                CircleAvatar(
                                                                  child: Text(
                                                                    "H",
                                                                    style: GoogleFonts
                                                                        .nunito(
                                                                            color:
                                                                                Colors.white),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 24,
                                                                  child:
                                                                      CircleAvatar(
                                                                    child: Text(
                                                                      "H",
                                                                      style: GoogleFonts.nunito(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 55,
                                                                  child:
                                                                      CircleAvatar(
                                                                    child: Text(
                                                                      "H",
                                                                      style: GoogleFonts.nunito(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .center,
                                                            width: 63,
                                                            child: Text(
                                                              "V, VI, VII",
                                                              style: GoogleFonts.nunito(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/smartphone.png',
                                                                color: Color(
                                                                    0xFF05CF97),
                                                                height: 12,
                                                                width: 9.6,
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                "6A",
                                                                style:
                                                                    GoogleFonts
                                                                        .nunito(
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.5,
                                                                  color: Color(
                                                                    0xFF05CF97,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 800,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Color(
                                                              0xFFDCFFDB)),
                                                      margin: EdgeInsets.only(
                                                          top: 20),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 20,
                                                              horizontal: 35),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    shape: BoxShape
                                                                        .circle),
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                "Anna",
                                                                style: GoogleFonts.nunito(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 118,
                                                            child: Stack(
                                                              children: [
                                                                CircleAvatar(
                                                                  child: Text(
                                                                    "H",
                                                                    style: GoogleFonts
                                                                        .nunito(
                                                                            color:
                                                                                Colors.white),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 24,
                                                                  child:
                                                                      CircleAvatar(
                                                                    child: Text(
                                                                      "H",
                                                                      style: GoogleFonts.nunito(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 55,
                                                                  child:
                                                                      CircleAvatar(
                                                                    child: Text(
                                                                      "H",
                                                                      style: GoogleFonts.nunito(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .center,
                                                            width: 63,
                                                            child: Text(
                                                              "V, VI, VII",
                                                              style: GoogleFonts.nunito(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/smartphone.png',
                                                                color: Color(
                                                                    0xFF05CF97),
                                                                height: 12,
                                                                width: 9.6,
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                "6A",
                                                                style:
                                                                    GoogleFonts
                                                                        .nunito(
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.5,
                                                                  color: Color(
                                                                    0xFF05CF97,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 800,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Color(
                                                              0xFFFFDCDC)),
                                                      margin: EdgeInsets.only(
                                                          top: 20),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 20,
                                                              horizontal: 35),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    shape: BoxShape
                                                                        .circle),
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                "Anna",
                                                                style: GoogleFonts.nunito(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 118,
                                                            child: Stack(
                                                              children: [
                                                                CircleAvatar(
                                                                  child: Text(
                                                                    "H",
                                                                    style: GoogleFonts
                                                                        .nunito(
                                                                            color:
                                                                                Colors.white),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 24,
                                                                  child:
                                                                      CircleAvatar(
                                                                    child: Text(
                                                                      "H",
                                                                      style: GoogleFonts.nunito(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 55,
                                                                  child:
                                                                      CircleAvatar(
                                                                    child: Text(
                                                                      "H",
                                                                      style: GoogleFonts.nunito(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .center,
                                                            width: 63,
                                                            child: Text(
                                                              "V, VI, VII",
                                                              style: GoogleFonts.nunito(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/absent.png',
                                                                color: Color(
                                                                    0xFFF90000),
                                                                height: 12,
                                                                width: 13.33,
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                "Absent",
                                                                style:
                                                                    GoogleFonts
                                                                        .nunito(
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.5,
                                                                  color: Color(
                                                                    0xFFF90000,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 800,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Color(
                                                              0xFFFFDCDC)),
                                                      margin: EdgeInsets.only(
                                                          top: 20),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 20,
                                                              horizontal: 35),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    shape: BoxShape
                                                                        .circle),
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                "Anna",
                                                                style: GoogleFonts.nunito(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 118,
                                                            child: Stack(
                                                              children: [
                                                                CircleAvatar(
                                                                  child: Text(
                                                                    "H",
                                                                    style: GoogleFonts
                                                                        .nunito(
                                                                            color:
                                                                                Colors.white),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 24,
                                                                  child:
                                                                      CircleAvatar(
                                                                    child: Text(
                                                                      "H",
                                                                      style: GoogleFonts.nunito(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 55,
                                                                  child:
                                                                      CircleAvatar(
                                                                    child: Text(
                                                                      "H",
                                                                      style: GoogleFonts.nunito(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .center,
                                                            width: 63,
                                                            child: Text(
                                                              "V, VI, VII",
                                                              style: GoogleFonts.nunito(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/absent.png',
                                                                color: Color(
                                                                    0xFFF90000),
                                                                height: 12,
                                                                width: 13.33,
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                "Absent",
                                                                style:
                                                                    GoogleFonts
                                                                        .nunito(
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.5,
                                                                  color: Color(
                                                                    0xFFF90000,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 800,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Color(
                                                              0xFFFFDCDC)),
                                                      margin: EdgeInsets.only(
                                                          top: 20),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 20,
                                                              horizontal: 35),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .blue,
                                                                    shape: BoxShape
                                                                        .circle),
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                "Anna",
                                                                style: GoogleFonts.nunito(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 118,
                                                            child: Stack(
                                                              children: [
                                                                CircleAvatar(
                                                                  child: Text(
                                                                    "H",
                                                                    style: GoogleFonts
                                                                        .nunito(
                                                                            color:
                                                                                Colors.white),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 24,
                                                                  child:
                                                                      CircleAvatar(
                                                                    child: Text(
                                                                      "H",
                                                                      style: GoogleFonts.nunito(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 55,
                                                                  child:
                                                                      CircleAvatar(
                                                                    child: Text(
                                                                      "H",
                                                                      style: GoogleFonts.nunito(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .center,
                                                            width: 63,
                                                            child: Text(
                                                              "V, VI, VII",
                                                              style: GoogleFonts.nunito(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/absent.png',
                                                                color: Color(
                                                                    0xFFF90000),
                                                                height: 12,
                                                                width: 13.33,
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                "Absent",
                                                                style:
                                                                    GoogleFonts
                                                                        .nunito(
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.5,
                                                                  color: Color(
                                                                    0xFFF90000,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              initialIndex: 0,
                            ),
                          ],
                        ),
                      ),
                      //English Tab
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "I-A",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "I-B",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-B",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-C",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: Color(
                                            0xFFC9C9C9,
                                          ),
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-D",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            DefaultTabController(
                              length: 3,
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 30, right: 80),
                                    width: double.infinity,
                                    height: 44,
                                    child: TabBar(
                                      labelColor: Color(0xFF007FFF),
                                      unselectedLabelColor: Color(0xFF162030),
                                      indicatorSize: TabBarIndicatorSize.label,
                                      tabs: [
                                        Text(
                                          "ATTENDANCE",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        ),
                                        Text(
                                          "TIMETABLE",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        ),
                                        Text(
                                          "STAFF",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 500,
                                    child: TabBarView(
                                      children: [
                                        Center(
                                          child: Text("Attendance"),
                                        ),
                                        Center(
                                          child: Text("Timetable"),
                                        ),
                                        //Staff Tab
                                        Center(
                                          child: Text("Staff"),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              initialIndex: 0,
                            ),
                          ],
                        ),
                      ),
                      //Hindi Tab
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "I-A",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "I-B",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-B",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-C",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: Color(
                                            0xFFC9C9C9,
                                          ),
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-D",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            DefaultTabController(
                              length: 3,
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 30, right: 80),
                                    width: double.infinity,
                                    height: 44,
                                    child: TabBar(
                                      labelColor: Color(0xFF007FFF),
                                      unselectedLabelColor: Color(0xFF162030),
                                      indicatorSize: TabBarIndicatorSize.label,
                                      tabs: [
                                        Text(
                                          "ATTENDANCE",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        ),
                                        Text(
                                          "TIMETABLE",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        ),
                                        Text(
                                          "STAFF",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 500,
                                    child: TabBarView(
                                      children: [
                                        Center(
                                          child: Text("Attendance"),
                                        ),
                                        Center(
                                          child: Text("Timetable"),
                                        ),
                                        Center(
                                          child: Text("Staff"),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              initialIndex: 0,
                            ),
                          ],
                        ),
                      ),
                      //Science Tab
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "I-A",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "I-B",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-B",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-C",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: Color(
                                            0xFFC9C9C9,
                                          ),
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-D",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            DefaultTabController(
                              length: 3,
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 30, right: 80),
                                    width: double.infinity,
                                    height: 44,
                                    child: TabBar(
                                      labelColor: Color(0xFF007FFF),
                                      unselectedLabelColor: Color(0xFF162030),
                                      indicatorSize: TabBarIndicatorSize.label,
                                      tabs: [
                                        Text(
                                          "ATTENDANCE",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        ),
                                        Text(
                                          "TIMETABLE",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        ),
                                        Text(
                                          "STAFF",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 500,
                                    child: TabBarView(
                                      children: [
                                        Center(
                                          child: Text("Attendance"),
                                        ),
                                        Center(
                                          child: Text("Timetable"),
                                        ),
                                        Center(
                                          child: Text("Staff"),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              initialIndex: 0,
                            ),
                          ],
                        ),
                      ),
                      //Lab Tab
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "I-A",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "I-B",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-B",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFFC9C9C9)),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-C",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 88,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: Color(
                                            0xFFC9C9C9,
                                          ),
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Text(
                                        "II-D",
                                        style: GoogleFonts.nunito(
                                          letterSpacing: 1.25,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            DefaultTabController(
                              length: 3,
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 30, right: 80),
                                    width: double.infinity,
                                    height: 44,
                                    child: TabBar(
                                      labelColor: Color(0xFF007FFF),
                                      unselectedLabelColor: Color(0xFF162030),
                                      indicatorSize: TabBarIndicatorSize.label,
                                      tabs: [
                                        Text(
                                          "ATTENDANCE",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        ),
                                        Text(
                                          "TIMETABLE",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        ),
                                        Text(
                                          "STAFF",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.25),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 500,
                                    child: TabBarView(
                                      children: [
                                        Center(
                                          child: Text("Attendance"),
                                        ),
                                        Center(
                                          child: Text("Timetable"),
                                        ),
                                        Center(
                                          child: Text("Staff"),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              initialIndex: 0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
