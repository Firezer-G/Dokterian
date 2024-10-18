import 'package:flutter/material.dart';

class NearDoctorCard extends StatelessWidget {
  const NearDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 15, 15, 40),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/image.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Joseph Brostito",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        "Dental Specialist",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.location_pin,
                  color: Colors.grey,
                ),
                Text(
                  "1.2 KM",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 0.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      size: 20,
                      color: Color.fromRGBO(254, 176, 82, 0.9),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "4.8 (120 Reviews)",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(254, 176, 82, 0.9),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      size: 20,
                      color: Color.fromRGBO(72, 148, 254, 0.9),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Open at 7:00",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(72, 148, 254, 0.9),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
