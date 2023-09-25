import 'package:exam/controller/covid_controller.dart';
import 'package:exam/model/covid_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/covid_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CovidController controller = Get.put(CovidController());
  CovidModel model = CovidModel();

  @override
  void initState() {
    // controller.getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Covid Information",
                style: TextStyle(
                    color: Colors.teal,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            backgroundColor: Colors.white,
            body: FutureBuilder(
              future: ApiHelper.helper.covid(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("${snapshot.error}"),
                  );
                } else if (snapshot.hasData) {
                  List<CovidModel> mainList = snapshot.data!;
                  return ListView.builder(
                    itemBuilder: (context, index) => showList(index, mainList),
                    itemCount: mainList.length,
                  );
                }
                return Center(
                    child: CircularProgressIndicator(
                  color: Colors.teal,
                  backgroundColor: Colors.white,
                ));
              },
            )));
  }

  Widget showList(int index, List mainList) {
    return InkWell(
        onTap: () {
          Get.toNamed('/data', arguments: {"list":mainList,"index":index});
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.network(
                        "${mainList[index].countryInfo.flag}",
                        width: 50,
                        height: 30,
                      ),
                      SizedBox(width: 30),
                      Text(
                        textAlign: TextAlign.center,
                        "${mainList[index].country}",
                        style: TextStyle(letterSpacing: 1, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
