import 'package:flutter/material.dart';
import 'customAppBar2.dart';
import 'customSlider.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<Object> name = [
    'الحاج محمود مصطفي محمد',
    'مهندس محمد طارق عباس',
    'متولي زكريا القاضي',
    'الحاج محمود مصطفي محمد',
    'مهندس محمد طارق عباس',
    'متولي زكريا القاضي',
    'متولي زكريا القاضي',
  ];
  List<Object> address = [
    'كفرالشيخ - طريق بلطيم الدولي -طلميات7',
    'بورسعيد - مثلث الديبه',
    'كفرالشيخ - طريق بلطيم الدولي -طلميات7',
    'بورسعيد - مثلث الديبه',
    'كفرالشيخ - طريق بلطيم الدولي -طلميات7',
    'بورسعيد - مثلث الديبه',
    'كفرالشيخ - طريق بلطيم الدولي -طلميات7',
  ];
  List<Map<String, dynamic>> list = [
    {
      "name": 'الحاج محمود مصطفي محمد',
      "address": 'كفرالشيخ - طريق بلطيم الدولي -طلميات7',
    },
    {
      "name": 'مهندس محمد طارق عباس',
      "address": 'بورسعيد - مثلث الديبه',
    },
    {
      "name": 'الحاج محمود مصطفي محمد',
      "address": 'كفرالشيخ - طريق بلطيم الدولي -طلميات7',
    },
    {
      "name": 'مهندس محمد طارق عباس',
      "address": 'بورسعيد - مثلث الديبه',
    },
    {
      "name": 'الحاج محمود مصطفي محمد',
      "address": 'كفرالشيخ - طريق بلطيم الدولي -طلميات7',
    },
    {
      "name": 'مهندس محمد طارق عباس',
      "address": 'بورسعيد - مثلث الديبه',
    },
    {
      "name": 'الحاج محمود مصطفي محمد',
      "address": 'كفرالشيخ - طريق بلطيم الدولي -طلميات7',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xffe5e5e5),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  child: CustomAppBar2(),
                ),
                SizedBox(
                  height: 50,
                ),
                Card(
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('كفرالشيخ'),
                              Text('6'),
                            ]),
                        SizedBox(height: 10),
                        ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          itemCount: 7,
                          itemBuilder: (context, index) => CustomSlider(
                            6,
                            list[index]['name'],
                            list[index]['address'],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Card(
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('البحيرة'),
                            Text('7'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context, index) => CustomSlider(
                            6,
                            list[index]['name'],
                            list[index]['address'],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              clipBehavior: Clip.antiAliasWithSaveLayer,
            ),
            FloatingActionButton(
              onPressed: null,
              child: Icon(
                Icons.add,
                size: 40,
              ),
              backgroundColor: Color(0xff91dced),
            )
          ],
        ),
      ),
    );
  }
}
