import 'package:dribbledesign/screens/home/widgets/catagory_button.dart';
import 'package:dribbledesign/screens/home/widgets/doctor_card.dart';
import 'package:dribbledesign/screens/home/widgets/nearDoctor_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello,"),
                        Text(
                          "Hi James",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      backgroundImage: AssetImage("assets/images/Frame.png"),
                    )
                  ],
                ),
              ),
              const DoctorCard(),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "Search doctor or health issue",
                        prefixIcon: Icon(Icons.search_rounded),
                        border: InputBorder.none),
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CatagoryButton(Icons.dangerous, "Covid 19"),
                      CatagoryButton(Icons.person, "Doctor"),
                      CatagoryButton(Icons.medication_outlined, "Medicine"),
                      CatagoryButton(Icons.local_hospital, "Hospital")
                    ],
                  )),
              const SizedBox(height: 20),
              const Text(
                "Near Doctor",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const NearDoctorCard()
            ],
          ),
        ),
      ),
    );
  }
}
