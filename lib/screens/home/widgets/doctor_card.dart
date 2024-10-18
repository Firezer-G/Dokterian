import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(72, 148, 254, 0.9),
      ),
      child: const Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/image 8.png"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr.Imran Syahir",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    Text(
                      "General Doctor",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right_outlined,
                color: Colors.white,
              )
            ],
          ),
          Divider(
            color: Colors.white,
            thickness: 0.4,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Sunday,12 June",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Sunday,12 June",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
