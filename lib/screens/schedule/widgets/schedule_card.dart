import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  ScheduleCard(this._doctorname, this._profilepictureassetlocaion);
  String _doctorname;
  String _profilepictureassetlocaion;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        surfaceTintColor: Colors.white,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(_profilepictureassetlocaion),
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _doctorname,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          const Text(
                            "Dental Specialist",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 0.4,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Sunday,12 June",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "11:00 - 12:00 AM",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(72, 148, 254, 0.1)),
                  child: const Text(
                    textAlign: TextAlign.center,
                    "Detail",
                    style: TextStyle(
                        color: Color.fromRGBO(72, 148, 254, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
