import 'package:flutter/material.dart';
import 'package:friends_list/components/text.dart';

class FriendsInfo extends StatelessWidget {
  final Map<String, dynamic> friend;

  FriendsInfo(this.friend);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: AppText(
            text: friend['name'],
            size: 24,
            color: Colors.white,
            isBold: true,
          ),
          leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(friend['pic'] ?? 'default.jpg'),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.deepPurple, width: 10),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  text: 'Name: ',
                  size: 24,
                  color: Colors.black,
                ),
                AppText(
                    text: friend['name'],
                    size: 24,
                    color: Colors.black,
                    isBold: true),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  text: 'Birthday: ',
                  size: 24,
                  color: Colors.black,
                ),
                AppText(
                    text: friend['bday'],
                    size: 24,
                    color: Colors.black,
                    isBold: true),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  text: 'Gender: ',
                  size: 24,
                  color: Colors.black,
                ),
                AppText(
                    text: friend['gender'],
                    size: 24,
                    color: Colors.black,
                    isBold: true),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Age:',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  '${friend['age']}',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
