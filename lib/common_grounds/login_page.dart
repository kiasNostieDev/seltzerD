import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seltzer_revisited/dash/dash_home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final id = TextEditingController(), pwd = TextEditingController();

    @override
    void dispose(){
      id.dispose();
      pwd.dispose();
      super.dispose();
    }

    return Scaffold(
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width/2,
            decoration: const BoxDecoration(
              color: Color(0xffFFE379),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(0.0),
                bottomRight: Radius.circular(500.0),
              ),
            ),
            child: Center(
              child: Text(
                "Seltzer",
                style: GoogleFonts.montserratAlternates(fontSize: 40.0, fontWeight: FontWeight.w500, decorationColor: const Color(0xffFEB833), decoration: TextDecoration.underline, decorationThickness: 0.8, ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20.0,),
                  Container(
                    width: 350.0,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: TextField(
                        controller: id,
                        onTap: (){},
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          icon: Icon(Icons.admin_panel_settings_outlined),
                          hintText: 'Admin@1311',
                          helperText: 'Admin ID',
                          fillColor: Colors.red,
                        ),
                      ),
                    )
                  ),
                  const SizedBox(height: 10.0,),
                  Container(
                      width: 350.0,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          controller: pwd,
                          obscureText: true,
                          onTap: (){},
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              icon: Icon(Icons.password),
                              hintText: 'pk895Tck',
                              helperText: 'Password',
                              fillColor: Colors.red
                          ),
                        ),
                      )
                  ),
                  const SizedBox(height: 20.0,),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context){
                            int ok = 0;
                            if(id.text == "Admin@1311" && pwd.text == "pk895Tck")ok = 1;
                            return AlertDialog(
                              content: ok == 1 ? ElevatedButton(onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const DashHome()),
                                );
                              }, child: Text("Go", style: GoogleFonts.montserratAlternates(fontSize: 17.0),)) : Text("Wrong Credentials", style: GoogleFonts.montserratAlternates(fontSize: 17.0),),
                            );
                          }
                      );
                    },
                    child: Text("Enter", style: GoogleFonts.raleway(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                      splashFactory: InkRipple.splashFactory,
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Text("Use the hint for demo purposes", style: GoogleFonts.raleway(fontSize: 13.0),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
