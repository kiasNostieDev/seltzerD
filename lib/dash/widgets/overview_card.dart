import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OverviewCard extends StatelessWidget {
  final String title, count;
  const OverviewCard({
    Key? key,
    required this.title,
    required this.count
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 210.0,
        decoration: BoxDecoration(
            color: const Color(0xffF5F7FB),
            borderRadius: BorderRadius.circular(15.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(title, style: GoogleFonts.raleway(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black54)),
                  Text(count, style: GoogleFonts.raleway(fontSize: 23.0, fontWeight: FontWeight.bold)),
                ],
              ),
              Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      color: const Color(0xffFEEA98),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: const InkWell(
                      child: Icon(Icons.open_in_full_sharp)
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
