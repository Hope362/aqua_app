import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSlider extends StatefulWidget {
  int num;
  String name;
  String address;
  

  CustomSlider(this.num,this.name,this.address);
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: Color(0xfff0f0f0),
          border: Border.all(
            width: 1,
            color: Colors.blue[900],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    color: Color(0xff282759),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(widget.address),
                Row(
                  children: [
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Color(0xff282759),
                        thumbColor: Color(0xff282759),
                        overlayColor: Color(0xff282759),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: Slider(
                          value: widget.num.toDouble(),
                          min: 0,
                          max: 100,
                          onChanged: (double newValue) {
                            setState(() {
                              widget.num = newValue.round();
                            });
                          },
                        ),
                      ),
                    ),
                    Text(
                      widget.num.toString(),
                    ),
                    Text(
                      '%',
                    ),
                  ],
                ),
              ],
            ),
            CircleAvatar(
              radius: 31,
              backgroundColor: Colors.blue[900],
              child: CircleAvatar(
                backgroundColor: Color(0xfff0f0f0),
                child: Image.asset('assets/images/fish1.png'),
                radius: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
