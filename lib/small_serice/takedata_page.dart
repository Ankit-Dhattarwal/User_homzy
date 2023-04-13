import 'package:flutter/material.dart';
import 'package:final_homzy/small_serice/account_page.dart';
import 'package:final_homzy/small_serice/small_service_page.dart';
import 'package:final_homzy/main.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  TextEditingController _cityController = TextEditingController();
  TextEditingController _colonyController = TextEditingController();
  TextEditingController _houseNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Address Details'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 16.0),
            Text(
              'City Name:',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _cityController,
              decoration: InputDecoration(
                hintText: 'Enter City Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Colony Name:',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _colonyController,
              decoration: InputDecoration(
                hintText: 'Enter Colony Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'House Number:',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _houseNumberController,
              decoration: InputDecoration(
                hintText: 'Enter House Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Upload Image'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
