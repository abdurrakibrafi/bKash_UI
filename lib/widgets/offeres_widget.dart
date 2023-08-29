import 'package:bkash_ui/data/offers_card_data.dart';
import 'package:bkash_ui/widgets/offers_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/home_page_first_part_data.dart';

class OffersWidget extends StatefulWidget {
  const OffersWidget({Key? key}) : super(key: key);

  @override
  State<OffersWidget> createState() => _MyBkashWidgetState();
}

class _MyBkashWidgetState extends State<OffersWidget> {
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
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Offers',
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
          ),
          Container(
              width: 800,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(width: 0.2, color: Colors.grey),
              ),
              height: 280,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: offersModel.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => OffersCard(
                          offerscardIndex: index,
                        )),
              )),
        ],
      ),
    );
  }
}
