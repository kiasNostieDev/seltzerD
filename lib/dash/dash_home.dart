import 'package:flutter/material.dart';
import 'package:seltzer_revisited/dash/locator.dart';
import 'package:seltzer_revisited/dash/routes/route_names.dart';
import 'package:seltzer_revisited/dash/routes/router.dart';
import 'package:seltzer_revisited/dash/services/navigation_services.dart';
import 'package:seltzer_revisited/dash/widgets/side_menu.dart';

class DashHome extends StatefulWidget {
  const DashHome({Key? key}) : super(key: key);

  @override
  State<DashHome> createState() => _DashHomeState();
}

class _DashHomeState extends State<DashHome> {
  int page=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),
      body: Row(
        children: [
          Container(
            height: double.infinity,
            width: 280.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(50.0), bottomRight: Radius.circular(50.0)),
              color: Color(0xffFFE379)
            ),
            child: const SideMenu(),
          ),
          Expanded(child: Navigator(
            key: locator<NavigationService>().navigatorKey,
            onGenerateRoute: generateRoute,
            initialRoute: ORoute
          ))
        ],
      ),
    );
  }
}