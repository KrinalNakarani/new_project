import 'package:flutter/material.dart';
import 'package:new_project/model/DBHelper.dart';
import 'package:new_project/model/api_model.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int a1 = 0;

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    ApiModel n1 = ModalRoute.of(context)!.settings.arguments as ApiModel;
    ApiModel m1 = ModalRoute.of(context)!.settings.arguments as ApiModel;
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
              icon: const Icon(
                Icons.bookmark_border,
              ),
            )
          ],
          title: const Text("Corona Update"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage("${n1.countryInfo!.flag}"),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Country Name = ${(a1 == 0) ? n1.country : m1.country}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.red.shade700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Cases = ${(a1 == 0) ? n1.cases : m1.cases}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "active = ${(a1 == 0) ? n1.active : m1.active}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "critical = ${(a1 == 0) ? n1.critical : m1.critical}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "casesPerOneMillion = ${(a1 == 0) ? n1.casesPerOneMillion : m1.casesPerOneMillion}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "tests = ${(a1 == 0) ? n1.tests : m1.tests}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "testsPerOneMillion = ${(a1 == 0) ? n1.testsPerOneMillion : m1.testsPerOneMillion}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "population = ${(a1 == 0) ? n1.population : m1.population}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "continent = ${(a1 == 0) ? n1.continent : m1.continent}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "oneCasePerPeople = ${(a1 == 0) ? n1.oneCasePerPeople : m1.oneCasePerPeople}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "oneDeathPerPeople = ${(a1 == 0) ? n1.oneDeathPerPeople : m1.oneDeathPerPeople}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "oneTestPerPeople = ${(a1 == 0) ? n1.oneTestPerPeople : m1.oneTestPerPeople}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "activePerOneMillion = ${(a1 == 0) ? n1.activePerOneMillion : m1.activePerOneMillion}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "recoveredPerOneMillion = ${(a1 == 0) ? n1.recoveredPerOneMillion : m1.recoveredPerOneMillion}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "criticalPerOneMillion = ${(a1 == 0) ? n1.criticalPerOneMillion : m1.criticalPerOneMillion}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
/*
n1=0?n1:n2


*/
