import 'package:bkash_ui/data/moreService_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/home_page_first_part_data.dart';

class MoreSectionWidtget extends StatefulWidget {
  const MoreSectionWidtget({Key? key}) : super(key: key);

  @override
  State<MoreSectionWidtget> createState() => _MoreSectionWidtgetState();
}

class _MoreSectionWidtgetState extends State<MoreSectionWidtget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(width: 0.2, color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'More Services',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  '',
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(width: 0.2, color: Colors.grey),
            ),
            height: 185,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              physics:
                  NeverScrollableScrollPhysics(), // Disable scroll behavior
              itemBuilder: (context, index) {
                return Container(
                  child: moreService[index],
                );
              },
              itemCount: moreService.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
