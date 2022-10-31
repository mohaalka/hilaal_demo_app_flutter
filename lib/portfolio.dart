import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImage;
  final String Hrate;

  Portfolio({
    required this.companyName,
    required this.jobTitle,
    required this.logoImage,
    required this.Hrate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 6, 32, 56),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.only(left: 2),
                    height: 40,
                    child: Image.asset(logoImage),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobTitle,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Text(
                      companyName,
                      style: TextStyle(fontSize: 20, color: Colors.grey[400]),
                    )
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                padding: EdgeInsets.all(3),
                color: Colors.green[400],
                child: Text(
                  '\$' + Hrate,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
