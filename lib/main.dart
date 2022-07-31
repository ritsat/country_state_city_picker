import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomeApp(),
    );
  }
}

class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Country State City Picker"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: CSCPicker(
          layout: Layout.vertical,
          //flagState: CountryFlag.DISABLE,
          onCountryChanged: (country) {},
          onStateChanged: (state) {},
          onCityChanged: (city) {},
          /* countryDropdownLabel: "*Country",
          stateDropdownLabel: "*State",
          cityDropdownLabel: "*City",*/
          //dropdownDialogRadius: 30,
          //searchBarRadius: 30,
        ),
      ),
    );
  }
}
