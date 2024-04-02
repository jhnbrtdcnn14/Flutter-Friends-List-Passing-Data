import 'package:flutter/material.dart';
import '../components/text.dart';
import 'friends_info.dart';

class FriendsList extends StatelessWidget {
  final List<Map<String, dynamic>> friends;

  FriendsList(this.friends);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: friends.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListTile(
            minVerticalPadding: 20,
            leading: CircleAvatar(
              child: AppText(
                text: friends[index]['name'][0],
                size: 24,
                color: Colors.white,
                isBold: true,
              ),
              backgroundColor: Colors.deepPurple,
            ),
            title: Text(friends[index]['name']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FriendsInfo(friends[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
