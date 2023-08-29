import 'package:bkash_ui/model/contact_model.dart';
import 'package:bkash_ui/pages/SendMoney_Page.dart';
import 'package:bkash_ui/pages/amount_page.dart';
import 'package:flutter/material.dart';

class RecentContactWidget extends StatelessWidget {
  const RecentContactWidget({
    Key? key,
  }) : super(key: key);

  void showLoadingAnimation(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismissing the dialog
      builder: (context) {
        return Center(
          child: Center(
            child: Image(image: AssetImage('assets/loading.gif')),
          ),
        );
      },
    );

    // Simulate a short delay before navigating
    Future.delayed(Duration(seconds: 1), () {
      // Hide the loading animation dialog
      Navigator.of(context).pop();

      // Navigate to the next page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AmmountPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<AppContact> recentList = [
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Abdur Rakib Rafi",
          cNumber: "01123456789",
          cName: "Abdur Rakib Rafi"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Recents",
          cNumber: "01123456789",
          cName: "Tabbusum Ruhi"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Recents",
          cNumber: "01123456789",
          cName: "John Doe"),
    ];
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(6),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.2)),
            child: Text(
              'Recent',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            )),
        Container(
            height: 240,
            padding: EdgeInsets.all(6),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.14)),
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: recentList.length,
                itemBuilder: (context, index) {
                  final item = recentList[index];
                  return GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        showLoadingAnimation(context);
                      } else if (index == 1 || index == 2) {
                        showLoadingAnimation(context);
                      }
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            item.cImage,
                            width: 65,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.cName,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(item.cNumber),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
