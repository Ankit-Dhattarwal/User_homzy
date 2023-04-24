import 'package:flutter/material.dart';
import 'package:final_homzy/main.dart';
import 'package:final_homzy/payment_screen/payment_card.dart';

class payMethod extends StatefulWidget {
  @override
  _payMethodState createState() => _payMethodState();
}

class _payMethodState extends State<payMethod> {
  int _selectedPaymentMethod = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Payment', style: TextStyle(fontSize: 25),),
        // other properties like title, actions, etc.
      ),
      body: Container(
        child: Column(
          children: [
            SingleChildScrollView(
                child: Container(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: RadioListTile(
                          title: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Master Card',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 10),
                                Image.asset(
                                  'assets/payment_icon/master_card-removebg-preview.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                          value: 0,
                          groupValue: _selectedPaymentMethod,
                          onChanged: (value) {
                            if (value != null) { // Add null check
                              setState(() {
                                _selectedPaymentMethod = value;
                              });
                            }
                          },
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: RadioListTile(
                          title: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Google Pay',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 10),
                                Image.asset(
                                  'assets/payment_icon/google_pay_3.3-removebg-preview.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                          value: 1,
                          groupValue: _selectedPaymentMethod,
                          onChanged: (value) {
                            if (value != null) { // Add null check
                              setState(() {
                                _selectedPaymentMethod = value;
                              });
                            }
                          },
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: RadioListTile(
                          title: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Phone Pay',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 10),
                                Image.asset(
                                  'assets/payment_icon/phone_pay-removebg-preview.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                          value: 2,
                          groupValue: _selectedPaymentMethod,
                          onChanged: (value) {
                            if (value != null) { // Add null check
                              setState(() {
                                _selectedPaymentMethod = value;
                              });
                            }
                          },
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: RadioListTile(
                          title: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'CASH',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 8),
                                Image.asset(
                                  'assets/payment_icon/cash_pay-removebg-preview.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                          value: 3,
                          groupValue: _selectedPaymentMethod,
                          onChanged: (value) {
                            if (value != null) { // Add null check
                              setState(() {
                                _selectedPaymentMethod = value;
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),


            GestureDetector(
              onTap: () {
                if (_selectedPaymentMethod == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PayCardScreen(),
                    ),
                  );
                } else if (_selectedPaymentMethod == 1) {
                  // Navigate to Google Pay screen
                }
              },
              child: Container(
                width: double.infinity,
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
