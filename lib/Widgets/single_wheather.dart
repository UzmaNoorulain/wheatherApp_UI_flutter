
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Models/wheather_location.dart';

class singleWheather extends StatelessWidget {
  final int index;
  const singleWheather({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return           Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                LocationList[index].city,
                style: GoogleFonts.lato(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                LocationList[index].dateTime,
                style: GoogleFonts.lato(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Text(
                LocationList[index].temprature,
                style: GoogleFonts.lato(
                  fontSize: 85,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    child: SvgPicture.asset(
                      LocationList[index].iconUrl,
                      height: 35,
                      width: 35,
                      color: Colors.white,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    LocationList[index].wheatherType,
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 0.5,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Wind",
                    style: GoogleFonts.lato(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    LocationList[index].wind.toString(),
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "km/h",
                    style: GoogleFonts.lato(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Stack(children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 5,
                      width: 50,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 5,
                      width: 8,
                      color: Colors.green,
                    ),
                  ]),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Rain",
                    style: GoogleFonts.lato(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    LocationList[index].rain.toString(),
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "%",
                    style: GoogleFonts.lato(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Stack(children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 5,
                      width: 50,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 5,
                      width: 5,
                      color: Colors.orange,
                    ),
                  ]),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Humadity",
                    style: GoogleFonts.lato(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    LocationList[index].humiity.toString(),
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "%",
                    style: GoogleFonts.lato(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Stack(children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 5,
                      width: 50,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 5,
                      width: 9,
                      color: Colors.red,
                    ),
                  ]),
                ],
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
