import 'package:flutter/material.dart';
import 'package:tugas_4/data.dart';


class BelajarListView extends StatelessWidget {
  final List bulan = [
    "Januari",
    "Fabruari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => data(),
                ),
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(bulan[index], style: TextStyle(fontSize: 30)),
              ),
            ),
          );
        },
        itemCount: bulan.length,
      ),
    );
  }
}
