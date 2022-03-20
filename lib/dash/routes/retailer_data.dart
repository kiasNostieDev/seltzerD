import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seltzer_revisited/dash/services/map.dart';
import 'package:seltzer_revisited/main.dart';

class RetailerData extends StatefulWidget {
  const RetailerData({Key? key}) : super(key: key);

  @override
  State<RetailerData> createState() => _RetailerDataState();
}

class _RetailerDataState extends State<RetailerData> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Retailer",
                        style: GoogleFonts.raleway(fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Imelda",
                        style: GoogleFonts.raleway(fontSize: 15.0, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_history),
                      const SizedBox(width: 10.0,),
                      Text(
                        "Madurai",
                        style: GoogleFonts.raleway(fontSize: 20.0, fontWeight: FontWeight.w800, color: const Color(0xff32DBA2)),)
                    ],
                  )
                ],
              ),
              const SizedBox(height: 50.0,),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        child: Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                UnderPharma(),
                                SizedBox(height: 20.0,),
                                UnderPharma(),
                                SizedBox(height: 20.0,),
                                UnderPharma(),
                                SizedBox(height: 20.0,),
                                UnderPharma(),
                                SizedBox(height: 20.0,),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: MyMap(),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UnderPharma extends StatelessWidget {
  const UnderPharma({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xffFEEA98)
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "AIB Pharma",
                  style: GoogleFonts.raleway(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20.0),
                ),
                Text(
                  "32, kk Lane",
                  style: GoogleFonts.raleway(fontWeight: FontWeight.w300, color: Colors.black, fontSize: 20.0),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.location_on, color: Color(0xffFEB833),)),
                ElevatedButton(onPressed: () {}, child: const Text("Transactions"), style: ElevatedButton.styleFrom(primary: const Color(0xff32DBA2)),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
