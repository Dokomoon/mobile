import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewsSongs extends StatelessWidget {
  const NewsSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News Songs")),
      body: Column(
        children: [
          // 🔽 Put the debug button here temporarily
          ElevatedButton(
            onPressed: () async {
              var snap =
                  await FirebaseFirestore.instance.collection('Songs').get();
              print("Songs found: ${snap.docs.length}");
              if (snap.docs.isNotEmpty) {
                print("First song: ${snap.docs.first.data()}");
              }
            },
            child: Text("Test Firestore"),
          ),

          Expanded(child: NewsSongs()), // Your original widget
        ],
      ),
    );
  }
}
