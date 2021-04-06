import 'package:flutter/material.dart';
import 'customAppBar1.dart';
import 'customSlider.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
   List <Object> name =[ 
     'الحاج محمود مصطفي محمد',
     'مهندس محمد طارق عباس',
    
   ];
   List <Object> address =[ 
    'كفرالشيخ - طريق بلطيم الدولي -طلميات7',
    'بورسعيد - مثلث الديبه'
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
                  child: CustomAppBar1(),
                ),
                Positioned(
                  bottom: 50,
                  child: Card(
                    child: Column(
                      children: [
                        Text(
                          'خطتك هذا الاسبوع',
                          style: TextStyle(
                            color: Color(0xff282759),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              child: Text(
                                '27',
                                style: TextStyle(
                                  color: Color(0xffe5e5e5),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 15,
                              child: Text(
                                '28',
                                style: TextStyle(
                                  color: Color(0xffe5e5e5),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue[900],
                              radius: 16,
                              child: CircleAvatar(
                                radius: 15,
                                child: Text(
                                  '29',
                                  style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 15,
                              child: Text(
                                '30',
                                style: TextStyle(
                                  color: Color(0xffe5e5e5),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 15,
                              child: Text(
                                '31',
                                style: TextStyle(
                                  color: Color(0xffe5e5e5),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 15,
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Color(0xffe5e5e5),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 15,
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Color(0xffe5e5e5),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('الاثنين 3/29'),
                        Text('2'),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) => CustomSlider(
                        6,
                        name[index],
                            address[index],
                             
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: Text('اضافه عميل'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
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
