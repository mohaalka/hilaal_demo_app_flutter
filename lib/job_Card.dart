import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String TimeTable;
  final String jobTitle;
  final String logoImage;
  final String Hrate;

  JobCard({
    required this.companyName,
    required this.jobTitle,
    required this.TimeTable,
    required this.logoImage,
    required this.Hrate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 250,
          padding: EdgeInsets.all(12),
          color: Color.fromARGB(255, 12, 42, 61),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Container(
                      height: 40,
                      child: Image.asset(logoImage),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        TimeTable,
                        style: TextStyle(
                            color: Color.fromARGB(255, 249, 249, 249),
                            fontSize: 15),
                      ),
                      color: Colors.grey[500],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  jobTitle,
                  style: GoogleFonts.tajawal(fontSize: 30, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Expanded(
                child: Text(
                  '\$' + Hrate + '\ hr',
                  style: TextStyle(fontSize: 20, color: Colors.grey[400]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
