import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorHome extends StatefulWidget {
  const DoctorHome({Key? key}) : super(key: key);

  @override
  State<DoctorHome> createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF5F7FB),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xffFFE379)
              ),
              height: double.infinity,
              width: MediaQuery.of(context).size.width / 2.7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 50.0,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.0,
                                    color: Colors.black12
                                )
                            )
                        ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            width: 150.0,
                            height: 80.0,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                    ),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(const Color(0xffFEB833)),
                                elevation: MaterialStateProperty.all(0.0)
                              ),
                              onPressed: (){},
                              child: Text("Prescribe", style: GoogleFonts.raleway(fontSize: 17.0, color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      )
                    )
                  ],
                )
              ),
            ),
          )
        ],
      )
    );
  }
}
