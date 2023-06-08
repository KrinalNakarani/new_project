import 'package:flutter/material.dart';
import 'package:new_project/model/api_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade500,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/book');
              },
              icon: Icon(Icons.bookmark),
            ),
          ],
        ),
        body: FutureBuilder<List<dynamic>>(
          future: ApiClass().getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print("${snapshot.error}");
              return Text("${snapshot.error}");
            } else if (snapshot.hasData) {
              print("${snapshot.data}");
              List<dynamic>? l1 = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/second',
                              arguments: {'status': 0, 'list': l1[index]});
                          print('${l1[index].country}');
                        },
                        child: Container(
                          height: 100,
                          width: 400,
                          decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "${l1[index].country}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Spacer(),
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    "${l1[index].countryInfo.flag}"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                itemCount: l1!.length,
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
