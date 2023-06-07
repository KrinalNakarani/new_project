import 'package:flutter/material.dart';
import 'package:new_project/model/DBHelper.dart';
import 'package:new_project/model/api_model.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    ApiModel n1 = ModalRoute.of(context)!.settings.arguments as ApiModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                DBHelper().insertDB(
                  country: n1.country,
                  cases: n1.cases,
                  active: n1.active,
                  critical: n1.critical,
                  casesPerOneMillion: n1.casesPerOneMillion,
                  tests: n1.tests,
                  testsPerOneMillion: n1.testsPerOneMillion,
                  population: n1.population,
                  continent: n1.continent,
                  oneCasePerPeople: n1.oneCasePerPeople,
                  oneDeathPerPeople: n1.oneDeathPerPeople,
                  oneTestPerPeople: n1.oneTestPerPeople,
                  activePerOneMillion: n1.activePerOneMillion,
                  recoveredPerOneMillion: n1.recoveredPerOneMillion,
                  criticalPerOneMillion: n1.criticalPerOneMillion,
                );
              },
              icon: Icon(
                Icons.bookmark_border,
              ),
            )
          ],
          title: const Text("Corona Update"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage("${n1.countryInfo!.flag}"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Country Name = ${n1.country}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.red.shade700),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Cases = ${n1.cases}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "active = ${n1.active}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "critical = ${n1.critical}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "casesPerOneMillion = ${n1.casesPerOneMillion}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "tests = ${n1.tests}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "testsPerOneMillion = ${n1.testsPerOneMillion}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "population = ${n1.population}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "continent = ${n1.continent}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "oneCasePerPeople = ${n1.oneCasePerPeople}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "oneDeathPerPeople = ${n1.oneDeathPerPeople}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "oneTestPerPeople = ${n1.oneTestPerPeople}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "activePerOneMillion = ${n1.activePerOneMillion}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "recoveredPerOneMillion = ${n1.recoveredPerOneMillion}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "criticalPerOneMillion = ${n1.criticalPerOneMillion}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
