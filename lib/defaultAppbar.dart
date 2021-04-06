import 'package:flutter/material.dart';
import 'BackBtn.dart';

Widget defaultAppBar({
  @required BuildContext context,
  @required String title,
  Function onPress,
  bool hasBack = false,
  double elevation,
  Widget icon,
  List<Widget> actions,
}) {
  return AppBar(
    elevation: elevation ?? 4,
    flexibleSpace: Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
      height: MediaQuery.of(context).size.height * 0.06,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.blue[900]),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width * 0.45,
            child: TextFormField(
              // style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                border: InputBorder.none,
                hintText: "ابحث عن العميل",
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(
              'assets/images/aqua.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ),
    actions: actions ?? [],
    leading: hasBack
        ? BackBtn(
            color: Colors.white,
            onPress: onPress,
          )
        : icon ?? SizedBox(),
    backgroundColor: Color(0xff91dced),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      ),
    ),
  );
}
