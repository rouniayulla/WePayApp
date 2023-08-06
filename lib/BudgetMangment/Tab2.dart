import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  var Colorbutton1 = Color.fromARGB(255, 217, 217, 217);
  var Colorbutton2 = Color.fromARGB(250, 58, 165, 117);
  var Colorbutton3 = Color.fromARGB(250, 58, 165, 117);
  var Colorbutton4 = Color.fromARGB(250, 58, 165, 117);
  var Colorbutton5 = Color.fromARGB(250, 58, 165, 117);
  var TextColorButton1 = Color.fromARGB(250, 58, 165, 117);
  var TextColorButton2 = Color.fromARGB(255, 255, 255, 255);
  var TextColorButton3 = Color.fromARGB(255, 255, 255, 255);
  var TextColorButton4 = Color.fromARGB(255, 255, 255, 255);
  var TextColorButton5 = Color.fromARGB(255, 255, 255, 255);

  final DataTableSource _data = MyData();
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("من الأقدم للأحدث"), value: "OTN"),
      DropdownMenuItem(child: Text("من الأحدث للأقدم"), value: "NTO"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItems2 {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("من الأرخص للأغلى"), value: "CTE"),
      DropdownMenuItem(child: Text("من الأغلى للأرخص"), value: "ETC"),
    ];
    return menuItems;
  }

  String selectedValue1 = "OTN";
  String selectedValue2 = "CTE";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5.0.h),
            height: 70.0.h,
            child: Row(
              children: [
                SizedBox(
                  width: 5.0.w,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colorbutton1),
                  onPressed: () {
                    setState(() {
                      Colorbutton2 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton1 = Color.fromARGB(255, 217, 217, 217);
                      Colorbutton3 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton4 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton5 = Color.fromARGB(250, 58, 165, 117);

                      TextColorButton1 = Color.fromARGB(250, 58, 165, 117);
                      TextColorButton2 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton3 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton4 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton5 = Color.fromARGB(255, 255, 255, 255);
                    });
                  },
                  child: Text(
                    "كل العمليات",
                    style: TextStyle(
                        color: TextColorButton1, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 5.0.w,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colorbutton2),
                  onPressed: () {
                    setState(() {
                      Colorbutton1 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton2 = Color.fromARGB(255, 217, 217, 217);
                      Colorbutton3 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton4 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton5 = Color.fromARGB(250, 58, 165, 117);

                      TextColorButton2 = Color.fromARGB(250, 58, 165, 117);
                      TextColorButton1 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton3 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton4 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton5 = Color.fromARGB(255, 255, 255, 255);
                    });
                  },
                  child: Text(
                    "عمليات التحويل ",
                    style: TextStyle(
                        color: TextColorButton2, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 5.0.w,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colorbutton3),
                  onPressed: () {
                    setState(() {
                      Colorbutton1 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton3 = Color.fromARGB(255, 217, 217, 217);
                      Colorbutton2 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton4 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton5 = Color.fromARGB(250, 58, 165, 117);

                      TextColorButton3 = Color.fromARGB(250, 58, 165, 117);
                      TextColorButton2 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton1 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton4 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton5 = Color.fromARGB(255, 255, 255, 255);
                    });
                  },
                  child: Text(
                    "عمليات الشحن ",
                    style: TextStyle(
                        color: TextColorButton3, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 5.0.w,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colorbutton4),
                  onPressed: () {
                    setState(() {
                      Colorbutton1 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton4 = Color.fromARGB(255, 217, 217, 217);
                      Colorbutton3 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton2 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton5 = Color.fromARGB(250, 58, 165, 117);

                      TextColorButton4 = Color.fromARGB(250, 58, 165, 117);
                      TextColorButton2 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton3 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton1 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton5 = Color.fromARGB(255, 255, 255, 255);
                    });
                  },
                  child: Text(
                    "عمليات الدفع للمتاجر",
                    style: TextStyle(
                        color: TextColorButton4, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 5.0.w,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colorbutton5),
                  onPressed: () {
                    setState(() {
                      Colorbutton1 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton5 = Color.fromARGB(255, 217, 217, 217);
                      Colorbutton3 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton4 = Color.fromARGB(250, 58, 165, 117);
                      Colorbutton2 = Color.fromARGB(250, 58, 165, 117);

                      TextColorButton5 = Color.fromARGB(250, 58, 165, 117);
                      TextColorButton2 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton3 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton4 = Color.fromARGB(255, 255, 255, 255);
                      TextColorButton1 = Color.fromARGB(255, 255, 255, 255);
                    });
                  },
                  child: Text(
                    "عمليات استلام الرصيد ",
                    style: TextStyle(
                        color: TextColorButton5, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 5.0.w,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton(
                  value: selectedValue1,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue1 = newValue!;
                    });
                  },
                  items: dropdownItems),
              DropdownButton(
                  value: selectedValue2,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue2 = newValue!;
                    });
                  },
                  items: dropdownItems2),
            ],
          ),
        ),
        Theme(
          data: Theme.of(context).copyWith(
              cardColor: Color.fromARGB(255, 217, 217, 217),
              dividerColor: Color.fromARGB(250, 58, 165, 117)),
          child: PaginatedDataTable(
            arrowHeadColor: Color.fromARGB(250, 58, 165, 117),
            columns: [
              DataColumn(
                  label: Text(
                "التاريخ والوقت",
                style: TextStyle(color: Color.fromARGB(250, 58, 165, 117)),
              )),
              DataColumn(
                  label: Text(
                "قيمة التحويل",
                style: TextStyle(color: Color.fromARGB(250, 58, 165, 117)),
              )),
              DataColumn(
                  label: Padding(
                padding: EdgeInsets.only(left: 20.0.w),
                child: Text(
                  "نوع النشاط",
                  style: TextStyle(color: Color.fromARGB(250, 58, 165, 117)),
                ),
              )),
            ],
            source: _data,
            rowsPerPage: 4,
            horizontalMargin: 10.0.w,
          ),
        )
      ],
    );
  }
}

class MyData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      200,
      (index) => {
            "title": "دفع",
            "title2": "دفع لأبو عبدو ماركت",
            "price": "21000 SYP",
            "date": "12/12/2023",
            "time": "5:02 AM",
          });
  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Column(
        children: [
          SizedBox(
            height: 5.0.h,
          ),
          Text(_data[index]['date'].toString()),
          Text(_data[index]['time'].toString())
        ],
      )),
      DataCell(Text(_data[index]['price'].toString())),
      DataCell(Column(
        children: [
          Text(_data[index]['title'].toString()),
          Expanded(child: Text(_data[index]['title2'].toString()))
        ],
      )),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
