import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wepay/BudgetMangment/Bar-Chart-Method.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:wepay/BudgetMangment/Tab1.dart';
import 'package:wepay/BudgetMangment/Tab2.dart';
import 'package:wepay/BudgetMangment/Tab3.dart';

class BudgetManagment extends StatefulWidget {
  const BudgetManagment({super.key});

  @override
  State<BudgetManagment> createState() => _BudgetManagmentState();
}

class _BudgetManagmentState extends State<BudgetManagment> {
  final List<BarChartModel> data = [
    BarChartModel(
        Year: "Jan",
        financial: 250,
        color:
            charts.ColorUtil.fromDartColor(Color.fromARGB(250, 58, 165, 117))),
    BarChartModel(
        Year: "Feb",
        financial: 100,
        color:
            charts.ColorUtil.fromDartColor(Color.fromARGB(250, 58, 165, 117))),
    BarChartModel(
        Year: "Mar",
        financial: 250,
        color:
            charts.ColorUtil.fromDartColor(Color.fromARGB(250, 58, 165, 117))),
    BarChartModel(
        Year: "April",
        financial: 250,
        color:
            charts.ColorUtil.fromDartColor(Color.fromARGB(250, 58, 165, 117))),
    BarChartModel(
        Year: "May",
        financial: 250,
        color:
            charts.ColorUtil.fromDartColor(Color.fromARGB(250, 58, 165, 117))),
    BarChartModel(
        Year: "Jun",
        financial: 250,
        color:
            charts.ColorUtil.fromDartColor(Color.fromARGB(250, 58, 165, 117))),
    BarChartModel(
        Year: "Jul",
        financial: 250,
        color:
            charts.ColorUtil.fromDartColor(Color.fromARGB(250, 58, 165, 117))),
    BarChartModel(
        Year: "Aug",
        financial: 250,
        color:
            charts.ColorUtil.fromDartColor(Color.fromARGB(250, 58, 165, 117))),
    BarChartModel(
        Year: "Sep",
        financial: 250,
        color:
            charts.ColorUtil.fromDartColor(Color.fromARGB(250, 58, 165, 117))),
    BarChartModel(
        Year: "Act",
        financial: 150,
        color:
            charts.ColorUtil.fromDartColor(Color.fromARGB(250, 58, 165, 117))),
    BarChartModel(
        Year: "Nov",
        financial: 175,
        color:
            charts.ColorUtil.fromDartColor(Color.fromARGB(250, 58, 165, 117))),
    BarChartModel(
        Year: "Dec",
        financial: 225,
        color:
            charts.ColorUtil.fromDartColor(Color.fromARGB(250, 58, 165, 117))),
  ];
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("السنة"), value: "year"),
      DropdownMenuItem(child: Text("الشهر"), value: "month"),
      DropdownMenuItem(child: Text("اليوم"), value: "day"),
    ];
    return menuItems;
  }

  String selectedValue = "year";
  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.Year,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20.0.h, bottom: 4.0.h),
        child: Column(
          children: [
            //First Rectangle

            Container(
              margin: EdgeInsets.all(10.0.sp),
              decoration: BoxDecoration(
                  color: Color.fromARGB(250, 58, 165, 117),
                  borderRadius: BorderRadius.all(Radius.circular(15.0.sp))),
              width: 400.0.w,
              height: 100.0.h,
              child: Padding(
                padding: EdgeInsets.all(10.0.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.add_circle_sharp,
                      color: Colors.white,
                      size: 30.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ": إجمالي الدخل ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 3.0.w),
                            child: Text(
                              "120000000000000 SYP",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Second Rectangle

            Container(
              margin: EdgeInsets.all(10.0.sp),
              decoration: BoxDecoration(
                  color: Color.fromARGB(250, 58, 165, 117),
                  borderRadius: BorderRadius.all(Radius.circular(15.0.sp))),
              width: 400.0.w,
              height: 100.0.h,
              child: Padding(
                padding: EdgeInsets.all(10.0.sp),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ": إجمالي الصرف",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "20000 SYP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Third Rectangle

            Container(
              margin: EdgeInsets.all(10.0.sp),
              decoration: BoxDecoration(
                  color: Color.fromARGB(250, 58, 165, 117),
                  borderRadius: BorderRadius.all(Radius.circular(15.0.sp))),
              width: 400.0.w,
              height: 100.0.h,
              child: Padding(
                padding: EdgeInsets.all(10.0.sp),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        " : رصيد الحساب ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5.0.w),
                        child: Text(
                          "100000 SYP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Image.asset('assets/divider.png'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton(
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: dropdownItems),
                  Text(": عرض الإحصائيات حسب "),
                ],
              ),
            ),
            //Chart Bar
            Container(
              width: 400.0.w,
              height: 250.0.h,
              child: charts.BarChart(
                series,
                animate: true,
              ),
            ),

            Image.asset('assets/divider.png'),

            Text(
              "الأقسام",
              style: TextStyle(
                color: Color.fromARGB(250, 58, 165, 117),
                fontSize: 30.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),

            Image.asset('assets/divider.png'),

            DefaultTabController(
              length: 3, // length of tabs
              initialIndex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: TabBar(
                      labelPadding: EdgeInsets.only(right: 0.0.w),
                      labelColor: Color.fromARGB(250, 58, 165, 117),
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            'المدفوعات المستحقة ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'كل الأنشطة',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.0.w),
                            child: Text(
                              'أهم الإحصائيات ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 460.h, //height of TabBarView
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey, width: 0.5.w))),
                    child: TabBarView(
                      children: <Widget>[
                        Tab3(),
                        Tab2(),
                        Tab1(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
