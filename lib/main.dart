import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FireBaseConfigration(),
  ));
}

class FireBaseConfigration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, AsyncSnapshot<FirebaseApp> dataSnapshot) {
          if (dataSnapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text('Error'),
              ),
            );
          } else if (dataSnapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              body: Center(
                child: Text('done'),
              ),
            );
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
