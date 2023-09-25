import 'package:exam/controller/covid_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  Map m1 = {};
  CovidController controller = Get.put(CovidController());

  @override
  void initState() {
    super.initState();
    m1 = Get.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${m1['list'][m1['index']].country}",
          style: TextStyle(
              color: Colors.teal,
              letterSpacing: 1,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Image.network(
                "${m1['list'][m1['index']].countryInfo.flag}",
                width: 250,
                height: 100,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Country :- ${m1['list'][m1['index']].country}",
              style: TextStyle(
                color: Colors.teal,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.teal,
              thickness: 0.30,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Lat :- ${m1['list'][m1['index']].countryInfo.lat}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.teal,
              thickness: 0.30,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Lan :- ${m1['list'][m1['index']].countryInfo.lat}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.teal,
              thickness: 0.30,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Updated :- ${m1['list'][m1['index']].updated}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.teal,
              thickness: 0.30,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Todaycase :-${m1['list'][m1['index']].todayCases}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.teal,
              thickness: 0.30,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Todaydeath :- ${m1['list'][m1['index']].todayDeaths}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.teal,
              thickness: 0.30,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Continent :- ${m1['list'][m1['index']].continent}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.teal,
              thickness: 0.30,
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    ));
  }
}
