import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/home_page_first_part_data.dart';

class LastSectionWidget extends StatefulWidget {
  const LastSectionWidget({Key? key}) : super(key: key);

  @override
  State<LastSectionWidget> createState() => _LastSectionWidgetState();
}

class _LastSectionWidgetState extends State<LastSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(width: 0.2, color: Colors.grey),
            ),
            height: 305,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/last banner.jpg'),
                  width: 200,
                ),
                Text(
                  'Win Bike, TV,AC',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Text('With Cashback in Every Minute'),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  child: Text(
                    'Check Details',
                    style: TextStyle(color: Colors.pink),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(
                        color: Colors.pink, width: 1), // Add border here
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
