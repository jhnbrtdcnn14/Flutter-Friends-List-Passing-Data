import 'package:flutter/material.dart';
import 'package:friends_list/screens/friends_list.dart';
import '../components/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> friends = [
    {
      'name': 'Zildjan Leenor',
      'age': 21,
      'bday': '02/18/2003',
      'gender': 'Male',
      'pic': 'zild.jpg'
    },
    {
      'name': 'Kian June Catubig',
      'age': 21,
      'bday': '7/6/2002',
      'gender': 'Male',
      'pic': 'kj.jpg'
    },
    {
      'name': 'Paul Gutierrez',
      'age': 22,
      'bday': 'February 18, 2003',
      'gender': 'Male',
      'pic': 'paul.jpg'
    },
    {
      'name': 'Jamaikha Mitucua',
      'age': 21,
      'bday': '12/15/2001',
      'gender': 'Female',
      'pic': 'jam.jpg'
    },
    {
      'name': 'Mary Precious Navares',
      'age': 21,
      'bday': '12/15/2001',
      'gender': 'Female',
      'pic': 'mary.jpg'
    },
    {
      'name': 'Wenjoy Ybas',
      'age': 21,
      'bday': '09/18/2002',
      'gender': 'Female',
      'pic': 'wenjoy.jpg'
    },
    {
      'name': 'Khyle Rafols',
      'age': 21,
      'bday': '10/25/2002',
      'gender': 'Male',
      'pic': 'khyle.jpg'
    },
    {
      'name': 'Venice Manatad ',
      'age': 21,
      'bday': '04/19/2002',
      'gender': 'Male',
      'pic': 'venice.jpg'
    },
    {
      'name': 'Jose Rey Alfante',
      'age': 21,
      'bday': '7/2/2003',
      'gender': 'Male'
    },
    {
      'name': 'Jherico Tabulong',
      'age': 21,
      'bday': '7/2/2003',
      'gender': 'Male'
    },
    {
      'name': 'Louie Jay Natividad',
      'age': 21,
      'bday': '3/6/2003',
      'gender': 'Male'
    },

    // Add more friends as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: AppText(
              text: 'Top 10 friends',
              size: 20,
              color: Colors.white,
              isBold: true),
        ),
      ),
      body: FriendsList(friends),
    );
  }
}
