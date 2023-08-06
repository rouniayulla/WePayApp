import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_paginator/number_paginator.dart';

class Tab3 extends StatefulWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  final int _numPages = 10;
  int _currentPage = 0;

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
    var pages = List.generate(
        _numPages,
        (index) => Column(
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
                          style:
                              ElevatedButton.styleFrom(primary: Colorbutton1),
                          onPressed: () {
                            setState(() {
                              Colorbutton2 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton1 = Color.fromARGB(255, 217, 217, 217);
                              Colorbutton3 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton4 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton5 = Color.fromARGB(250, 58, 165, 117);

                              TextColorButton1 =
                                  Color.fromARGB(250, 58, 165, 117);
                              TextColorButton2 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton3 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton4 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton5 =
                                  Color.fromARGB(255, 255, 255, 255);
                            });
                          },
                          child: Text(
                            "كل الدفوعات",
                            style: TextStyle(
                                color: TextColorButton1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 5.0.w,
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colorbutton2),
                          onPressed: () {
                            setState(() {
                              Colorbutton1 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton2 = Color.fromARGB(255, 217, 217, 217);
                              Colorbutton3 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton4 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton5 = Color.fromARGB(250, 58, 165, 117);

                              TextColorButton2 =
                                  Color.fromARGB(250, 58, 165, 117);
                              TextColorButton1 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton3 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton4 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton5 =
                                  Color.fromARGB(255, 255, 255, 255);
                            });
                          },
                          child: Text(
                            "الديون",
                            style: TextStyle(
                                color: TextColorButton2,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 5.0.w,
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colorbutton3),
                          onPressed: () {
                            setState(() {
                              Colorbutton1 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton3 = Color.fromARGB(255, 217, 217, 217);
                              Colorbutton2 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton4 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton5 = Color.fromARGB(250, 58, 165, 117);

                              TextColorButton3 =
                                  Color.fromARGB(250, 58, 165, 117);
                              TextColorButton2 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton1 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton4 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton5 =
                                  Color.fromARGB(255, 255, 255, 255);
                            });
                          },
                          child: Text(
                            "الأقساط الشهرية ",
                            style: TextStyle(
                                color: TextColorButton3,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 5.0.w,
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colorbutton4),
                          onPressed: () {
                            setState(() {
                              Colorbutton1 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton4 = Color.fromARGB(255, 217, 217, 217);
                              Colorbutton3 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton2 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton5 = Color.fromARGB(250, 58, 165, 117);

                              TextColorButton4 =
                                  Color.fromARGB(250, 58, 165, 117);
                              TextColorButton2 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton3 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton1 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton5 =
                                  Color.fromARGB(255, 255, 255, 255);
                            });
                          },
                          child: Text(
                            "ديون المتاجر",
                            style: TextStyle(
                                color: TextColorButton4,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 5.0.w,
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colorbutton5),
                          onPressed: () {
                            setState(() {
                              Colorbutton1 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton5 = Color.fromARGB(255, 217, 217, 217);
                              Colorbutton3 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton4 = Color.fromARGB(250, 58, 165, 117);
                              Colorbutton2 = Color.fromARGB(250, 58, 165, 117);

                              TextColorButton5 =
                                  Color.fromARGB(250, 58, 165, 117);
                              TextColorButton2 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton3 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton4 =
                                  Color.fromARGB(255, 255, 255, 255);
                              TextColorButton1 =
                                  Color.fromARGB(255, 255, 255, 255);
                            });
                          },
                          child: Text(
                            "مدفوعات أخرى ",
                            style: TextStyle(
                                color: TextColorButton5,
                                fontWeight: FontWeight.bold),
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
                SingleChildScrollView(
                  child: Container(
                    width: 350.0.w,
                    height: 300.0.h,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(250, 58, 165, 117),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(15.0.sp))),
                              width: 250.0.w,
                              height: 135.0.h,
                              child: Padding(
                                  padding: EdgeInsets.all(10.0.sp),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "نوع الدفعة : قسط شهري",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "SYP قسط الدفعة :21000",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "اسم الدفعة : دين لجيتسو",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "آخر موعد للدفع : دفع كل شهر / متبقي ثلاث أيام",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: 10.0.h,
                            ),
                          ],
                        );
                      },
                      itemCount: 2,
                    ),
                  ),
                )
              ],
            ));

    return Scaffold(
      body: pages[_currentPage],
      // card for elevation
      bottomNavigationBar: Card(
        margin: EdgeInsets.zero,
        elevation: 4,
        child: NumberPaginator(
          // by default, the paginator shows numbers as center content
          numberPages: _numPages,
          onPageChange: (int index) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
      ),
    );
  }
}
