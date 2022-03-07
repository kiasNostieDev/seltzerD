import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBar extends StatefulWidget {
  const DashBar({Key? key}) : super(key: key);

  @override
  State<DashBar> createState() => _DashBarState();
}

class _DashBarState extends State<DashBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                "Overview",
                style: GoogleFonts.raleway(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                gradient: const LinearGradient(
                  colors: [Color(0xffF5F7FB), Color(0xffFFE379)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 300.0,
                    height: 40.0,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      style: GoogleFonts.raleway(fontSize: 15.0),
                      decoration: const InputDecoration(
                        filled: true,
                        icon: Icon(Icons.search,),
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide: BorderSide.none),
                        hintText: "Enter a search term",
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 0, 0, 0),
                    child: InkWell(
                      child: Icon(Icons.account_tree_outlined, size: 30.0, color: Colors.black54,),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 0, 0, 0),
                    child: InkWell(
                      child: Icon(Icons.replay, size: 30.0, color: Colors.black54,),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
