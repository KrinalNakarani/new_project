import 'package:flutter/material.dart';
import 'package:new_project/model/DBHelper.dart';

class BookMarkPage extends StatefulWidget {
  const BookMarkPage({super.key});

  @override
  State<BookMarkPage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  List<Map> l1 = [];

  @override
  void initState() {
    super.initState();
    GetData();
  }

  Future<List<Map<String, dynamic>>> GetData() async {
    DBHelper db = DBHelper();
    List<Map<String, dynamic>> l2 = await db.readDB();
    setState(() {
      l1 = l2;
    });
    return l2;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("BookMark"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/');
                  },
                  child: Container(
                    height: 100,
                    width: 400,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Country Name = ${l1[index]['country']}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Cases = ${l1[index]['cases']}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Criticle Cases = ${l1[index]['critical']}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          itemCount: l1.length,
        ),
      ),
    );
  }
}
