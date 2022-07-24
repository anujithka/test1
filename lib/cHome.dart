import 'package:flutter/material.dart';
import 'package:eventmanagement/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class cHome extends StatefulWidget {
  const cHome({Key? key}) : super(key: key);

  @override
  State<cHome> createState() => _cHomeState();
}

void getCurrentUser() {}

class _cHomeState extends State<cHome> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;
  void getCurrentuser() async {
    try {
      final user = _auth.currentUser!;
      loggedInUser = user;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.red),
    );
  }
}
