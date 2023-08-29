import 'package:bkash_ui/model/transaction_model.dart';
import 'package:bkash_ui/utilis/TextTheme_utilis.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatefulWidget {
  const TransactionWidget({Key? key}) : super(key: key);

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  @override
  Widget build(BuildContext context) {
    final List<TransactionModel> list = [
      TransactionModel(
          tId: "9HEFG65JH",
          tImage: "assets/profile.png",
          tType: "Send money",
          tName: "Salman",
          tAmt: "- ৳5000",
          tTime: "7:20 AM 22/08/2022",
          tCode: 2),
      TransactionModel(
          tId: "7HBFHHSJS",
          tImage: "assets/daraz.jpg",
          tType: "Payment",
          tName: "Daraz",
          tAmt: "- ৳2090",
          tTime: "12:38 PM 21/08/2022",
          tCode: 2),
      TransactionModel(
          tId: "X7GDHSMNK",
          tImage: "assets/add_money.jpg",
          tType: "Cash in",
          tName: "RK Telecom",
          tAmt: "+500",
          tTime: "8:17 AM 21/08/2022",
          tCode: 1),
      TransactionModel(
          tId: "QWEJCNDJM",
          tImage: "assets/airtel.jpg",
          tType: "Postpaid Bill",
          tName: "Airtel Biller",
          tAmt: "- ৳400",
          tTime: "11:22 PM 19/08/2022",
          tCode: 2),
      TransactionModel(
          tId: "9JGHBNBDC",
          tImage: "assets/cash_out.jpg",
          tType: "Received Money",
          tName: "Imtiaz",
          tAmt: "+ ৳500",
          tTime: "9:20 AM 18/08/2022",
          tCode: 1),
      TransactionModel(
          tId: "DABDHBHDD",
          tImage: "assets/card_bill.jpg",
          tType: "Card Bill",
          tName: "EVAN",
          tAmt: "- ৳25000",
          tTime: "1:20 AM 17/08/2022",
          tCode: 2),
      TransactionModel(
          tId: "EVANMJJDJ",
          tImage: "assets/mobile_recharge.jpg",
          tType: "Top-up",
          tName: "0187*******",
          tAmt: "- ৳1000",
          tTime: "7:20 AM 22/08/2022",
          tCode: 2),
      TransactionModel(
          tId: "UBDBHSJSC",
          tImage: "assets/profile.png",
          tType: "Send money",
          tName: "Salman",
          tAmt: "- ৳9000",
          tTime: "7:20 AM 22/08/2022",
          tCode: 2),
      TransactionModel(
          tId: "KITHBDBDF",
          tImage: "assets/profile.png",
          tType: "Send money",
          tName: "Salman",
          tAmt: "- ৳100",
          tTime: "7:20 AM 22/08/2022",
          tCode: 2),
      TransactionModel(
          tId: "IRO56MAND",
          tImage: "assets/profile.png",
          tType: "Send money",
          tName: "Salman",
          tAmt: "- ৳5000",
          tTime: "7:20 AM 22/08/2022",
          tCode: 2),
    ];
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final item = list[index];
          return Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        offset: const Offset(2, 6),
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 15,
                        spreadRadius: 2)
                  ]),
                  child: Card(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  item.tImage,
                                ),
                                height: 60,
                                width: 60,
                                fit: BoxFit.fitWidth,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.tType,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      item.tName,
                                      style: TextStyle(color: Colors.grey[700]),
                                    ),
                                    Text(
                                      item.tId,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(item.tAmt, style: colorSystem(item.tCode)),
                              Text(
                                item.tTime,
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
