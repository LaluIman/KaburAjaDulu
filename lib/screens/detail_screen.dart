import 'package:flutter/material.dart';
import 'package:kaburajadulu/components/info_widget.dart';
import 'package:kaburajadulu/components/nearby_item.dart';
import 'package:kaburajadulu/model/location.dart';
import 'package:svg_flutter/svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.location});

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    children: [
                      //Thumbnail Image
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(location.thumbnailImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      //Back button
                      Positioned(
                        top: 15,
                        left: 15,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black26,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: SvgPicture.asset(
                                "assets/icons/Back_Icon.svg",
                                width: 23,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Love button
                      Positioned(
                        top: 15,
                        right: 15,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black26,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: SvgPicture.asset(
                              "assets/icons/Favourite_Icon.svg",
                              color: Colors.white,
                              width: 23,
                            ),
                          ),
                        ),
                      ),
                      // Name
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/Location_Icon.svg",
                                  width: 20,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  location.location,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3),
                            Text(
                              location.name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                //Info widget
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffEDEDED),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Color(0xffD8D8D8)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InfoWidget(
                            icon: "assets/icons/Duration_Icon.svg",
                            title: location.duration,
                            subtitle: "Duration",
                          ),
                          SizedBox(width: 25),
                          InfoWidget(
                            icon: "assets/icons/Route_Icon.svg",
                            title: location.distance,
                            subtitle: "Distance",
                          ),
                          SizedBox(width: 25),
                          InfoWidget(
                            icon: "assets/icons/Star_Icon.svg",
                            color: Color(0xff0074AE),
                            title: "4.5",
                            subtitle: "Rating",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                //Desccription
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff038ED3),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    location.description,
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20),
                //Whats nearby?
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Whats nearby?",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff038ED3),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 6,
                      children: [
                        NearbyItem(
                          icon: "assets/icons/Nearby_Icon1.svg",
                          name: "Restaurant",
                        ),
                        NearbyItem(
                          icon: "assets/icons/Nearby_Icon2.svg",
                          name: "Hotel",
                        ),
                        NearbyItem(
                          icon: "assets/icons/Nearby_Icon3.svg",
                          name: "Hospital",
                        ),
                        NearbyItem(
                          icon: "assets/icons/Nearby_Icon4.svg",
                          name: "Parking Lot",
                        ),
                        NearbyItem(
                          icon: "assets/icons/Nearby_Icon5.svg",
                          name: "Mosque",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                //Gallery
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Gallery",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff038ED3),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: location.galleryImages.map((images) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(images),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 1,
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff038ED3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              padding: EdgeInsets.symmetric(vertical: 15),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Search a flight",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SvgPicture.asset("assets/icons/Ticket_Icon.svg", width: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
