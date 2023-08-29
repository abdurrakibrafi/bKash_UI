import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/offeres_card_controllers.dart';

class NotificationWidgets extends ConsumerWidget {
  const NotificationWidgets({super.key, required this.offerscardIndex});

  final int offerscardIndex;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NotificationProvide = ref.watch(OfferscardNotifyerProvider);
    return Column(children: [
      Card(
        child: Column(
          children: [
            Image(
                image:
                    AssetImage(NotificationProvide[offerscardIndex].NotifyImg)),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(
                        NotificationProvide[offerscardIndex].NotifyImg2),
                    width: 65,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      NotificationProvide[offerscardIndex].NotifyTitleOne,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Text(
                      NotificationProvide[offerscardIndex].NotifyTitleTwo,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
