import 'package:bkash_ui/pages/amount_page.dart';
import 'package:bkash_ui/widgets/dialog_box._widget.dart';
import 'package:flutter/material.dart';

class ReferencePage extends StatelessWidget {
  const ReferencePage({Key? key}) : super(key: key);

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
      body: Container(
        margin: EdgeInsets.all(12),
        child: Column(
          children: [
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
                border: Border.all(color: Colors.grey, width: 0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Amount',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text('৳5.00'),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Charge',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        Text('৳0.00'),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Total',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        Text('৳5.00'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reference',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                              hintText: 'Tap to add a note',
                              border: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text('0/50'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.lock,
                      color: Color(0xFFE11471),
                      size: 30,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(110.0, 0, 0, 0),
                        child: TextField(
                          autofocus: true,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter PIN',
                            hintStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            //for showing dialog box WidgetOfDialogBox
                            suffixIcon: InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    /*builder: (context) => DialogAnim()*/
                                    builder: (context) => const Dialog(
                                          insetPadding: EdgeInsets.all(20),
                                          child: WidgetOfDialogBox(),
                                        ));
                              },
                              child: Icon(
                                Icons.arrow_forward_outlined,
                                size: 30,
                              ),
                            ), // Replace with the desired icon
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
