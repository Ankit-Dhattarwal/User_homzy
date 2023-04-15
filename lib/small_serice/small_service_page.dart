import 'package:flutter/material.dart';
import 'package:final_homzy/small_serice/takedata_page.dart';


 class ServiceInfo extends StatefulWidget {
   final String name;
   const ServiceInfo({
     Key? key,
     required this.name,
   }) : super(key: key);


  @override

  State<ServiceInfo> createState() => _ServiceInfoState();
}

class _ServiceInfoState extends State<ServiceInfo> {
  Widget containerData(BuildContext context, String serviceName, String line, int price , String descData){
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(serviceName, style: TextStyle(fontSize: 20, color: Colors.black54,fontWeight: FontWeight.bold),),
            Text(line, style: TextStyle(color: Colors.black54, fontSize: 20),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.home_outlined, color: Colors.purpleAccent,),
                          Text('Homzy plus', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blueAccent),),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(price.toString(), style: TextStyle(color: Colors.black54,fontSize: 30, fontWeight: FontWeight.bold),),
              ],
            ),
            Text('Description', style: TextStyle(fontSize: 25, color: Colors.black54,fontWeight: FontWeight.bold),),

            Text(descData,
              style: TextStyle(color: Colors.black54, fontSize: 20),
            ),

            Container(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.white70,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart, color: Colors.black,),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigate to a new screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LocationScreen()),
                        );
                      },
                      child:Text('Book', style: TextStyle(fontSize: 20, color: Colors.black),),
                    )


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0.0,
      //   title: Text(""),
      //   backgroundColor: Colors.blue,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black,),
        //   onPressed: (){
        //
        //   },
        // ),
      // ),
      body: Column(
        children: [
          Expanded(
            child: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage('assets/sub_service/470110063 (1).jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),// As u wise use or not  by default flex is always 1
          ),
          containerData(context,
          widget.name, 'we provide the best service', 599  , 'Plumbers install and repair pipes and fixtures that carry water, gas, or other fluids in homes and businesses'),

          // Divider(
          //   color: Colors.grey,
          //   thickness: 1,
          // ),
        ],
      ),
    );
  }
}

