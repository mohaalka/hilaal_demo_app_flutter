import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'job_Card.dart';
import 'portfolio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 2;
  final List jobService = [
    ['Website', 'Full Time', 'Web Dev', 'images/web.jpg', 250],
    ['Website', 'Part Time', 'Logo Desgin', 'images/logo.jpg', 100],
    ['Website', '24/7', 'Motion Graphic', 'images/motion.jpg', 400],
  ];
  final List jobPortifolio = [
    ['hilaal', 'Software Eng', 'images/hilaal4.jpeg', 150],
    ['Kaafiye', 'Logo Desgin', 'images/kafiye1.jpeg', 90],
    ['Naruura', 'Motion Graphic', 'images/hilaal3.png', 40],
  ];
  final items = <Widget>[
    Icon(
      Icons.home,
      color: Colors.black,
      size: 25,
    ),
    Icon(
      Icons.favorite,
      color: Colors.black,
      size: 25,
    ),
    Icon(
      Icons.view_agenda,
      color: Colors.black,
      size: 25,
    ),
    Icon(
      Icons.exit_to_app,
      color: Colors.black,
      size: 25,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 27, 54),
        centerTitle: true,
        elevation: 10,
        title: Text(
          "Hilaal Technology",
          style: GoogleFonts.gaegu(fontSize: 40),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Color.fromARGB(255, 3, 232, 48),
        backgroundColor: Color.fromARGB(0, 2, 29, 95),
        color: Color.fromARGB(255, 1, 26, 63),
        height: 60,
        index: index,
        items: items,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 74, 121, 175),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green.shade400),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200]),
                  child: Image.asset("images/hilaal3.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey)),
                    child: Icon(
                      Icons.person,
                      size: 45,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "HILAAL TECHNOLOGY",
              style: GoogleFonts.bebasNeue(
                  fontSize: 35, color: Color.fromARGB(255, 219, 219, 219)),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 6, 34, 50),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 30,
                          child: Image.asset(
                            "images/search.png",
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search For course',
                                hintStyle: TextStyle(color: Colors.grey[500])),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 6, 34, 50),
                      borderRadius: BorderRadius.circular(12)),
                  height: 50,
                  child: Image.asset(
                    "images/preferences.png",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "Service",
              style: GoogleFonts.bebasNeue(
                  fontSize: 25, color: Color.fromARGB(255, 225, 225, 225)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                  companyName: jobService[index][0],
                  TimeTable: jobService[index][1],
                  jobTitle: jobService[index][2],
                  logoImage: jobService[index][3],
                  Hrate: jobService[index][4].toString(),
                );
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "Portfolio",
              style: GoogleFonts.bebasNeue(
                  fontSize: 25, color: Color.fromARGB(255, 217, 217, 217)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                itemCount: jobPortifolio.length,
                itemBuilder: (context, index) {
                  return Portfolio(
                    companyName: jobPortifolio[index][0],
                    jobTitle: jobPortifolio[index][1],
                    logoImage: jobPortifolio[index][2],
                    Hrate: jobPortifolio[index][3].toString(),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
