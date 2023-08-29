import 'package:bkash_ui/widgets/animatedButton_widget.dart';
import 'package:bkash_ui/widgets/confirm_sendMoney_widget.dart';
import 'package:flutter/material.dart';

class WidgetOfDialogBox extends StatelessWidget {
  const WidgetOfDialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0, right: 12.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                  width: 34,
                  height: 34,
                  child: Icon(
                    Icons.close_sharp,
                    size: 30,
                    color: Colors.pink,
                  )),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Confirm to",
                          style: TextStyle(
                              color: Color(0xFFE11471),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Send Money",
                            style: TextStyle(
                                color: Color(0xFFE11471),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 6),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/user.png',
                            width: 65,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                            child: Column(
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
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 2, 12, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text('৳ 505.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15))
                            ],
                          ),
                          Container(
                            color: Colors.black12,
                            width: 2,
                            height: 50,
                          ),
                          Column(
                            children: [
                              Text('New Balance',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                              SizedBox(
                                height: 3,
                              ),
                              Text('৳ 11505.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 2, 38, 0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: const [
                                Text('Reference',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text('N/A',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15))
                              ],
                            ),
                          )),
                          Container(
                            color: Colors.black12,
                            width: 2,
                            height: 50,
                          ),
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: const [
                                Text(''),
                                SizedBox(
                                  height: 4,
                                ),
                                Text('')
                              ],
                            ),
                          )),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset(
                            'assets/fnf.png',
                            width: 45,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'You can Send Money free up ro\n25,000 TK monthly to adding Priyo\nnumber',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedButton(
              // onComplete: _onConfirmed(context),
              onComplete: () {
                Navigator.pop(context);
                showDialog(
                    context: context,
                    /*builder: (context) => DialogAnim()*/
                    builder: (context) => const Dialog(
                          insetPadding: EdgeInsets.all(20),
                          child: WidgetOfConfirmation(),
                        ));
              },
            ),
          )
        ],
      ),
    );
  }

  _onConfirmed(BuildContext context) {
    showDialog(
        context: context,
        /*builder: (context) => DialogAnim()*/
        builder: (context) => const Dialog(
              insetPadding: EdgeInsets.all(20),
              child: WidgetOfConfirmation(),
            ));
  }
}
