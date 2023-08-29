import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 20, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Placeholder for your content
                    Text(
                      'bkash Menu',
                      style: TextStyle(
                        color: Color(0xFFE11471),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(color: Colors.pink, width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                40), // Optional: Add rounded corners
                          ),
                        ),
                        child: Text(
                          'বাংলা',
                          style: TextStyle(color: Color(0xFFE11471)),
                        ))
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/home.png'),
                      color: Color(0xFFE11471),
                      width: 34,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                    indent: 10,
                    endIndent: 10,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/bar-graph.png'),
                      color: Color(0xFFE11471),
                      width: 34,
                    ),
                    title: Text(
                      'Statement',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                    indent: 10,
                    endIndent: 10,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/alert_icon.png'),
                      color: Color(0xFFE11471),
                      width: 34,
                    ),
                    title: Text(
                      'Limits',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                    indent: 10,
                    endIndent: 10,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/ticket.png'),
                      color: Color(0xFFE11471),
                      width: 34,
                    ),
                    title: Text(
                      'Cupones',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                    indent: 10,
                    endIndent: 10,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/refer_a_friend.png'),
                      color: Color(0xFFE11471),
                      width: 34,
                    ),
                    title: Text(
                      'Refer bkash App',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                    indent: 10,
                    endIndent: 10,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/location.png'),
                      color: Color(0xFFE11471),
                      width: 34,
                    ),
                    title: Text(
                      'bkash Map',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                    indent: 10,
                    endIndent: 10,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/discover.png'),
                      color: Color(0xFFE11471),
                      width: 34,
                    ),
                    title: Text(
                      'Discover bkash',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                    indent: 10,
                    endIndent: 10,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/settings.png'),
                      color: Color(0xFFE11471),
                      width: 34,
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                    indent: 10,
                    endIndent: 10,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/support.png'),
                      color: Color(0xFFE11471),
                      width: 34,
                    ),
                    title: Text(
                      'Support',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                    indent: 10,
                    endIndent: 10,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Image(
                      image: AssetImage('assets/log_out.png'),
                      color: Color(0xFFE11471),
                      width: 34,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
