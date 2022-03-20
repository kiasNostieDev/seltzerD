import 'package:flutter/material.dart';
import 'package:seltzer_revisited/dash/routes/about.dart';
import 'package:seltzer_revisited/dash/routes/doctor_data.dart';
import 'package:seltzer_revisited/dash/routes/doctors.dart';
import 'package:seltzer_revisited/dash/routes/manu.dart';
import 'package:seltzer_revisited/dash/routes/manu_data.dart';
import 'package:seltzer_revisited/dash/routes/overview.dart';
import 'package:seltzer_revisited/dash/routes/patient.dart';
import 'package:seltzer_revisited/dash/routes/patient_data.dart';
import 'package:seltzer_revisited/dash/routes/pharma.dart';
import 'package:seltzer_revisited/dash/routes/pharma_data.dart';
import 'package:seltzer_revisited/dash/routes/retailer_data.dart';
import 'package:seltzer_revisited/dash/routes/retailers.dart';
import 'package:seltzer_revisited/dash/routes/route_names.dart';
import 'package:seltzer_revisited/dash/routes/settings.dart';
import 'package:seltzer_revisited/dash/routes/wholesaler_data.dart';
import 'package:seltzer_revisited/dash/routes/wholesalers.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case ORoute:
      return _getPageRoute(OverView());
    case DRoute:
      return _getPageRoute(Doctors());
    case PRoute:
      return _getPageRoute(Patient());
    case PRRoute:
      return _getPageRoute(Pharma());
    case ReRoute:
      return _getPageRoute(Retailers());
    case WRoute:
      return _getPageRoute(Wholesaler());
    case MRoute:
      return _getPageRoute(Manufacturer());
    case SRoute:
      return _getPageRoute(Settings());
    case ARoute:
      return _getPageRoute(About());
    case InDRoute:
      return _getPageRoute(DoctorData());
    case InPRoute:
      return _getPageRoute(PatientData());
    case InPRRoute:
      return _getPageRoute(PharmaData());
    case InWRoute:
      return _getPageRoute(WholeSalerData());
    case InMRoute:
      return _getPageRoute(ManuData());
    case InReRoute:
      return _getPageRoute(RetailerData());
    default:
      return _getPageRoute(OverView());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context)=>child);
}