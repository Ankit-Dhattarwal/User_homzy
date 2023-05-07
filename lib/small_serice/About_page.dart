import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
//import 'package:flutter_linkify/flutter_linkify.dart';


class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(

        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            // Text('Homzy : Everything you need',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,fontFamily: ),textAlign: TextAlign.center,),
            // SizedBox(height: 16,),
            //
            // Text(' Service At Your Doorstep',style: TextStyle(color: Colors.grey.shade700,fontSize: 18),textAlign: TextAlign.center,),
            // SizedBox(height: 20,),
            // //Text('Its Not Just An Application but a vision to meet every customer',style: TextStyle(color: Colors.black,fontSize: 25),textAlign: TextAlign.center,),
            //buildProfileImage()
            SizedBox(height: 40,),

            Text('Mentor/Guide',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Row(
              children: [
                //SizedBox(width: 10,),
                buildProfileImage(),
                SizedBox(width: 10,),
                Text('Dr. Suraj Srivastava',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

              ],
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [

                  ],
                ),
                SizedBox(height: 2,),

                SizedBox(height: 2,),
                Row(
                  children: [
                   // SizedBox(width: 20,),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Center(

                          child: Icon(Icons.email,size: 25,color: Colors.red,)),


                    ),
                    SizedBox(width: 8,),
                    TextButton(
                      child: Text("surajsriengg@gmail.com",style: TextStyle(color: Colors.black,fontSize: 20)),
                      onPressed: () {
                        _launchURL("https://mail.google.com/mail/u/0/#search/shashikantkaushik4%40gmail.com?compose=new");
                      },
                    ),
                  ],
                ),

                SizedBox(height: 15,),
                Divider(height: 15,color: Colors.grey,thickness: 4,indent: 65.0,endIndent: 65.0,)
                ,  SizedBox(height: 15,),// buildSocioalIcon(FontAwesomeIcons.github),
                // SizedBox(width: 12,),
              ],
            ),
            SizedBox(height: 14,),
            Text('Team Workers',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Row(
              children: [
                buildProfileImage1(

                ),
                SizedBox(width: 10,),
                Text('Shashi Kant',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
              ],
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(FontAwesomeIcons.github,size: 25,color: Colors.black,),
                      ),
                    ),
                    SizedBox(width: 8,),
                    TextButton(
                      child: Text("shashikantkaushik",style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        _launchURL("https://github.com/shashikantkaushik");
                      },
                    ),
                  ],
                ),
                SizedBox(height: 2,),
                Row(
                  children: [
                    buildSocioalIcon(FontAwesomeIcons.linkedin),
                    SizedBox(width: 8,),
                    TextButton(
                      child: Text("shashi-kant-kaushik",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        _launchURL("https://www.linkedin.com/in/shashi-kant-kaushik/");
                      },
                    ),
                  ],
                ),
                SizedBox(height: 2,),

                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(Icons.email,size: 25,color: Colors.red,),
                      ),
                    ),
                    SizedBox(width: 8,),
                    TextButton(
                      child: Text("shashikantkaushik4@gmail.com ",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        _launchURL("https://mail.google.com/mail/u/0/#search/shashikantkaushik4%40gmail.com?compose=new");
                      },
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 15,),
            Divider(height: 15,color: Colors.grey,thickness: 4,indent: 65.0,endIndent: 65.0,)
            ,SizedBox(height: 15,),
            Row(
              children: [
                buildProfileImage2(),
                SizedBox(width: 10,),
                Text('Ankit Dhattarwal',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
              ],
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(FontAwesomeIcons.github,size: 25,color: Colors.black,),
                      ),
                    ),
                    SizedBox(width: 8,),
                    TextButton(
                      child: Text("Ankit-Dhattarwal",style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        _launchURL("https://github.com/Ankit-Dhattarwal");
                      },
                    ),
                  ],
                ),
                SizedBox(height: 2,),
                Row(
                  children: [
                    buildSocioalIcon(FontAwesomeIcons.linkedin),
                    SizedBox(width: 8,),
                    TextButton(
                      child: Text("hr-ankit-dhattarwal47",style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        _launchURL("https://www.linkedin.com/in/hr-ankit-dhattarwal47/");
                      },
                    ),
                  ],
                ),
                SizedBox(height: 2,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(Icons.email,size: 25,color: Colors.red,),
                      ),
                    ),
                    SizedBox(width: 8,),
                    TextButton(
                      child: Text("er.ankitdhattarwal@gmail.com ",style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        _launchURL("https://mail.google.com/mail/u/0/#search/er.ankitdhattarwal%40gmail.com?compose=new");
                      },
                    ),
                  ],
                ),
              ],
            ),


            SizedBox(height: 15,),
            Divider(height: 15,color: Colors.grey,thickness: 4,indent: 65.0,endIndent: 65.0,)
            ,SizedBox(height: 15,),
            Row(
              children: [

                buildProfileImage3(),
                SizedBox(width: 10,),
                Text('Khushi Srivastava',style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
              ],
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(FontAwesomeIcons.github,size: 25,color: Colors.black,),
                      ),
                    ),
                    SizedBox(width: 8,),
                    TextButton(
                      child: Text("khushisrivastava202",style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        _launchURL("https://github.com/Khushisrivastava202");
                      },
                    ),
                  ],
                ),
                SizedBox(height: 2,),
                Row(
                  children: [
                    buildSocioalIcon(FontAwesomeIcons.linkedin),
                    SizedBox(width: 8,),
                    TextButton(
                      child: Text("khushi-srivastava-",style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        _launchURL("https://www.linkedin.com/in/khushi-srivastava-aa041621b/");
                      },
                    ),
                  ],
                ),
                SizedBox(height: 2,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(Icons.email,size: 25,color: Colors.red,),
                      ),
                    ),
                    SizedBox(width: 8,),
                    TextButton(
                      child: Text("khushisrivastava202@gmail.com",style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        _launchURL("https://github.com/Khushisrivastava202");
                      },
                    ),
                  ],
                ),
              ],
            ),


            SizedBox(height: 15,),
            Divider(height: 15,color: Colors.grey,thickness: 4,indent: 65.0,endIndent: 65.0,)
            ,SizedBox(height: 15,),
            Row(
              children: [

                buildProfileImage4(),
                SizedBox(width: 10,),
                Text('Apoorv Aggrwal',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
              ],
            ),
            SizedBox(height: 12,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(FontAwesomeIcons.github,size: 25,color: Colors.black,),
                      ),
                    ),
                    SizedBox(width: 8,),
                    TextButton(
                      child: Text("apoorvaggrawal",style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        _launchURL("https://github.com/shashikantkaushik");
                      },
                    ),
                  ],
                ),
                SizedBox(height: 2,),

                SizedBox(height: 2,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(Icons.email,size: 25,color: Colors.red,),
                      ),
                    ),
                    SizedBox(width: 8,),
                    TextButton(
                      child: Text("bteach34000@gmail.com",style: TextStyle(color: Colors.black)),
                      onPressed: () {
                        _launchURL("https://mail.google.com/mail/u/0/#search/bteach34000%40gmail.com?compose=new");
                      },
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
  Widget buildProfileImage() => CircleAvatar(
    radius: 35,
    // backgroundColor: Colors.grey.shade800,

    backgroundImage: AssetImage('assets/about/sir.jpeg'),
  );
  Widget buildProfileImage1() => CircleAvatar(
    radius: 35,
    // backgroundColor: Colors.grey.shade800,

    backgroundImage: AssetImage('assets/about/shashi.jpg'),
  );
  Widget buildProfileImage2() => CircleAvatar(
    radius: 35,
    //backgroundColor: Colors.grey.shade800,

    backgroundImage: AssetImage('assets/about/ankit.jpeg'),
  );
  Widget buildProfileImage3() => CircleAvatar(
    radius: 35,
    backgroundColor: Colors.grey.shade800,

    backgroundImage: AssetImage('assets/about/khushi.jpeg',),

  );
  Widget buildProfileImage4() => CircleAvatar(
    radius: 35,
    backgroundColor: Colors.grey.shade800,

    backgroundImage: AssetImage('assets/about/aporv.png'),
  );
}
Widget buildSocioalIcon(IconData icon)=> CircleAvatar(
  //radius: 25,
  backgroundColor: Colors.white,
  child: Center(child: Icon(icon,size: 25,color: Colors.blue,),),
);

//
// class Hyperlink extends StatelessWidget {
//   //const Hyperlink({Key? key}) : super(key: key);
// final String text;
// Hyperlink(this.text);
//   //const Hyperlink({super.key, required this.text});
//
//   @override
//   Widget build(BuildContext context) {
//     return RichText(text: TextSpan(
//       text: text,
//       style: TextStyle(color:Colors.blue),
//       recognizer: TapGestureRecognizer()..onTap=(){
//         launch(text);
//       }
//     ),
//     );
//   }
// }
//
//



_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}