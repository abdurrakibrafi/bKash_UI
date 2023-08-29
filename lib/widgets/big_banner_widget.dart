import 'package:flutter/cupertino.dart';

class BigBannerWidget extends StatelessWidget {
  const BigBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Image(
        image: AssetImage('assets/big_banner.jpg'),
      ),
    );
  }
}
