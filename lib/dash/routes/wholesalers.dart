import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seltzer_revisited/dash/routes/route_names.dart';
import 'package:seltzer_revisited/dash/services/navigation_services.dart';
import '../locator.dart';

class Wholesaler extends StatefulWidget {
  const Wholesaler({Key? key}) : super(key: key);

  @override
  State<Wholesaler> createState() => _WholesalerState();
}

class _WholesalerState extends State<Wholesaler> {
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
                Text(
                  "Wholesalers",
                  style: GoogleFonts.raleway(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 80.0,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.5, color: Color(0xff32DBA2)),
                            bottom: BorderSide(width: 1.5, color: Color(0xff32DBA2)),
                            right: BorderSide(width: 1.5, color: Color(0xff32DBA2)),
                            left: BorderSide(width: 1.5, color: Color(0xff32DBA2)),
                          )
                      ),
                      child: MaterialButton(onPressed: (){}, child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.print, color: Color(0xff32DBA2),),
                          Text("Print",style: GoogleFonts.syne(fontSize: 15.0, fontWeight: FontWeight.normal),)
                        ],
                      ),splashColor: Colors.yellow,),
                    ),
                    const SizedBox(width: 30.0,),
                    InkWell(
                      child: IconButton(icon: const Icon(Icons.account_tree_outlined), onPressed: () {},),
                    )
                  ],
                )
              ],
            ),
            const Divider(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Color(0xffFEEA98), blurRadius: 3.0, blurStyle: BlurStyle.outer)
                      ],
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    width: 250.0,
                    height: 35.0,
                    child: const TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search,),
                        focusColor: Color(0xff32DBA2),
                        contentPadding: EdgeInsets.all(0.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide: BorderSide.none),
                        hintText: "Enter a search term",
                      ),
                    )
                ),
                Container(
                  width: 150.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Color(0xffFEEA98), blurRadius: 3.0, blurStyle: BlurStyle.outer)
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
                ),Container(
                  width: 170.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Color(0xffFEEA98), blurRadius: 3.0, blurStyle: BlurStyle.outer)
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
                          const Icon(Icons.location_on, size: 15.0, color: Color(0xffFEB833),),
                          const SizedBox(width: 5.0,),
                          Text("Location(State)", style: GoogleFonts.syne(fontSize: 15.0, fontWeight: FontWeight.normal))
                        ],
                      ),
                      const Icon(Icons.arrow_drop_down_sharp)
                    ],
                  ),
                ),Container(
                  width: 130.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Color(0xffFEEA98), blurRadius: 3.0, blurStyle: BlurStyle.outer)
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
                          const Icon(Icons.workspaces_outline, size: 15.0, color: Color(0xffFEB833),),
                          const SizedBox(width: 5.0,),
                          Text("Drug Type", style: GoogleFonts.syne(fontSize: 15.0, fontWeight: FontWeight.normal))
                        ],
                      ),
                      const Icon(Icons.arrow_drop_down_sharp)
                    ],
                  ),
                ),
                Container(
                  width: 120.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Color(0xffFEEA98), blurRadius: 3.0, blurStyle: BlurStyle.outer)
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
                          Text("Store", style: GoogleFonts.syne(fontSize: 15.0, fontWeight: FontWeight.normal))
                        ],
                      ),
                      const Icon(Icons.arrow_drop_down_sharp)
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                padding: const EdgeInsets.all(10.0),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Showing 1-10 of 6942 results", style: GoogleFonts.raleway(fontSize: 15.0, color: Colors.black45)),
                    Row(
                      children: [
                        Text("Results per page", style: GoogleFonts.raleway(fontSize: 15.0, color: Colors.black45)),
                        // Icon(onPressed: (){} , icon: const Icon(Icons.arrow_drop_down_sharp), tooltip: "10",)
                        const InkWell(child: Icon(Icons.arrow_drop_down_sharp),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: DataTable(
                  headingRowColor: MaterialStateColor.resolveWith((states) {return const Color(
                      0xffFEB833);},),
                  columnSpacing: MediaQuery.of(context).size.width/10,
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
                        "ID",
                        style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Agency Name",
                        style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Specified",
                        style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Details",
                        style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
                      ),
                    ),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('1', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                        DataCell(Text('as54df', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                        DataCell(Text('CM Breeze', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                        DataCell(Text('Yes', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                        DataCell(ElevatedButton(onPressed: () {locator<NavigationService>().navigateTo(InWRoute);}, child: const Text("SHOW"), style: ElevatedButton.styleFrom(primary: const Color(0xff32DBA2)),))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('2', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                        DataCell(Text('as54df', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                        DataCell(Text('Sie Yeie', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                        DataCell(Text('Yes', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                        DataCell(ElevatedButton(onPressed: () {locator<NavigationService>().navigateTo(InPRRoute);}, child: const Text("SHOW"), style: ElevatedButton.styleFrom(primary: const Color(0xff32DBA2)),))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('3', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                        DataCell(Text('as54df', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                        DataCell(Text('Shake Downs', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                        DataCell(Text('Yes', style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15.0),)),
                        DataCell(ElevatedButton(onPressed: () {locator<NavigationService>().navigateTo(InPRRoute);}, child: const Text("SHOW"), style: ElevatedButton.styleFrom(primary: const Color(0xff32DBA2)),))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
