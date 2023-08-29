import 'package:bkash_ui/pages/SendMoney_Page.dart';
import 'package:bkash_ui/pages/inbox_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/home_page_first_part_data.dart';

class PartOneHome extends StatefulWidget {
  const PartOneHome({Key? key}) : super(key: key);

  @override
  State<PartOneHome> createState() => _PartOneHomeState();
}

class _PartOneHomeState extends State<PartOneHome> {
  bool isExpanded = false;
//see more toggle
  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  //loading part
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
        MaterialPageRoute(builder: (context) => SendMoneyPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double containerHeight =
        isExpanded ? 380 : 240; // Adjust the heights as needed
    return Container(
      height: containerHeight,
      padding: EdgeInsets.all(0.0), // Add padding for the shadow effect
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: GridView.builder(
                  physics:
                      NeverScrollableScrollPhysics(), //cannot scroll the gridview section
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Check if the first item is tapped (index 0)
                        if (index == 0) {
                          showLoadingAnimation(context);
                        }
                        // You can add similar navigation logic for other items here
                      },
                      child: Container(
                        child: menuodel[index],
                      ),
                    );
                  },
                  itemCount: menuodel.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 14,
                  ),
                ),
              ),
            ),
            if (isExpanded)
              Positioned(
                top: 300.0,
                right: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors
                        .white, // Set the button background color to white
                    elevation: 1, // Remove the default button elevation
                    shadowColor: Colors
                        .transparent, // Make the button's shadow transparent
                  ),
                  onPressed: toggleExpansion,
                  child: Text(isExpanded ? 'Close' : 'See More',
                      style: TextStyle(color: Colors.pink)),
                ),
              )
            else
              Positioned(
                top: 190.0,
                right: 150,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(2, 6),
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 96,
                          spreadRadius: 3),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .white, // Set the button background color to white
                      elevation: 1, // Remove the default button elevation
                      shadowColor: Colors
                          .transparent, // Make the button's shadow transparent
                    ),
                    onPressed: toggleExpansion,
                    child: Text(isExpanded ? 'Close' : 'See More',
                        style: TextStyle(color: Colors.pink)),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
