import 'package:bkash_ui/data/my_bkash_data.dart';
import 'package:flutter/material.dart';

class BottomModelWidget extends StatelessWidget {
  const BottomModelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Bkash',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  'See More',
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Container(
                color: Colors.white,
                height: 200,
                child: GridView.builder(
                  physics:
                      NeverScrollableScrollPhysics(), //cannot scroll the gridview section
                  itemBuilder: (context, index) {
                    return Container(
                      child: myBkash[index],
                    );
                  },
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
