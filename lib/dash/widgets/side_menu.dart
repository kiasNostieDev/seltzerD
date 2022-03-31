import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seltzer_revisited/dash/routes/route_names.dart';
import 'package:seltzer_revisited/dash/services/navigation_services.dart';
import '../locator.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}): super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int btncount = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70.0,
                  width: double.infinity,
                  child: Image.asset('assets/images/logo.png')
                ),
                Text(
                  "seltzer",
                  style: GoogleFonts.raleway(fontSize: 28.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40.0,),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MenuTile(title: "overview", iconData: Icons.trending_up_sharp, btn: btncount, count: 0, onTap: ()=>{
                      setState((){
                        btncount=0;
                        locator<NavigationService>().navigateTo(ORoute);
                      })
                    },),
                    MenuTile(title: "Doctors", iconData: Icons.local_hospital, btn: btncount, count: 1, onTap: ()=>{
                      setState((){
                        btncount=1;
                        locator<NavigationService>().navigateTo(DRoute);
                      })
                    },),
                    MenuTile(title: "Patients", iconData: Icons.emoji_people, btn: btncount, count: 2, onTap: ()=>{
                      setState((){
                        btncount=2;
                        locator<NavigationService>().navigateTo(PRoute);
                      })
                    },),
                    // MenuTile(title: "Pharmas", iconData: Icons.healing, btn: btncount, count: 3, onTap: ()=>{
                    //   setState((){
                    //     btncount=3;
                    //     locator<NavigationService>().navigateTo(PRRoute);
                    //   })
                    // },),
                    MenuTile(title: "Retailers", iconData: Icons.schedule_send, btn: btncount, count: 6, onTap: ()=>{
                      setState((){
                        btncount=6;
                        locator<NavigationService>().navigateTo(ReRoute);
                      })
                    },),
                    MenuTile(title: "Wholesalers", iconData: Icons.wifi_protected_setup_outlined, btn: btncount, count: 7, onTap: ()=>{
                      setState((){
                        btncount=7;
                        locator<NavigationService>().navigateTo(WRoute);
                      })
                    },),
                    MenuTile(title: "Manufacturers", iconData: Icons.factory, btn: btncount, count: 8, onTap: ()=>{
                      setState((){
                        btncount=8;
                        locator<NavigationService>().navigateTo(MRoute);
                      })
                    },),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              const Divider(height: 30.0, indent: 40.0, endIndent: 40.0,),
              MenuTile(title: "Settings", iconData: Icons.settings, btn: btncount, count: 4, onTap: ()=>{
                setState((){
                  btncount=4;
                  locator<NavigationService>().navigateTo(SRoute);
                })
              },),
              MenuTile(title: "About", iconData: Icons.wb_incandescent_rounded, btn: btncount, count: 5, onTap: ()=>{
                setState((){
                  btncount=5;
                  locator<NavigationService>().navigateTo(ARoute);
                })
              },),
            ],
          )
        ],
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  final String title;
  final IconData iconData;
  final int btn, count;
  final VoidCallback onTap;

  const MenuTile({
    Key? key,
    required this.title,
    required this.iconData,
    required this.btn,
    required this.count,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxDecoration normal = BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: Colors.transparent
    ), active = BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: const Color(0xffFEB833)
    );

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 240.0,
          decoration: count == btn ? active : normal,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              leading: Icon(iconData, color: count == btn ? Colors.white : Colors.black45),
              title: Text(title, style: GoogleFonts.raleway(fontSize: 15.0, fontWeight: FontWeight.bold, color: count == btn ? Colors.white : Colors.black45),),
            ),
          )
        ),
      ),
    );
  }
}


// GoogleFonts.eagleLake()