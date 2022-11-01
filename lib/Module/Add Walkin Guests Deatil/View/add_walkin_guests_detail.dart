import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/Widgets/My%20TextFormFields/my_textform_field.dart';
import 'package:gatekeeper/Constants/constants.dart';
import 'package:gatekeeper/Constants/my_button.dart';

class AddWalkinGuestsDetail extends StatefulWidget {
  const AddWalkinGuestsDetail({Key? key}) : super(key: key);

  @override
  State<AddWalkinGuestsDetail> createState() => _AddWalkinGuestsDetailState();
}

class _AddWalkinGuestsDetailState extends State<AddWalkinGuestsDetail> {
  String? dropdownValue;
  bool isOther = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Add Walkin Guest Detail"),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/walkinguest.png',
                width: 200,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Select the Entry Type",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: DropdownButton<String>(
                isExpanded: true,
                value: dropdownValue,
                icon: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: primaryColor,
                ),
                iconSize: 30,
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 1,
                  color: primaryColor,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                    print(dropdownValue);
                    if (dropdownValue == 'Other') {
                      isOther = true;
                    } else if (dropdownValue == 'Guest') {
                      isOther = false;
                    } else if (dropdownValue == 'DeliveryBoy') {
                      isOther = false;
                    } else {
                      isOther = false;
                    }
                    setState(() {});
                  });
                },
                items: <String>['Guest', 'DeliveryBoy', 'Other']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                }).toList(),
              ),
            ),
            isOther
                ? MyTextFormField(
                    hintText: 'Enter Person Type',
                    obscureText: false,
                    labelText: 'Enter Person Type',
                    onFocusedBorderColor: primaryColor,
                    onEnabledBorderColor: primaryColor)
                : Text(""),
            MyTextFormField(
                hintText: 'Enter Name',
                obscureText: false,
                labelText: 'Name',
                onFocusedBorderColor: primaryColor,
                onEnabledBorderColor: primaryColor),
            MyTextFormField(
                hintText: 'Enter Mobile Number',
                obscureText: false,
                labelText: 'Mobile',
                onFocusedBorderColor: primaryColor,
                onEnabledBorderColor: primaryColor),
            MyTextFormField(
                hintText: 'Enter Cnic',
                obscureText: false,
                labelText: 'Cnic',
                onFocusedBorderColor: primaryColor,
                onEnabledBorderColor: primaryColor),
            SizedBox(
              width: 400,
              child: MyButton(
                border: 8,
                horizontalPadding: 8,
                verticalPadding: 8,
                name: 'Send Request',
                color: primaryColor,
                maxLines: 1,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
