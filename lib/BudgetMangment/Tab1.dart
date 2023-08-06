import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 10.0.h),
        child: Column(
          children: [
            //title recent activity
            Container(
              padding: EdgeInsets.only(left: 20.0.sp),
              alignment: Alignment.centerRight,
              child: Text(
                " : آخر الأنشطة ",
                style: TextStyle(
                    color: Color.fromARGB(250, 58, 165, 117),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0.sp),
              ),
            ),

            SizedBox(
              height: 20.0.h,
            ),

            //Recent Activity
            Container(
              padding: EdgeInsets.all(10.0.sp),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 217, 217),
                  borderRadius: BorderRadius.all(Radius.circular(15.0.sp))),
              width: 350.0.w,
              height: 400.0.h,
              child: Column(
                children: [
                  Container(
                    width: 350.0.w,
                    height: 350.0.h,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(250, 58, 165, 117),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(15.0.sp))),
                              width: 300.0.w,
                              height: 50.0.h,
                              child: Padding(
                                padding: EdgeInsets.all(10.0.sp),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "-120000 SYP",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "دفع لمتجر أبو عبدو ماركت",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0.h,
                            ),
                          ],
                        );
                      },
                      itemCount: 5,
                    ),
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("عرض الكل "),
                    ),
                  )
                ],
              ),
            ),
            Image.asset('assets/divider.png'),

            Container(
              padding: EdgeInsets.only(right: 7.0.sp),
              alignment: Alignment.centerRight,
              child: Text(
                "أهم المدفوعات المستحقة",
                style: TextStyle(
                    color: Color.fromARGB(250, 58, 165, 117),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0.sp),
              ),
            ),

            SizedBox(
              height: 20.0.h,
            ),
            //Recent Activity
            Container(
              padding: EdgeInsets.all(10.0.sp),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 217, 217),
                  borderRadius: BorderRadius.all(Radius.circular(15.0.sp))),
              width: 350.0.w,
              height: 525.0.h,
              child: Column(
                children: [
                  Container(
                    width: 350.0.w,
                    height: 450.0.h,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(250, 58, 165, 117),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(15.0.sp))),
                              width: 300.0.w,
                              height: 120.0.h,
                              child: Padding(
                                  padding: EdgeInsets.all(10.0.sp),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.white),
                                            onPressed: () {},
                                            child: Text(
                                              "ادفع الآن",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    250, 58, 165, 117),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: 12.0.h),
                                            child: Text(
                                              "دين متجر أبو عبدو ماركت",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10.0.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                ": آخر موعد للدفع",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                " 21/12/2023",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "SYP قيمة الدفعة:23000  ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          )
                                        ],
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
                      itemCount: 3,
                    ),
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("إضافة المزيد"),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("عرض الكل"),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
