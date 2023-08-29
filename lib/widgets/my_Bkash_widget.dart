import 'package:bkash_ui/data/my_bkash_data.dart';
import 'package:bkash_ui/widgets/myBkash_bottomModel_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/home_page_first_part_data.dart';

class MyBkashWidget extends StatefulWidget {
  const MyBkashWidget({Key? key}) : super(key: key);

  @override
  State<MyBkashWidget> createState() => _MyBkashWidgetState();
}

class _MyBkashWidgetState extends State<MyBkashWidget> {
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
                  'My bkash',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () {
                    showBottomSheet(
                        backgroundColor: Colors.white,
                        enableDrag: true,
                        context: context,
                        builder: (context) {
                          return BottomModelWidget();
                        });
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                        color: Colors.pink, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(width: 0.2, color: Colors.grey),
            ),
            height: 85,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  child: myBkash[index],
                );
              },
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
