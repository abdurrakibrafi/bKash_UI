import 'package:bkash_ui/model/contact_model.dart';
import 'package:flutter/material.dart';

class MyContactWidget extends StatelessWidget {
  const MyContactWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<AppContact> myContact = [
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "My Contacts",
          cNumber: "01123456789",
          cName: "Father"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "My Contacts",
          cNumber: "01123456789",
          cName: "Mother 2"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Recents",
          cNumber: "01123456789",
          cName: "Shihab Uddin Emon"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Recents",
          cNumber: "01123456789",
          cName: "Rasheda Begum"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Recents",
          cNumber: "01123456789",
          cName: "John Doe"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Contacts",
          cNumber: "01123456789",
          cName: "Anik"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Contacts",
          cNumber: "01123456789",
          cName: "Amar"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Contacts",
          cNumber: "01123456789",
          cName: "Akbar"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Contacts",
          cNumber: "01123456789",
          cName: "Anthony"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Contacts",
          cNumber: "01123456789",
          cName: "Sujon Khan"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Contacts",
          cNumber: "01123456789",
          cName: "Rasel Mia"),
      AppContact(
          cId: "0",
          cImage: "assets/user.png",
          cType: "Contacts",
          cNumber: "01123456789",
          cName: "Abzal Hossain"),
    ];

    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(6),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.2)),
            child: Text(
              'All Contact',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            )),
        Container(
            height: 900,
            padding: EdgeInsets.all(6),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.14)),
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: myContact.length,
                itemBuilder: (context, index) {
                  final item = myContact[index];
                  return Row(
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
                  );
                }))
      ],
    );
  }
}
