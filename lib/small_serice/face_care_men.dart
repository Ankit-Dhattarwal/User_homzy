import 'package:flutter/material.dart';
import 'package:final_homzy/small_serice/small_service_page.dart';

class FaceMenServiceScreen extends StatelessWidget {
  Widget SmallService( BuildContext context, String img, String name, String image, int price ,String desc){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ServiceInfo (name: name, img: Image.asset(image), price: price, desc: desc,)),
        );
      },

      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Card(
          elevation: 5,
          child: Row(
            children: [
              // Image on the left side
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Text and arrow icon on the right side
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/face_care_men/face_care_men.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SmallService(context,
                  "assets/face_care_men/beard_grooming.jpeg",
                  "beardGrooming",
                  "assets/face_care_men/beard_grooming_poster.jpeg",
                  int.parse("399"),
                  "Beard grooming is the process of maintaining and enhancing the appearance and health of one's facial hair through regular cleaning, trimming, and conditioning."
              ),
              SmallService(context,
                  "assets/face_care_men/facial_for_men.jpeg",
                  "Facial",
                  "assets/face_care_men/facial_poster.jpeg",
                  int.parse("399"),
                  "Our facial home service offers a range of personalized facial treatments using high-quality products and specialized techniques to cleanse, exfoliate, and nourish the skin for a refreshed and rejuvenated appearance."
              ),
              SmallService(context,
                  "assets/face_care_men/threading_men.webp",
                  "Threading",
                  "assets/face_care_men/grooming-mens-eyebrows_poster-PhotoRoom.webp",
                  int.parse("499"),
                  "Threading for men is a hair removal technique that uses a twisted cotton thread to remove unwanted hair from the face with precision and minimal irritation."
              ),
            ],
          ),
        ),
      ),
    );
  }
}


