import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seltzer_revisited/dash/services/map.dart';

class ManuData extends StatefulWidget {
  const ManuData({Key? key}) : super(key: key);

  @override
  State<ManuData> createState() => _ManuDataState();
}

class _ManuDataState extends State<ManuData> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
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
                      "Manufacturer",
                      style: GoogleFonts.raleway(fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Sim City",
                      style: GoogleFonts.raleway(fontSize: 15.0, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.location_history),
                    const SizedBox(width: 10.0,),
                    Text(
                      "TamilNadu",
                      style: GoogleFonts.raleway(fontSize: 20.0, fontWeight: FontWeight.w800, color: const Color(0xff32DBA2)),)
                  ],
                )
              ],
            ),
            const SizedBox(height: 40.0,),
            Expanded(
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width/2.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Factory Locations", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.w800),),
                        const SizedBox(height: 20.0,),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffFEEA98),
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Sin City", style: GoogleFonts.raleway(fontSize: 17.0, ))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0,),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffFEEA98),
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Josuia", style: GoogleFonts.raleway(fontSize: 17.0, ))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0,),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffFEEA98),
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Peel ey", style: GoogleFonts.raleway(fontSize: 17.0, ))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0,),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffFEEA98),
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Pfiy", style: GoogleFonts.raleway(fontSize: 17.0, ))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0,),
                          ],
                        ),
                        const SizedBox(height: 40.0,),
                        Expanded(
                          child: Container(
                            child: Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    DataTable(
                                      headingRowColor: MaterialStateColor.resolveWith((states) {return const Color(
                                          0xffFEB833);},),
                                      columnSpacing: 50.0,
                                      dataRowHeight: 80.0,
                                      columns: <DataColumn>[
                                        DataColumn(
                                          label: Text(
                                            "S.No",
                                            style: GoogleFonts.raleway(fontWeight: FontWeight.w700, fontSize: 15.0, color: Colors.white),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            "Wholesaler",
                                            style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            "Batch",
                                            style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            "Drug Name",
                                            style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
                                          ),
                                        ),
                                      ],
                                      rows: <DataRow>[
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('1', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                            DataCell(Text('23md4ij', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                            DataCell(Text('65B', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                            DataCell(Text('AD7 tabs', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('1', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                            DataCell(Text('23md4ij', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                            DataCell(Text('65B', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                            DataCell(Text('AD7 tabs', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: MyMap(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
