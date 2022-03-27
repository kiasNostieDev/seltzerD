import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientData extends StatefulWidget {
  const PatientData({Key? key}) : super(key: key);

  @override
  State<PatientData> createState() => _PatientDataState();
}

class _PatientDataState extends State<PatientData> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: double.infinity,
              width: 350.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(radius: 30.0, child: Icon(Icons.person_add_alt_1, color: Colors.black,), backgroundColor: Color(0xffFEB833),),
                  Text("Augustine", style: GoogleFonts.raleway(fontSize: 25.0,),)
                ],
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("ID: ", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold),),
                                Text("id99kd", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.black45),),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 150.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(color: Color(0xffd2cbb7), blurRadius: 3.0, blurStyle: BlurStyle.outer)
                                    ],
                                    borderRadius: BorderRadius.circular(3.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(width: 5.0,),
                                          const Icon(Icons.calendar_today_sharp, size: 15.0, color: Color(0xffFEB833),),
                                          const SizedBox(width: 5.0,),
                                          Text("Date Range", style: GoogleFonts.syne(fontSize: 15.0, fontWeight: FontWeight.normal))
                                        ],
                                      ),
                                      const Icon(Icons.arrow_drop_down_sharp)
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 30.0,),
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(color: Color(0xffd2cbb7), blurRadius: 3.0, blurStyle: BlurStyle.outer)
                                      ],
                                      borderRadius: BorderRadius.circular(3.0),
                                    ),
                                    width: 130.0,
                                    height: 30.0,
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          icon: Icon(Icons.search, size: 15.0,),
                                          focusColor: Color(0xff32DBA2),
                                          contentPadding: EdgeInsets.all(0.0),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(7)),
                                              borderSide: BorderSide.none),
                                          hintText: "Enter a search term",
                                          hintStyle: TextStyle(fontSize: 13.0)
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(height: 30.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("Phone: ", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold),),
                                Text("4804423892", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.black45),),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Aadhar: ", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold),),
                                Text("-", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.black45),),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          children: [
                            Text("Address: ", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold),),
                            Text("AJR Organisation", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.black45),),
                          ],
                        ),
                        const Divider(height: 30.0,),
                        Container(alignment: Alignment.centerLeft, child: Text("Prescriptions", style: GoogleFonts.raleway(fontSize: 20.0, fontWeight: FontWeight.bold),)),
                        const SizedBox(height: 20.0,),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 150.0,
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffFEEA98),
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: const [
                                        BoxShadow(color: Color(0xffd2cbb7), blurRadius: 3.0, blurStyle: BlurStyle.outer)
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Text("From Doctor: ", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold),),
                                                  Text("Joseph Joestar", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.black45),),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("Date: ", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold),),
                                                  Text("30/2/2022", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.black45),),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 5.0),
                                          Row(
                                            children: [
                                              Text("No of Drugs: ", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold),),
                                              Text("2", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.black45),),
                                            ],
                                          ),
                                          const SizedBox(height: 5.0),
                                          Row(
                                            children: [
                                              Text("Expiry: ", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold),),
                                              Text("30/3/2022", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.black45),),
                                            ],
                                          ),
                                          Container(
                                            width: double.infinity,
                                            alignment: Alignment.bottomRight,
                                            child: IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_forward), iconSize: 20.0, color: const Color(0xffFEB833), splashColor: Colors.yellow,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
