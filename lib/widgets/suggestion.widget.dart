import 'package:bkash_ui/data/suggestion_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/home_page_first_part_data.dart';

class SuggestionWidget extends StatefulWidget {
  const SuggestionWidget({Key? key}) : super(key: key);

  @override
  State<SuggestionWidget> createState() => _SuggestionWidgettState();
}

class _SuggestionWidgettState extends State<SuggestionWidget> {
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
                  'Suggestion',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  'See All',
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
            height: 85,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  child: mySuggestion[index],
                );
              },
              itemCount: mySuggestion.length,
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
