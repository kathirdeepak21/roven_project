import 'dart:math';

import 'package:flutter/material.dart';

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              
              children: [
                Container(
                  width: 375,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(228, 173, 167, 167),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("EXAM APPLICATION",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                  )),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 280,top: 40),
                  child: Text("Roll No.:",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
            Padding(
              padding: const EdgeInsets.only(right: 270,top: 12),
              child: Text("Name:",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text("Email:",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  width: 200,
                  height: 35,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      cursorHeight: 10 ,
                    
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 22, 22, 22))
                        )
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 278,top: 10),
              child: Text("Mobile:",style: TextStyle(fontWeight: FontWeight.bold),),
            ),	
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Nov/Dec-2026",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200,top: 10),
              child: Text("Regular Subjects",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DataTable(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 22, 22, 22))
                ),
                columnSpacing: 1,
                dataRowHeight: 20,
                columns: [
                 DataColumn(label: Text("Semester", style: TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(label: Text("Course Code", style: TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(label: Text("Course Name", style: TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(label: Text("Amount Rs.", style: TextStyle(fontWeight: FontWeight.bold))),
              ], rows: [
                 DataRow(cells: [
                  DataCell(Text("I")),
                  DataCell(Text("CS101")),
                  DataCell(Text("Computer Science")),
                  DataCell(Text("5000")),
                ]),
              ]),
            )
            
          ],
          
        ),
      ),
    );
  }
}