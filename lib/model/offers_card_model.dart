import 'package:bkash_ui/data/offers_card_data.dart';

class OffersModel {
  final int oid;
  final String imgUrl;
  final String titleOne;
  final String titleTwo;
  final String NotifyImg;
  final String NotifyImg2;
  final String NotifyTitleOne;
  final String NotifyTitleTwo;

  OffersModel({
    required this.oid,
    required this.imgUrl,
    required this.titleOne,
    required this.titleTwo,
    required this.NotifyImg,
    required this.NotifyImg2,
    required this.NotifyTitleOne,
    required this.NotifyTitleTwo,
  });

  OffersModel copyWith({
    int? oid,
    String? imgUrl,
    String? titleOne,
    String? titleTwo,
    String? NotifyImg,
    String? NotifyImg2,
    String? NotifyTitleOne,
    String? NotifyTitleTwo,
  }) {
    return OffersModel(
      oid: oid ?? this.oid,
      imgUrl: imgUrl ?? this.imgUrl,
      titleOne: titleOne ?? this.titleOne,
      titleTwo: titleTwo ?? this.titleTwo,
      NotifyImg: NotifyImg ?? this.NotifyImg,
      NotifyImg2: NotifyImg2 ?? this.NotifyImg2,
      NotifyTitleOne: NotifyTitleOne ?? this.NotifyTitleOne,
      NotifyTitleTwo: NotifyTitleTwo ?? this.NotifyTitleTwo,
    );
  }
}
