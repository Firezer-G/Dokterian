import 'package:dribbledesign/screens/schedule/widgets/schedule_card.dart';
import 'package:dribbledesign/screens/schedule/widgets/schedule_type_button.dart';
import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {},
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ScheduleTypeButton("Canceled Schedule", false),
                      ScheduleTypeButton("Upcomming schedule", true),
                      ScheduleTypeButton("Completed schedule", false),
                    ],
                  ),
                ),
                ScheduleCard("Dr. Joseph Brostito", "assets/images/image.png"),
                ScheduleCard("Dr. Bessie Coleman", "assets/images/Bessie.png"),
                ScheduleCard(
                    "Dr. Babe Didrikson", "assets/images/Didrikson.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
