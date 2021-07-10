part of 'ui.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(viewportFraction: 0.877);

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text("Let's Explore \nThe World..",
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text("Let's discover best package for you...",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey[850],
                  )),
            ),
            // HEADER
            SizedBox(
              height: 20,
            ),
            //ICON Tab Bar
            costumTabBarListDestination(),
            SizedBox(
              height: 15,
            ),
            // DESTIONATION TAB BAR
            Container(
              height: 300,
              child: PageView(
                physics: BouncingScrollPhysics(),
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    recommendations.length,
                    (int index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DestinationDetailsPage(
                                        recommendedModel:
                                            recommendations[index])));
                          },
                          child: Container(
                            width: 210,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        recommendations[index].imageUrl),
                                    fit: BoxFit.cover)),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                // SUB TEXT
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
                                        text: TextSpan(children: [
                                          WidgetSpan(
                                              child: Icon(
                                            MdiIcons.mapMarkerOutline,
                                            size: 20,
                                            color: blueColor,
                                          )),
                                          TextSpan(
                                            text:
                                                recommendations[index].country,
                                            style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 1.2),
                                          ),
                                        ]),
                                      ),
                                      SizedBox(width: 20),
                                      RichText(
                                        text: TextSpan(children: [
                                          WidgetSpan(
                                              child: Icon(MdiIcons.star,
                                                  size: 18,
                                                  color: Colors.yellow)),
                                          TextSpan(
                                            text: recommendations[index]
                                                .rate
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 1.2),
                                          ),
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(recommendations[index].name,
                                          style: GoogleFonts.poppins(
                                              fontSize: 22,
                                              color: mainColor,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.2)),
                                      // IF YOU WANT CITY LOCATION
                                      // Row(
                                      //   children: [
                                      //     Icon(
                                      //       FontAwesomeIcons.locationArrow,
                                      //       size: 15,
                                      //       color: blueColor,
                                      //     ),
                                      //     SizedBox(
                                      //       width: 5,
                                      //     ),
                                      //     Text(
                                      //       recommendations[index].country,
                                      //       style: GoogleFonts.poppins(
                                      //           fontSize: 18,
                                      //           color: mainColor,
                                      //           fontWeight: FontWeight.w400,
                                      //           letterSpacing: 1.2),
                                      //     ),
                                      //   ],
                                      // )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            // POPULAR CATEGORIES
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Categories",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      )),
                  Text("View All",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 16,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w600,
                        color: redColor,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // LIST CATEGORIES

            // HOTEL TAB BAR
            hotelRecommentadion(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

// LIST TABBAR DESTIONATION
Widget costumTabBarListDestination() {
  return Container(
    height: 30,
    margin: EdgeInsets.only(left: 14.4, top: 28.8),
    child: DefaultTabController(
      length: 4,
      child: TabBar(
          labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
          indicatorPadding: EdgeInsets.only(left: 14.4, right: 14.4),
          isScrollable: true,
          labelColor: redColor,
          unselectedLabelColor: Color(0xFF8a8a8a),
          labelStyle:
              GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w700),
          unselectedLabelStyle:
              GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w700),
          indicator: RoundedRectangleTabIndicator(
              color: redColor, weight: 2.4, width: 14.4),
          tabs: [
            Tab(
              child: Container(
                child: Text('Recommended'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('Popular'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('New Destination'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('Hidden Gems'),
              ),
            )
          ]),
    ),
  );
}

// HOTEL RECOMMENDATION
Widget hotelRecommentadion() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular Hotel",
              style: GoogleFonts.playfairDisplay(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "View All",
                style: GoogleFonts.playfairDisplay(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                    color: redColor),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 320,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: hotels.length,
          itemBuilder: (BuildContext context, int index) {
            Hotel hotel = hotels[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => HotelDetails(
                          hotel: hotel,
                        )),
              ),
              child: Container(
                margin: EdgeInsets.all(8),
                width: 240,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    // ACTIVIES DETAILS
                    Positioned(
                      bottom: 15.0,
                      child: Container(
                        height: 120,
                        width: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                hotel.name,
                                style: GoogleFonts.poppins(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              SizedBox(height: 2.0),
                              // Sub Text Activies
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      hotel.address,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      NumberFormat.currency(
                                                  symbol: "IDR ",
                                                  decimalDigits: 0,
                                                  locale: "id-ID")
                                              .format(hotel.price) +
                                          " Night",
                                      style:
                                          greyFontStyle.copyWith(fontSize: 13),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0),
                          ]),
                      // IMAGES
                      child: Hero(
                        tag: hotel.imageUrl,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            height: 180,
                            width: 220,
                            image: AssetImage(hotel.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}
