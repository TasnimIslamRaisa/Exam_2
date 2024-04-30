import 'package:assignment_2/screens/Item/animal.dart';
import 'package:assignment_2/screens/Item/asthetic.dart';
import 'package:assignment_2/screens/Item/city.dart';
import 'package:assignment_2/screens/Item/flower.dart';
import 'package:assignment_2/screens/Item/mood.dart';
import 'package:assignment_2/screens/Item/road.dart';
import 'package:assignment_2/screens/Item/sky.dart';
import 'package:assignment_2/screens/Item/travel.dart';
import 'package:assignment_2/widget/front.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 178, 17),
        title: const Center(
          child: Text(
            'Photo Gallery',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        leading: Image.asset(
          'assets/images/left-arrow.png',
          scale: 13,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {
              // Define your action here
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MoodScreen(),
                            ));
                      },
                      child: FrontGrid(
                        title: 'Mood',
                        image: 'mood_1.jpeg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AstheticScreen(),
                            ));
                      },
                      child: FrontGrid(
                        title: 'Asthetic',
                        image: 'asthetic_2.jpeg',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AnimalScreen(),
                            ));
                      },
                      child: FrontGrid(
                        title: 'Animals',
                        image: 'animals_3.jpeg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CityScreen(),
                            ));
                      },
                      child: FrontGrid(
                        title: 'City',
                        image: 'city_4.jpeg',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TravelScreen(),
                            ));
                      },
                      child: FrontGrid(
                        title: 'Travel',
                        image: 'travel_5.jpeg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SkyScreen(),
                            ));
                      },
                      child: FrontGrid(
                        title: 'Sky',
                        image: 'sky_6.jpeg',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RoadScreen(),
                            ));
                      },
                      child: FrontGrid(
                        title: 'Road',
                        image: 'road_7.jpeg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FlowerScreen(),
                            ));
                      },
                      child: FrontGrid(
                        title: 'Flowers',
                        image: 'flowers_7.jpg',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
