import 'package:eventmanagement/RoundedButton.dart';
import 'package:eventmanagement/communityScreens/eventCreate.dart';
import 'package:flutter/material.dart';
import 'package:eventmanagement/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventCreate()));
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Hi!  aaaa',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.green,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            RoundedButton(
                title: 'Log out',
                colour: Color(0xff484bf2),
                onPressed: () => FirebaseAuth.instance.signOut())
          ],
        ),
      ),

      //
    );
  }
}
