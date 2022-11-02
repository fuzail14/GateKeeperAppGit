const String imageBaseUrl =
    'http://192.168.100.150:8080/mia-society-app-laravel-api/public/storage/';

class Api {
  static const String baseUrl = 'http://192.168.100.150:8080/api/';
  static const String login = baseUrl + "login";
  static const String report_to_admin = baseUrl + "reporttoadmin";
  static const String admin_reports = baseUrl + "adminreports";
  static const String updatereportstatus = baseUrl + "updatereportstatus";
  static const String getgatekeepers = baseUrl + "getgatekeepers";
  static const String getvisitorstypes = baseUrl + "getvisitorstypes";
  static const String addpreapproventry = baseUrl + "addpreapproventry";
  static const String viewpreapproveentryreports =
      baseUrl + "viewpreapproveentryreports";
      static const String viewallnoticesapi = baseUrl + "viewallnotices";
  static const String viewevent = baseUrl + "event/events";
  
}
