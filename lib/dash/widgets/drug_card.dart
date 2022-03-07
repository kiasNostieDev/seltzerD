import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrugCard extends StatelessWidget {
  const DrugCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffF5F7FB),
          borderRadius: BorderRadius.circular(7.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Drug Name", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.w800),),
              Text("1002", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.w700),),
            ],
          ),
        ),
      ),
    );
  }
}