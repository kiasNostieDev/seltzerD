import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PharmaData extends StatefulWidget {
  const PharmaData({Key? key}) : super(key: key);

  @override
  State<PharmaData> createState() => _PharmaDataState();
}

class _PharmaDataState extends State<PharmaData> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
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
            const SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Address: ", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold),),
                    Text("39 Molly Road, CrK", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.black45),),
                  ],
                ),
                Row(
                  children: [
                    Text("Contact: ", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold),),
                    Text("89348042322", style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.black45),),
                  ],
                ),
              ],
            ),
            const Divider(height: 30.0,),
            Expanded(child: Row(
              children: [
                Container(
                  width: 540.0,
                  alignment: Alignment.topCenter,
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Customer Transactions",style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold),),
                          ),
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
                                  "To ID",
                                  style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  "Drug Count",
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
                                  "From ID",
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
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("WholeSale Transactions",style: GoogleFonts.raleway(fontSize: 17.0, fontWeight: FontWeight.bold),),
                            ),
                            DataTable(
                              headingRowColor: MaterialStateColor.resolveWith((states) {return const Color(
                                  0xffFEB833);},),
                              columnSpacing: 30.0,
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
                                    "WID",
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
