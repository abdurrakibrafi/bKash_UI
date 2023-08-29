import 'package:bkash_ui/data/offers_card_data.dart';
import 'package:bkash_ui/model/offers_card_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OffersNotifyer extends StateNotifier<List<OffersModel>> {
  OffersNotifyer() : super(offersModel);
}

final OfferscardNotifyerProvider =
    StateNotifierProvider<OffersNotifyer, List<OffersModel>>((ref) {
  return OffersNotifyer();
});
