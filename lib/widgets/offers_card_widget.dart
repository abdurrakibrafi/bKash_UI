import 'package:bkash_ui/controllers/offeres_card_controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OffersCard extends ConsumerWidget {
  const OffersCard({super.key, required this.offerscardIndex});

  final int offerscardIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offerCardItems = ref.watch(OfferscardNotifyerProvider);
    return Container(
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            Image(
              image: AssetImage(offerCardItems[offerscardIndex].imgUrl),
              width: 200,
            ),
            Container(
              width: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    offerCardItems[offerscardIndex].titleOne,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(offerCardItems[offerscardIndex].titleTwo),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
