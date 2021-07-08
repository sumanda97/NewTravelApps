// part of 'widget.dart';

// class RecomendedDestination extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 300,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: recommendations.length,
//             itemBuilder: (BuildContext context, int index) {
//               RecomendedDestination recommenddestionation = recommendationsData[index];
//               return GestureDetector(
//                 onTap: () {},
//                 child: Container(
//                   margin: EdgeInsets.all(8),
//                   width: 210,
//                   child: Stack(
//                     alignment: Alignment.topCenter,
//                     children: [
//                       // ACTIVIES DETAILS
//                       Positioned(
//                         bottom: 15.0,
//                         child: Container(
//                           height: 120,
//                           width: 200,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.white,
//                           ),
//                           child: Padding(
//                             padding: EdgeInsets.all(10),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Activities",
//                                   style: GoogleFonts.poppins(
//                                     fontSize: 22,
//                                     fontWeight: FontWeight.w600,
//                                     letterSpacing: 1.2,
//                                   ),
//                                 ),
//                                 // Sub Text Activies
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     RichText(
//                                       text: TextSpan(children: [
//                                         WidgetSpan(
//                                             child: Icon(
//                                           MdiIcons.mapMarkerOutline,
//                                           size: 15,
//                                           color: Colors.lightBlueAccent[700],
//                                         )),
//                                         TextSpan(
//                                           text: destination.city,
//                                           style: TextStyle(color: Colors.grey),
//                                         ),
//                                       ]),
//                                     ),
//                                     RichText(
//                                       text: TextSpan(children: [
//                                         WidgetSpan(
//                                             child: Icon(MdiIcons.star,
//                                                 size: 15,
//                                                 color: Colors
//                                                     .lightBlueAccent[700])),
//                                         TextSpan(
//                                           text: destination.rate.toString(),
//                                           style: TextStyle(color: Colors.grey),
//                                         ),
//                                       ]),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.black26,
//                                   offset: Offset(0.0, 2.0),
//                                   blurRadius: 6.0),
//                             ]),
//                         // IMAGES
//                         child: Stack(
//                           children: [
//                             Hero(
//                               tag: destination.imageUrl,
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: Image(
//                                   height: 180,
//                                   width: 180,
//                                   image: AssetImage(destination.imageUrl),
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               top: 10,
//                               left: 10,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     destination.city,
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w600,
//                                         letterSpacing: 1.2),
//                                   ),
//                                   Row(
//                                     children: [
//                                       Icon(
//                                         FontAwesomeIcons.locationArrow,
//                                         size: 10,
//                                         color: Colors.lightBlueAccent[700],
//                                       ),
//                                       SizedBox(
//                                         width: 5,
//                                       ),
//                                       Text(
//                                         destination.country,
//                                         style: TextStyle(color: Colors.white70),
//                                       ),
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
