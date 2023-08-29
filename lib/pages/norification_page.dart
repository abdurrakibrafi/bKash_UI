import 'package:bkash_ui/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) => NotificationWidgets(
              offerscardIndex: index,
            ));
  }
}
