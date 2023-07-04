import 'package:flutter/material.dart';

void main() {
  runApp(BloodDonationApp());
}

class BloodDonationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Donation Network',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Donation Network'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DonorRegistrationPage()),
                );
              },
              child: Text('Register as a Donor'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipientRegistrationPage()),
                );
              },
              child: Text('Register as a Recipient'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DonationCenterLocatorPage()),
                );
              },
              child: Text('Find Donation Centers'),
            ),
          ],
        ),
      ),
    );
  }
}

class DonorRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donor Registration'),
      ),
      body: Center(
        child: Text('Donor Registration Form'),
      ),
    );
  }
}

class RecipientRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipient Registration'),
      ),
      body: Center(
        child: Text('Recipient Registration Form'),
      ),
    );
  }
}

class DonationCenterLocatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donation Center Locator'),
      ),
      body: Center(
        child: Text('Donation Center Locator'),
      ),
    );
  }
}
