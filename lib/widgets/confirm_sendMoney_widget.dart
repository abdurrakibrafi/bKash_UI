import 'package:bkash_ui/widgets/appbar_widget.dart';
import 'package:bkash_ui/widgets/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';

class WidgetOfConfirmation extends StatelessWidget {
  const WidgetOfConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Your',
                        style: TextStyle(
                            color: Color(0xFFE11471),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Send Mony',
                        style: TextStyle(
                            color: Color(0xFFE11471),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 5,
                    ),
                    Text('is',
                        style: TextStyle(
                            color: Color(0xFFE11471),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Succesfull',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                        )),
                    Image.asset(
                      'assets/success.jpg',
                      width: 33,
                    )
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
                  padding: const EdgeInsets.fromLTRB(4, 2, 40, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Time',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text('08:00 PM 02/09/23',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14))
                        ],
                      ),
                      Container(
                        color: Colors.black12,
                        width: 2,
                        height: 50,
                      ),
                      Column(
                        children: [
                          Text('Transaction ID',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16)),
                          SizedBox(
                            height: 3,
                          ),
                          Text('AXIDRE4FUJG9',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14))
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
                  padding: const EdgeInsets.fromLTRB(25, 2, 12, 5),
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
                                  fontWeight: FontWeight.w500, fontSize: 15))
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
                                  fontWeight: FontWeight.w600, fontSize: 16)),
                          SizedBox(
                            height: 3,
                          ),
                          Text('৳ 11505.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15))
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
                  padding: const EdgeInsets.fromLTRB(15, 2, 38, 0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: const [
                            Text('Reference',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16)),
                            SizedBox(
                              height: 4,
                            ),
                            Text('N/A',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15))
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
                Center(
                  child: Container(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(color: Colors.pink, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              40), // Optional: Add rounded corners
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone_callback, // Choose your icon
                            color: Colors.pink,
                          ),
                          SizedBox(
                              width: 8), // Add spacing between icon and text
                          Text(
                            'Call',
                            style: TextStyle(color: Colors.pink, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  indent: 10,
                  endIndent: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 131, 0, 0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 54,
                color: Colors.pink,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Back to Home',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomNavigation()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
