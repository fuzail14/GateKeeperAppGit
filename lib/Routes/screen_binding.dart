import 'package:gatekeeper/Module/AddReportToGateKeeper/View/add_report_to_gatekeeper_screen.dart';
import 'package:gatekeeper/Module/ChatAvailbility/View/chat_availbility_screen.dart';
import 'package:gatekeeper/Module/Events/View/events_screen.dart';
import 'package:gatekeeper/Module/LoginScreen/View/login_screen.dart';
import 'package:gatekeeper/Module/ReportToGateKeeper/View/report_to_gatekeeper_screen.dart';
import 'package:gatekeeper/Module/Splash/View/splash_screen.dart';
import 'package:get/get.dart';

import '../Module/AddReportToAdmin/View/add_report_to_admin_screen.dart';
import '../Module/ChatScreen/View/chat_screen.dart';
import '../Module/ReportToAdmin/View/report_to_admin_screen.dart';
import '../Module/UserHomeScreen/View/user_home_screen.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreen());
    Get.lazyPut(() => LoginScreen());
    Get.lazyPut(() => UserHomeScreen());
    Get.lazyPut(() => EventsScreen());
    Get.lazyPut(() => ChatScreen());
    Get.lazyPut(() => ChatAvailbilityScreen());
    Get.lazyPut(() => AddReportToAdminScreen());
    Get.lazyPut(() => ReportToAdminScreen());
    Get.lazyPut(() => ReportToGateKeeperScreen());
    Get.lazyPut(() => AddReportToGateKeeperScreen());
  }
}
