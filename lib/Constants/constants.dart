import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final Color primaryColor= HexColor("#00BFA6");
final Color whiteColor= HexColor("#ffffff");
const String assetsBaseUrl="images/";
const String logo='${assetsBaseUrl}logo.png';
const splashlogo = 'assets/mia.png';
const userpic = 'assets/k.webp';
const userpic2 = 'assets/kk.webp';

final Gradient?   gradient=LinearGradient(
begin: Alignment.topRight,
end: Alignment.bottomLeft,
stops: [
0.1,
0.4,

],

colors: [
  HexColor("#AEF5E6"),



  primaryColor,

],
);


pickFile() async {

  FilePickerResult? result = await FilePicker.platform.pickFiles();
  File file = File(result!.files.single.path.toString());
  if (result != null) {
    File file = File(result.files.single.path.toString());

    // List<int> imageBytes = file.readAsBytesSync();
    // String base64Image = base64Encode(imageBytes);
    print(file.path);
    // print(file.absolute);
    // print(file.isAbsolute);
    // print(file.uri);
    //
    // print(base64Image);
return file.path;
    // print(file.readAsBytesSync());
  } else {
    // User canceled the picker
    return file.path;
  }
}


Future<TimeOfDay?> selectTime(BuildContext context) async {
  TimeOfDay selectedTime = TimeOfDay.now();
  final TimeOfDay? timeOfDay = await showTimePicker(
    context: context,
    initialTime: selectedTime,
    initialEntryMode: TimePickerEntryMode.dial,
  );
  if(timeOfDay != null && timeOfDay != selectedTime)
  {

 selectedTime = timeOfDay;
return selectedTime;
  }
}

Future<String> getDate(BuildContext context) async
{  DateTime date = new DateTime(2022, 12, 24);
String? myDate;

DateTime? newDate = await showDatePicker
  (builder:(context,child){
    return  Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ColorScheme.light(
          primary:primaryColor, // <-- SEE HERE
          // <-- SEE HERE
      // <-- SEE HERE
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: primaryColor, // button text color
          ),
        ),
      ),
      child: child!,
    );
} ,
    context: context,
    initialDate: date,
    firstDate: DateTime(1900),
    lastDate: DateTime(2100));
if (newDate == null) {
  return "";
}


 date = newDate;
print(date);

  date.month;
  date.year;
  date.day;
  myDate = date.day.toString() +
      "/" +
      date.month.toString() +
      "/" +
      date.year.toString();


return myDate;
}

/* Validations */

String? emptyStringValidator (String? val)
{ String string = val!.trim();

  if ( string.isEmpty)
    {
      return "This field is required";
    }
else {
    return null;
  }
}


String? passwordValidator (String? v) {
  RegExp smallAlphabets = RegExp("(?=.*?[a-z])");
  RegExp capitalAlphabets = RegExp("(?=.*?[A-Z])");
  RegExp specialCharacter = RegExp("(?=.*?[#?!@\$%^&*-])");
  String string = v!.trim();
  if (string.isEmpty) {
    return 'Please enter the password';
  } else if (string.length < 6 || string.length > 25) {
    return 'Password length should be in between 6 and 25';
  } else if (!smallAlphabets.hasMatch(string)) {
    return 'Password must includes at least one lower case English letter. ';
  } else if (!capitalAlphabets.hasMatch(string)) {
    return 'Password must includes at least one upper case English letter.';
  } else if (!specialCharacter.hasMatch(string)) {
    return 'Password must includes at least one special character.';
  } else {
    return null;
  }
}
String? emailValidator (String? v) {
  String string = v!.trim();
  bool _emailValid = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
      .hasMatch(string);

  if (string.isEmpty) {
    return 'Please enter your email';
  } else if (!_emailValid) {
    return 'Please enter a valid email';
  } else {
    return null;
  }
}




String? cnicValidator (String? v) {
  String string = v!.trim();
  bool _cnicValid = RegExp("^[0-9]{5}-[0-9]{7}-[0-9]\$")
      .hasMatch(string);

  if (string.isEmpty) {
    return 'Please enter your CNIC';
  } else if (!_cnicValid) {
    return 'Please enter a valid CNIC  XXXXX-XXXXXXX-X  ';
  } else {
    return null;
  }
}












