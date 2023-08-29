import 'package:bkash_ui/model/purpose_model.dart';
import 'package:flutter/material.dart';

class PurposeWidget extends StatelessWidget {
  const PurposeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<WiseApp> wiseApp = [
      WiseApp(pId: '0', pImage: 'assets/send.jpg', pType: 'Send Money'),
      WiseApp(pId: '1', pImage: 'assets/gift.jpg', pType: 'Gift'),
      WiseApp(pId: '2', pImage: 'assets/birthday.jpg', pType: 'Birthday'),
      WiseApp(pId: '3', pImage: 'assets/wedding.jpg', pType: 'Aniversary'),
      WiseApp(pId: '2', pImage: 'assets/thanks.jpg', pType: 'Thanks'),
    ];
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.3, color: Colors.grey),
      ),
      child: SizedBox(
        height: 180,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: wiseApp.length,
          itemBuilder: (context, index) {
            final item = wiseApp[index];
            return Container(
              width: 140,
              padding: EdgeInsets.all(6),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(item.pImage),
                      width: 140,
                    ),
                    Container(
                      width: 110,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 3),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                item.pType,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
