import 'package:flutter/material.dart';
import 'package:medi_queue/util/category_card.dart';
import 'package:medi_queue/util/doctor_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              //appbar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          "Mr. ABC",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(Icons.person),
                    )
                  ],
                ),
              ),

              //card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFe9a5e0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //left side icon
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/consult.png',
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(width: 25),
                      //text + button
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "How do you feel?",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            const Text("Fill out your medical card right now"),
                            const SizedBox(height: 5),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                  child: TextButton(
                                child: const Text(
                                  "Get Started",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {},
                              )),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
              const SizedBox(height: 15),
              //search bar

              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter a search term',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
              //horizontal category
              const SizedBox(height: 15),

              //doctor list
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryCard(
                      cardName: "Surgeon",
                      icon: Icon(Icons.airline_seat_flat_angled_outlined),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      cardName: "Dentist",
                      icon: Icon(Icons.sentiment_very_satisfied_outlined),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      cardName: "Pharmacist",
                      icon: Icon(Icons.medication_rounded),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      cardName: "Nutritionist",
                      icon: Icon(Icons.food_bank_outlined),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              Container(
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Doctor List",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500]),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DoctorCard(
                      doctorImageAddress:
                          'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
                      doctorName: 'Dr. Rahim bhai',
                      doctorRating: '4.8',
                      doctorType: 'Surgeon',
                    ),
                    DoctorCard(
                      doctorImageAddress:
                          'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
                      doctorName: 'Dr. Karim bhai',
                      doctorRating: '4.9',
                      doctorType: 'Therapist',
                    ),
                    DoctorCard(
                      doctorImageAddress:
                          'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
                      doctorName: 'Dr. Zakir bhai',
                      doctorRating: '4.8',
                      doctorType: 'Dentist',
                    ),
                    DoctorCard(
                      doctorImageAddress:
                          'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
                      doctorName: 'Dr. Mahir bhai',
                      doctorRating: '4.5',
                      doctorType: 'Nutririonist',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
