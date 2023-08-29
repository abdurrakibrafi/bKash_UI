import 'package:bkash_ui/pages/norification_page.dart';
import 'package:bkash_ui/pages/transaction_page.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

import 'notification_widget.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 0.4)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: ContainedTabBarView(
            tabs: [
              Text(
                'Notification',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Transactions',
                style: TextStyle(fontSize: 16),
              ),
            ],
            tabBarProperties: TabBarProperties(
              indicatorColor: Colors.pink,
              labelColor: Colors.pink,
              unselectedLabelColor: Colors.grey[400],
            ),
            views: [NotificationPage(), TransactionPage()],
            onChange: (index) => print(index),
          ),
        ),
      ),
    );
  }
}
