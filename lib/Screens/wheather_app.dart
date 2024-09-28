import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wheatherapp/Models/wheather_location.dart';
import 'package:wheatherapp/Widgets/single_wheather.dart';
import 'package:wheatherapp/Widgets/slider.dart';

class WheatherApp extends StatefulWidget {
   WheatherApp({super.key,});

  @override
  State<WheatherApp> createState() => _WheatherAppState();
}

class _WheatherAppState extends State<WheatherApp> {
  int _currentPage=0;
  late String bgImage;

  _onPageChanges(int index){
    setState(() {
      _currentPage=index;
    });
  }

   @override
  Widget build(BuildContext context) {
    if (LocationList[_currentPage].wheatherType=='Sunny') {
      bgImage='Assets/Images/sunny.jpeg';
    }else if (LocationList[_currentPage].wheatherType=='Night') {
      bgImage='Assets/Images/night4.jpeg';
    } else if (LocationList[_currentPage].wheatherType=='Rainy') {
      bgImage='Assets/Images/cloudy.jpeg';
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "",
          style: GoogleFonts.lato(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: GestureDetector(
              onTap: () {
                print("menu clicked");
              },
              child: SvgPicture.asset(
                "Assets/Images/menu.svg",
                height: 45,
                width: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            bgImage,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black38),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                SizedBox(
                  height: 270,
                  width: 18,
                ),
                for(int i=0; i<LocationList.length;i++)
                  if (i ==_currentPage)
                  slider(true)
                else
                    slider(false)
              ],
            ),
          ),
          PageView.builder(
            onPageChanged: _onPageChanges,
            scrollDirection: Axis.horizontal,
            itemCount: LocationList.length,
            itemBuilder: (ctx, i) => singleWheather(index: i,),
          ),
        ],
      ),
    );
  }
}
