class RecommendedModel {
  String name;
  String imageUrl;
  String tagLine;
  List<String> images;
  int price;
  String city;
  String country;
  String description;
  double rate;

  RecommendedModel(
    this.name,
    this.imageUrl,
    this.tagLine,
    this.images,
    this.price,
    this.city,
    this.country,
    this.description,
    this.rate,
  );
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(
          item['name'],
          item['imageUrl'],
          item['tagLine'],
          item['images'],
          item['price'],
          item['city'],
          item['country'],
          item['description'],
          item['rate'],
        ))
    .toList();

var recommendationsData = [
  {
    "name": "Venecia",
    "imageUrl": "assets/images/venice.jpg",
    "tagLine": "Semarang Variety of Culture",
    "images": [
      "https://images.unsplash.com/photo-1607355739828-0bf365440db5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1444&q=80",
      "https://images.unsplash.com/photo-1577791465485-b80039b4d69a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
      "https://images.unsplash.com/photo-1577404699057-04440b45986f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80",
      "https://images.unsplash.com/photo-1549973890-38d08b229439?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=642&q=80",
      "https://images.unsplash.com/photo-1622263096760-5c79f72884af?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"
    ],
    "price": 100,
    "city": "Venice",
    "country": "Italy",
    "description": "Visit Venice for an amazing and unforgettable adventure.",
    "rate": 4.1,
  },
  {
    "name": "Roma",
    "imageUrl": "assets/images/Roma.jpg",
    "tagLine": "Roma Variety of Culture",
    "images": [
      "https://images.unsplash.com/photo-1506351421178-63b52a2d2562?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80",
      "https://images.unsplash.com/photo-1516496636080-14fb876e029d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1525625293386-3f8f99389edd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1249&q=80",
      "https://images.unsplash.com/photo-1555912881-1ecd82307e0e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
      "https://images.unsplash.com/photo-1499359875449-10bbeb21501e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
    ],
    "price": 100,
    "city": "Vatican",
    "country": "Italy",
    "description": "Visit Venice for an amazing and unforgettable adventure.",
    "rate": 4.1,
  },
  {
    "name": "Bora-Bora Island",
    "imageUrl": "assets/images/TBoraBora.jpg",
    "tagLine": "Bora Variety of Culture",
    "images": [
      "https://images.unsplash.com/photo-1528181304800-259b08848526?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
      "https://images.unsplash.com/photo-1519451241324-20b4ea2c4220?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
      "https://images.unsplash.com/photo-1552465011-b4e21bf6e79a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1323&q=80",
      "https://images.unsplash.com/photo-1552550018-5253c1b171e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1562602833-0f4ab2fc46e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1952&q=80"
    ],
    "price": 100,
    "city": "Vaitape",
    "country": "France",
    "description":
        "Visit New Bora-Bora for an amazing and unforgettable adventure",
    "rate": 4.1,
  },
];




// class RecomendationDestination {
//   String name;
//   String imageUrl;
//   String tagLine;
//   List<String> images;
//   int price;
//   String city;
//   String country;
//   String description;
//   double rate;

//   RecomendationDestination(
//     this.name,
//     this.imageUrl,
//     this.tagLine,
//     this.images,
//     this.price,
//     this.city,
//     this.country,
//     this.description,
//     this.rate,
//   );
// }

// List<RecomendationDestination> recommendations = recommendationsData
//     .map((item) => RecomendationDestination(
//           item['name'],
//           item['imageUrl'],
//           item['tagLine'],
//           item['images'],
//           item['price'],
//           item['city'],
//           item['country'],
//           item['description'],
//           item['rate'],
//         ))
//     .toList();

// var recommendationsData = [
//   {
//     "name": "Venecia",
//     "country": "Italy",
//     "city": "Venice",
//     "tagLine": "Semarang Variety of Culture",
//     "imageUrl": "assets/images/venice.jpg",
//     "images": [
//       "assets/images/venice.jpg",
//       "assets/images/venice.jpg",
//       "assets/images/venice.jpg",
//       "assets/images/venice.jpg",
//       "assets/images/venice.jpg",
//     ],
//     "description": "Visit Venice for an amazing and unforgettable adventure.",
//     "price": 100,
//     "rate": 4.1,
//   },
//   
// ];

//   Destination(
//     imageUrl: 'assets/images/TBoraBora.jpg',
//     city: 'Vaitape',
//     country: 'France',
//     description:
//         'Visit New Bora-Bora for an amazing and unforgettable adventure.',
//     rate: 4.4,
//     price: 125,
//   ),
//   Destination(
//     imageUrl: 'assets/images/saopaulo.jpg',
//     city: 'Sao Paulo',
//     country: 'Brazil',
//     description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
//     rate: 4.7,
//     price: 125,
//   ),
//   Destination(
//     imageUrl: 'assets/images/santorini.jpg',
//     city: 'Fira',
//     country: 'Kyklades',
//     description: 'Visit Kyklades for an amazing and unforgettable adventure.',
//     rate: 3.9,
//     price: 125,
//   ),
// ];

// List<Activity> activities = [
//   Activity(
//     imageUrl: 'assets/images/TParis.jpg',
//     name: 'Paris City',
//     type: 'Sightseeing Tour',
//     startTimes: ['9:00 am', '11:00 am'],
//     rating: 5,
//     price: 30,
//   ),
//   Activity(
//     imageUrl: 'assets/images/TBali.jpg',
//     name: 'Walking Tour on Bali',
//     type: 'Sightseeing Tour',
//     startTimes: ['11:00 pm', '1:00 pm'],
//     rating: 4,
//     price: 210,
//   ),
//   Activity(
//     imageUrl: 'assets/images/TLondon.jpg',
//     name: 'Big Ben, London',
//     type: 'Sightseeing Tour',
//     startTimes: ['12:30 pm', '2:00 pm'],
//     rating: 4,
//     price: 125,
//   ),
//   Activity(
//     imageUrl: 'assets/images/TBukitTinggi.jpg',
//     name: 'Tour on West Sumatra',
//     type: 'Sightseeing Tour',
//     startTimes: ['12:30 pm', '2:00 pm'],
//     rating: 4,
//     price: 125,
//   ),
// ];