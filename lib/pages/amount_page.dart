import 'package:bkash_ui/model/purpose_model.dart';
import 'package:bkash_ui/pages/pin_page.dart';
import 'package:bkash_ui/widgets/purpose_sendMoney_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmmountPage extends StatelessWidget {
  const AmmountPage({Key? key}) : super(key: key);

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
        MaterialPageRoute(builder: (context) => ReferencePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE11471),
        toolbarHeight: 65,
        title: Center(
          child: Text(
            'Send Money',
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        iconTheme: IconThemeData(
          size: 30,
          color: Colors.white, // Change this color to your desired color
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0, right: 12.0),
            child: InkWell(
              child: SizedBox(
                width: 34,
                height: 34,
                child: Image.asset('assets/logo.png'),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.4),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'To',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 5, 0, 8),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/user.png',
                              width: 65,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abdur Rakib Rafi',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('01743340440'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.3),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Amount',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(130.0, 0, 0, 0),
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFE11471)),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '৳0',
                                hintStyle: TextStyle(
                                  fontSize: 48,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    showLoadingAnimation(context);
                                  },
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: Icon(
                                      Icons.arrow_forward_outlined,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Available Balance:',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  ' ৳8100.20',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              PurposeWidget(),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.3)),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/fnf.png'),
                      width: 40,
                    ),
                    Text(
                      'Add this number to my Priyo list',
                      style: TextStyle(
                          color: Color(0xFFE11471),
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
