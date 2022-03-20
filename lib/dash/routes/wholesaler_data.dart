import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WholeSalerData extends StatefulWidget {
  const WholeSalerData({Key? key}) : super(key: key);

  @override
  State<WholeSalerData> createState() => _WholeSalerDataState();
}

class _WholeSalerDataState extends State<WholeSalerData> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wholesaler",
                      style: GoogleFonts.raleway(fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "CM Breeze",
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
            const SizedBox(height: 40.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Manufacturer Contacts", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.w800),),
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
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("Prescription Drugs handled", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.w800),),
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
                                Text("Ab650-i", style: GoogleFonts.raleway(fontSize: 17.0, ))
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
                                Text("scna0-9", style: GoogleFonts.raleway(fontSize: 17.0, ))
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
                                Text("d8eie9-0", style: GoogleFonts.raleway(fontSize: 17.0, ))
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
                                Text("Co71n3", style: GoogleFonts.raleway(fontSize: 17.0, ))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0,),
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 40.0,),
            Expanded(child: Row(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DataTable(
                            headingRowColor: MaterialStateColor.resolveWith((states) {return const Color(
                                0xffFEB833);},),
                            columnSpacing: 40.0,
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
                                  "Manu.",
                                  style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  "Drug Name",
                                  style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  "Date",
                                  style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  "Batch",
                                  style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
                                ),
                              ),
                            ],
                            rows: <DataRow>[
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('1', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                  DataCell(Text('23md4ij', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                  DataCell(Text('Caroline LaRue', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                  DataCell(Text('4/23/2', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                  DataCell(Text('2023md4i19', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('1', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                  DataCell(Text('23md4ij', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                  DataCell(Text('Caroline LaRue', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                  DataCell(Text('4/23/2', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                  DataCell(Text('2023md4i19', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('1', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                  DataCell(Text('23md4ij', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                  DataCell(Text('Caroline LaRue', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                  DataCell(Text('4/23/2', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                  DataCell(Text('2023md4i19', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topCenter,
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
                                    "Retailer",
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
            ))
          ],
        ),
      ),
    );
  }
}
