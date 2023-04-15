import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:final_homzy/small_serice/account_page.dart';
import 'package:final_homzy/small_serice/takedata_page.dart';
import 'package:final_homzy/small_serice/booked_service.dart';
import 'package:final_homzy/small_serice/small_service_salon.dart';
import 'package:final_homzy/small_serice/small_service_page.dart';



void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // final List<Image> images = [
  //   Image.asset(
  //     'assets/carsoul_image/salon_banner.jpeg',
  //     fit: BoxFit.contain,
  //   ),
  //   Image.asset(
  //     'assets/carsoul_image/massage_salon_men.jpeg',
  //     fit: BoxFit.contain,
  //   ),
  //   Image.asset(
  //     'assets/carsoul_image/plumber_banner.jpeg',
  //     fit: BoxFit.contain,
  //   ),
  //   Image.asset(
  //     'assets/carsoul_image/electric_banner.jpeg',
  //     fit: BoxFit.contain,
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Service Provider',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  Widget SalonServiceConatiner(BuildContext context, String image, String name1, String name2){
    return  Column(
      children: [
        Container(
          height : 150,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ServiceInfo(name: name1 + name2,)),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3),
                        topRight: Radius.circular(3),
                        bottomLeft: Radius.circular(3),
                        bottomRight: Radius.circular(3),
                      ),
                      child: Image.asset(image, height: 100, width: 100, fit: BoxFit.cover,),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(name2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget ServiceCategories(BuildContext context, String image , String name1, String name2){
    return Column(
      children: [
        Container(
          height : 200,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ServiceInfo(name: name1+name2,)),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      child: Image.asset(image, height: 150, width: 150, fit: BoxFit.cover,),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(name2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget SmallCategories(BuildContext context , String image , String name){
    return  Flexible(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFe9e4f4),
        ),
        margin: EdgeInsets.only(left: 10, right: 10),
        height: 100,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset(image, height: 50, width: 50),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.all(0.5),
              child: Center(child:
              Text(name,
                style:
                TextStyle(fontSize: 16,
                  color:
                  Colors.black54,
                ),
              ),
              ),
            ),
          ],
        ),

      ),
    );
  }
  Widget SmallCategoriesBasic(BuildContext context, String image, String name){
    return  Flexible(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFe9e4f4),
        ),
        margin: EdgeInsets.only(left: 10),
        height: 100,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset(image, height: 50, width: 50),
            ),

            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.all(0.5),
              child: Center(child:
              Text(name,
                style:
                TextStyle(fontSize: 16,
                  color:
                  Colors.black54,
                ),
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
      appBar: AppBar(
        title: Text('Homzy'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('123 Main Street'),
                        Text('New York, NY 10001'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SmallCategories(
                  context,
                  "assets/images/spa.png",
                  "Women Spa",
                ),
                SmallCategories(
                  context,
                  "assets/images/massage.png",
                  "Men Massage",
                ),
              ],
            ),
            Container(
              height: 150,
              child: Row(
                //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallCategoriesBasic(context,
                    "assets/images/cleaning.png",
                    "Cleaning",
                  ),
                  SmallCategoriesBasic(context,
                    "assets/images/painting.png",
                    "Painting",
                  ),
                  SmallCategoriesBasic(context,
                    "assets/images/Repair.png",
                    "Repair",
                  ),
                  // Flexible(
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(20),
                  //       color: Color(0xFFf5f1ff),
                  //     ),
                  //     margin: EdgeInsets.only(left: 10),
                  //     height: 100,
                  //     width: 200,
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         CircleAvatar(
                  //           backgroundImage: Image.network('https://i.pinimg.com/736x/27/1a/f2/271af23f2c93e1cc121925c0f2b9c9c8--vacuum-cleaners-vacuums.jpg',fit: BoxFit.cover,).image,
                  //           radius: 25,
                  //         ),
                  //         SizedBox(height: 8),
                  //         Padding(
                  //           padding: EdgeInsets.all(0.5),
                  //           child: Center(child:
                  //           Text('Haircut',
                  //             style:
                  //             TextStyle(fontSize: 16,
                  //               color:
                  //               Color(0xFFc4c4e8),
                  //             ),
                  //           ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 200,
            //   width: double.infinity,
            //   child: Carousel(
            //     dotColor: Colors.lightBlue,
            //     dotBgColor: Colors.transparent,
            //     dotSize: 9.0,
            //     dotSpacing: 20.0,
            //     dotPosition: DotPosition.bottomCenter,
            //     autoplay: true,
            //     animationCurve: Curves.fastOutSlowIn,
            //     animationDuration: Duration(milliseconds: 1000),
            //     images: images,
            //     indicatorBgPadding: 5.0,
            //     borderRadius: false,
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),  // carsoul    // carsoual

            // carsoual bar here.
            // Row(
            //   children: [
            //     Expanded(
            //       child: Column(
            //         children: [
            //           Container(
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               image: DecorationImage(
            //                 image: AssetImage('Assets/images/Plumber_service.png'),
            //                 fit: BoxFit.contain,
            //               ),
            //             ),
            //             width: 100,
            //             height: 100,
            //             // child: Image.asset('path_to_your_image'),
            //           ),
            //           //  SizedBox(height: 3),
            //           Text(
            //             'Ac Service',
            //             style: TextStyle(
            //               fontSize: 15,
            //               color: Colors.black,
            //               //   fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Expanded(
            //       child: Column(
            //         children: [
            //           Container(
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               image: DecorationImage(
            //                 image: NetworkImage('https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg'),
            //                 fit: BoxFit.contain,
            //               ),
            //             ),
            //             width: 100,
            //             height: 100,
            //             // child: Image.asset('path_to_your_image'),
            //           ),
            //           //  SizedBox(height: 3),
            //           Text(
            //             'Ac Service',
            //             style: TextStyle(
            //               fontSize: 15,
            //               color: Colors.black,
            //               //   fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Expanded(
            //       child: Column(
            //         children: [
            //           Container(
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               image: DecorationImage(
            //                 image: NetworkImage('https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg'),
            //                 fit: BoxFit.contain,
            //               ),
            //             ),
            //             width: 100,
            //             height: 100,
            //             // child: Image.asset('path_to_your_image'),
            //           ),
            //           //  SizedBox(height: 3),
            //           Text(
            //             'Ac Service',
            //             style: TextStyle(
            //               fontSize: 15,
            //               color: Colors.black,
            //               //   fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Column(
            //         children: [
            //           Container(
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               image: DecorationImage(
            //                 image: NetworkImage('https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg'),
            //                 fit: BoxFit.contain,
            //               ),
            //             ),
            //             width: 100,
            //             height: 100,
            //             // child: Image.asset('path_to_your_image'),
            //           ),
            //           //  SizedBox(height: 3),
            //           Text(
            //             'Ac Service',
            //             style: TextStyle(
            //               fontSize: 15,
            //               color: Colors.black,
            //               //   fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Expanded(
            //       child: Column(
            //         children: [
            //           Container(
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               image: DecorationImage(
            //                 image: NetworkImage('https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg'),
            //                 fit: BoxFit.contain,
            //               ),
            //             ),
            //             width: 100,
            //             height: 100,
            //             // child: Image.asset('path_to_your_image'),
            //           ),
            //           //  SizedBox(height: 3),
            //           Text(
            //             'Ac Service',
            //             style: TextStyle(
            //               fontSize: 15,
            //               color: Colors.black,
            //               //   fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Expanded(
            //       child: Column(
            //         children: [
            //           Container(
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               image: DecorationImage(
            //                 image: NetworkImage('https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg'),
            //                 fit: BoxFit.contain,
            //               ),
            //             ),
            //             width: 100,
            //             height: 100,
            //             // child: Image.asset('path_to_your_image'),
            //           ),
            //           //  SizedBox(height: 3),
            //           Text(
            //             'Ac Service',
            //             style: TextStyle(
            //               fontSize: 15,
            //               color: Colors.black,
            //               //   fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // Container(
            //   color: Colors.white,
            //   height: 50,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(left: 20.0),
            //         child: Text(
            //           "Top Rated",
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 25,
            //           ),
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(right: 20.0),
            //         child: Text(
            //           "View All",
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 18,
            //             color: Colors.purpleAccent,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         width: 100,
            //         height: 150,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(8),
            //           color: Colors.grey[200],
            //         ),
            //         child: Image.asset('assets/image1.png'),
            //       ),
            //     ),
            //     SizedBox(width: 10),
            //     Expanded(
            //       child: Container(
            //         width: 100,
            //         height: 150,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(8),
            //           color: Colors.grey[200],
            //         ),
            //         child: Image.asset('assets/image2.png'),
            //       ),
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         width: 100,
            //         height: 150,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(8),
            //           color: Colors.grey[200],
            //         ),
            //         child: Text('Rs.250'),
            //       ),
            //     ),
            //     SizedBox(width: 10),
            //     Expanded(
            //       child: Container(
            //         width: 100,
            //         height: 150,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(8),
            //           color: Colors.grey[200],
            //         ),
            //         child: Text('Rs.300'),
            //       ),
            //     ),
            //   ],
            // ),

            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         Container(
            //           color: Colors.yellow,
            //           height: 150,
            //           width: 150,
            //           child: Column(
            //             children: [
            //               Image.asset(
            //                 'Assets/images/Plumber_service.png',
            //                 fit: BoxFit.cover,
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 'Text 1',
            //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //               ),
            //             ],
            //           ),
            //         ),
            //         SizedBox(width: 10),
            //         Container(
            //           color: Colors.yellow,
            //           height: 150,
            //           width: 150,
            //           child: Column(
            //             children: [
            //               Image.asset(
            //                 'Assets/images/Plumber_service.png',
            //                 fit: BoxFit.cover,
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 'Text 1',
            //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //               ),
            //             ],
            //           ),
            //         ),
            //         SizedBox(width: 10),
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: Colors.red,
            //           ),
            //           height: 150,
            //           width: 150,
            //           child: Column(
            //             children: [
            //               Image.network(
            //                 'https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg',
            //                 fit: BoxFit.contain,
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 'Deep Ac Repair And Cleaning',
            //                 textAlign: TextAlign.start,
            //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Container(
            //           color: Colors.yellow,
            //           height: 150,
            //           width: 150,
            //           child: Column(
            //             children: [
            //               Image.asset(
            //                 'Assets/images/Plumber_service.png',
            //                 fit: BoxFit.cover,
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 'Text 1',
            //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //               ),
            //             ],
            //           ),
            //         ),
            //         SizedBox(width: 10),
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: Colors.red,
            //           ),
            //           height: 150,
            //           width: 150,
            //           child: Column(
            //             children: [
            //               Image.network(
            //                 'https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg',
            //                 fit: BoxFit.contain,
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 'Deep Ac Repair And Cleaning',
            //                 textAlign: TextAlign.start,
            //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         Container(
            //           color: Colors.yellow,
            //           height: 150,
            //           width: 150,
            //           child: Column(
            //             children: [
            //               Image.asset(
            //                 'Assets/images/Plumber_service.png',
            //                 fit: BoxFit.cover,
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 'Text 1',
            //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //               ),
            //             ],
            //           ),
            //         ),
            //         SizedBox(width: 10),
            //         Container(
            //           color: Colors.yellow,
            //           height: 150,
            //           width: 150,
            //           child: Column(
            //             children: [
            //               Image.asset(
            //                 'Assets/images/Plumber_service.png',
            //                 fit: BoxFit.cover,
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 'Text 1',
            //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //               ),
            //             ],
            //           ),
            //         ),
            //         SizedBox(width: 10),
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: Colors.red,
            //           ),
            //           height: 150,
            //           width: 150,
            //           child: Column(
            //             children: [
            //               Image.network(
            //                 'https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg',
            //                 fit: BoxFit.contain,
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 'Deep Ac Repair And Cleaning',
            //                 textAlign: TextAlign.start,
            //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Container(
            //           color: Colors.yellow,
            //           height: 150,
            //           width: 150,
            //           child: Column(
            //             children: [
            //               Image.asset(
            //                 'Assets/images/Plumber_service.png',
            //                 fit: BoxFit.cover,
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 'Text 1',
            //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //               ),
            //             ],
            //           ),
            //         ),
            //         SizedBox(width: 10),
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: Colors.red,
            //           ),
            //           height: 150,
            //           width: 150,
            //           child: Column(
            //             children: [
            //               Image.network(
            //                 'httd_services/de6.jpg',
            //                 fit: BoxFit.contain,
            //               ),
            //               SizedBox(height: 10),
            //               Text(
            //                 'Deep Ac Repair And Cleaning',
            //                 textAlign: TextAlign.start,
            //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),


            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Salon Service",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 20.0),
                  //   child: Text(
                  //     "View All",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 18,
                  //       color: Colors.purpleAccent,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.symmetric( horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SalonServiceConatiner(context,
                        "assets/salon_men/salon_service_men.jpeg",
                        "Haircut &",
                        "styling"),
                    SalonServiceConatiner(context,
                        "assets/salon_men/men_shaving.jpeg",
                        "Shaving",
                        ""),
                    SalonServiceConatiner(context,
                        "assets/salon_men/men_hair_color.jpeg",
                        "Hair",
                        "coloring"),
                    SalonServiceConatiner(context,
                        "assets/salon_men/facila_treatment.jpeg",
                        "Facial",
                        "treatments"),

                    // Container(
                    //   color: Colors.yellow,
                    //   height: 150,
                    //   width: 150,
                    //   child: Column(
                    //     children: [
                    //       Image.asset(
                    //         'Assets/images/Plumber_service.png',
                    //         fit: BoxFit.cover,
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Text 1',
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(width: 10),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10),
                    //     color: Colors.red,
                    //   ),
                    //   height: 150,
                    //   width: 150,
                    //   child: Column(
                    //     children: [
                    //       Image.network(
                    //         'https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg',
                    //         fit: BoxFit.contain,
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Deep Ac Repair And Cleaning',
                    //         textAlign: TextAlign.start,
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric( horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SalonServiceConatiner(context,
                        "assets/salon_women/haircut.jpeg",
                        "Haircut &",
                        "styling"),
                    SalonServiceConatiner(context,
                        "assets/salon_women/hair_color.jpeg",
                        "Hair",
                        "coloring"),

                    SalonServiceConatiner(context,
                        "assets/salon_women/manicure.webp",
                        "Manicure &",
                        "pedicure"),
                    SalonServiceConatiner(context,
                        "assets/salon_women/glow.jpeg",
                        "Makeup",
                        ""),


                    // Container(
                    //   color: Colors.yellow,
                    //   height: 150,
                    //   width: 150,
                    //   child: Column(
                    //     children: [
                    //       Image.asset(
                    //         'Assets/images/Plumber_service.png',
                    //         fit: BoxFit.cover,
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Text 1',
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(width: 10),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10),
                    //     color: Colors.red,
                    //   ),
                    //   height: 150,
                    //   width: 150,
                    //   child: Column(
                    //     children: [
                    //       Image.network(
                    //         'https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg',
                    //         fit: BoxFit.contain,
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Deep Ac Repair And Cleaning',
                    //         textAlign: TextAlign.start,
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Container(
              // color: Colors.white,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Plumber Service",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 20.0),
                  //   child: Text(
                  //     "View All",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 18,
                  //       color: Colors.purpleAccent,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric( horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Container(
                    //   color: Colors.yellow,
                    //   height: 150,
                    //   width: 150,
                    //   child: Column(
                    //     children: [
                    //       Image.asset(
                    //         'Assets/images/Plumber_service.png',
                    //         fit: BoxFit.cover,
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Text 1',
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(width: 10),
                    // Container(
                    //   color: Colors.yellow,
                    //   height: 150,
                    //   width: 150,
                    //   child: Column(
                    //     children: [
                    //       Image.asset(
                    //         'Assets/images/Plumber_service.png',
                    //         fit: BoxFit.cover,
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Text 1',
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(width: 10),
                    ServiceCategories(context,
                      "assets/sub_service/plumber_image/Faucet.jpeg",
                      "Faucet repair &",
                      "installation",
                    ),
                    ServiceCategories(context,
                      "assets/sub_service/plumber_image/piper_repair_2.0.jpeg",
                      "Pipe repair &",
                      "replacement",
                    ),
                    ServiceCategories(context,
                      "assets/sub_service/plumber_image/water_heater.png",
                      "Water heater &",
                      "repair installation",
                    ),
                    ServiceCategories(context,
                      "assets/sub_service/plumber_image/water_purifier.webp",
                      "Water system &",
                      "installation",
                    ),
                    // Container(
                    //   color: Colors.yellow,
                    //   height: 150,
                    //   width: 150,
                    //   child: Column(
                    //     children: [
                    //       Image.asset(
                    //         'Assets/images/Plumber_service.png',
                    //         fit: BoxFit.cover,
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Text 1',
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(width: 10),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10),
                    //     color: Colors.red,
                    //   ),
                    //   height: 150,
                    //   width: 150,
                    //   child: Column(
                    //     children: [
                    //       Image.network(
                    //         'https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg',
                    //         fit: BoxFit.contain,
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Deep Ac Repair And Cleaning',
                    //         textAlign: TextAlign.start,
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Electrican Service",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 20.0),
                  //   child: Text(
                  //     "View All",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 18,
                  //       color: Colors.purpleAccent,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric( horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Container(
                    //   color: Colors.yellow,
                    //   height: 150,
                    //   width: 150,
                    //   child: Column(
                    //     children: [
                    //       Image.asset(
                    //         'Assets/images/Plumber_service.png',
                    //         fit: BoxFit.cover,
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Text 1',
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(width: 10),
                    // Container(
                    //   color: Colors.yellow,
                    //   height: 150,
                    //   width: 150,
                    //   child: Column(
                    //     children: [
                    //       Image.asset(
                    //         'Assets/images/Plumber_service.png',
                    //         fit: BoxFit.cover,
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Text 1',
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(width: 10),
                    ServiceCategories(context,
                      "assets/sub_service/Electric_image/ac_repair.jpeg",
                      "Ac repair &",
                      "installation",
                    ),
                    ServiceCategories(context,
                      "assets/sub_service/Electric_image/Lighting.jpeg",
                      "Lighting",
                      "",
                    ),
                    ServiceCategories(context,
                      "assets/sub_service/Electric_image/referegator-repairing-large.jpg",
                      "Refrigerator",
                      "Repair",
                    ),
                    ServiceCategories(context,
                      "assets/sub_service/Electric_image/washing_image.jpeg",
                      "Washing Machine",
                      "repair",
                    ),
                    // Container(
                    //   color: Colors.yellow,
                    //   height: 150,
                    //   width: 150,
                    //   child: Column(
                    //     children: [
                    //       Image.asset(
                    //         'Assets/images/Plumber_service.png',
                    //         fit: BoxFit.cover,
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Text 1',
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(width: 10),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10),
                    //     color: Colors.red,
                    //   ),
                    //   height: 150,
                    //   width: 150,
                    //   child: Column(
                    //     children: [
                    //       Image.network(
                    //         'https://content.jdmagicbox.com/comp/def_content/ac_repair_and_services/default-ac-repair-services-16.jpg',
                    //         fit: BoxFit.contain,
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Deep Ac Repair And Cleaning',
                    //         textAlign: TextAlign.start,
                    //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            //In the above need of some modification

            // Container(
            //   color: Colors.red,
            //   height: 100,
            //   child: Center(
            //     child: Text(
            //       'Container 1',
            //       style: TextStyle(color: Colors.white),
            //     ),
            //   ),
            // ),
            // Container(
            //   color: Colors.red,
            //   height: 100,
            //   child: Center(
            //     child: Text(
            //       'Container 1',
            //       style: TextStyle(color: Colors.white),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Account',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => HomeScreen()),
            // );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => bookSubPage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubSetting()),
              );
              break;
          }
        },
      ),
    );
  }
}