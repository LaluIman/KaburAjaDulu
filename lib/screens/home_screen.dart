import 'package:flutter/material.dart';
import 'package:kaburajadulu/components/country_card.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                //Heading
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Hello, ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Matthias",
                                  style: TextStyle(color: Color(0xff038ED3)),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Explore for your next flight",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff038ED3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: SvgPicture.asset(
                            "assets/icons/Notifications_Icon.svg",
                            width: 23,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                //Search bar
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffEFEFEF),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(12),
                                child: SvgPicture.asset("assets/icons/Search_Icon.svg", width: 10,),
                              ),
                              hintText: 'Search by Destination, Places',
                              hintStyle: TextStyle(
                                fontSize: 15
                              )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffEFEFEF),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: SvgPicture.asset(
                            "assets/icons/FIlter_Icon.svg",
                            width: 23,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Browse by country", style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700
                  ),),
                ),
                SizedBox(height: 20),
                //Country card
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        CountryCard(image: "assets/images/Card_Indonesia.png", name: "Indonesia",),
                        CountryCard(image: "assets/images/Card_Malaysia.png", name: "Malaysia",),
                        CountryCard(image: "assets/images/Card_Singapore.png", name: "Singapore",),
                        CountryCard(image: "assets/images/Card_Thailand.png", name: "Thailand",),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Popular destination", style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700
                  ),),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
