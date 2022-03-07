import 'package:get_it/get_it.dart';
import 'package:seltzer_revisited/dash/services/navigation_services.dart';

GetIt locator = GetIt.instance;

void SetUpLocator(){
  locator.registerLazySingleton(()=>NavigationService());
}