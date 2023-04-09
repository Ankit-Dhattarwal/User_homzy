import 'package:flutter/material.dart';
import 'package:final_homzy/small_serice/account_page.dart';
import 'package:final_homzy/small_serice/small_service_page.dart';


class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  TextEditingController _cityController = TextEditingController();
  TextEditingController _houseNumberController = TextEditingController();
  TextEditingController _colonyNameController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _cityController,
              decoration: InputDecoration(
                hintText: 'City name',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _houseNumberController,
              decoration: InputDecoration(
                hintText: 'House number',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _colonyNameController,
              decoration: InputDecoration(
                hintText: 'Colony name',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                hintText: 'Description',
              ),
              maxLines: 3,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String city = _cityController.text;
                String houseNumber = _houseNumberController.text;
                String colonyName = _colonyNameController.text;
                String location = '$houseNumber, $colonyName, $city';
                String description = _descriptionController.text;
                // Do something with the entered location and description
              },
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ServiceInfo()),
                  );
                },
                  child: Text('Submit')),
            ),
          ],
        ),
      ),
    );
  }
}
