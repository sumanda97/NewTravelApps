part of 'models.dart';

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
    "name": "Bali",
    "imageUrl":
        "https://i.pinimg.com/originals/24/1e/3e/241e3e5dc83336a29fefad4993fa1499.jpg",
    "tagLine": "Bali Variety of Culture",
    "images": [
      "https://i.pinimg.com/originals/00/2d/48/002d488f199be05c72b60b78a1a9a9e0.jpg",
      "https://i.pinimg.com/originals/3f/77/94/3f77945b46f46a62b5dfb0b66603979c.jpg",
      "https://i.pinimg.com/originals/26/26/c0/2626c07368874328a1a230f276a90534.jpg",
      "https://i.pinimg.com/originals/58/8c/ea/588cead5425fb430bc9a431a58111f5d.jpg",
      "https://i.pinimg.com/originals/4a/df/b0/4adfb0a7655964ff63b616d1211f6764.jpg",
      "https://i.pinimg.com/originals/30/3e/dc/303edc2aff54c7f48b804a90ea5b3dc6.jpg"
    ],
    "price": 100,
    "city": "Kuta",
    "country": "Indonesia",
    "description": "Visit Bali for an amazing and unforgettable adventure.",
    "rate": 5.0,
  },
  {
    "name": "Agra",
    "imageUrl":
        "https://i.pinimg.com/originals/29/99/84/29998484585e999b460746ef63d2bf0e.jpg",
    "tagLine": "BollyWood Variety of Culture",
    "images": [
      "https://i.pinimg.com/originals/0e/c5/ba/0ec5bafb2973325aa1807b25d9069f3a.jpg",
      "https://i.pinimg.com/originals/4b/58/d5/4b58d5c4c2f8af6036bf13aa7909a991.jpg",
      "https://i.pinimg.com/originals/c7/eb/90/c7eb902a463101b0d2a5cccfb1f8cb68.jpg",
      "https://i.pinimg.com/originals/57/5d/6c/575d6cea578613bfa34e2eb66f232ea2.jpg",
      "https://i.pinimg.com/originals/4d/ef/81/4def817acf585adb55e21f3235d40b58.jpg"
    ],
    "price": 100,
    "city": "Agra",
    "country": "India",
    "description":
        "Visit BollyWood for an amazing and unforgettable adventure.",
    "rate": 4.5,
  },
  {
    "name": "Tokyo",
    "imageUrl":
        "https://i.pinimg.com/originals/73/3b/04/733b041007ab8a90a9c6d6c7c5f2a59b.jpg",
    "tagLine": "Japan Variety of Culture",
    "images": [
      "https://i.pinimg.com/originals/19/88/78/198878fe1b78000a81dd3456d4a504ec.jpg",
      "https://i.pinimg.com/originals/0f/72/cc/0f72ccac3262b4e79d58122c1306aba8.jpg",
      "https://i.pinimg.com/originals/aa/b0/74/aab07415ab229318bb693b8da1a0feac.jpg",
      "https://i.pinimg.com/originals/18/0b/21/180b21f32fda0b8014b65375be30a58a.jpg",
      "https://i.pinimg.com/originals/cb/a6/0b/cba60b7f69f479bd17fc0ab68023a54b.jpg",
      "https://i.pinimg.com/originals/4f/19/ba/4f19ba696acd6badd923f8e46b43fe83.jpg"
    ],
    "price": 100,
    "city": "Tokyo",
    "country": "Japan",
    "description": "Visit Japan for an amazing and unforgettable adventure",
    "rate": 4.7,
  },
  {
    "name": "Singapore",
    "imageUrl":
        "https://i.pinimg.com/originals/45/b8/d7/45b8d7639e9fb6d4cf85b6d9e2e65d1e.jpg",
    "tagLine": "Bora Variety of Culture",
    "images": [
      "https://i.pinimg.com/originals/1a/1a/9e/1a1a9ebf8a5570f0390f86236770ee4b.jpg",
      "https://i.pinimg.com/originals/4b/0d/f3/4b0df3a4747ceac08eaa91eaee5484f7.jpg",
      "https://i.pinimg.com/originals/ec/7b/fb/ec7bfb4f4ba05634217c52708b7037a7.jpg",
      "https://i.pinimg.com/originals/67/b4/5b/67b45bd36ea3e3708d40d2edbc3683a0.jpg",
      "https://i.pinimg.com/originals/72/95/18/729518176aaa73f14255d31680e0dd4f.jpg",
      "https://i.pinimg.com/originals/31/6c/4b/316c4b1fff65a2d550a35b2e0be8b719.jpg"
    ],
    "price": 100,
    "city": "Singapore",
    "country": "Singapore",
    "description": "Visit Singapure for an amazing and unforgettable adventure",
    "rate": 4.4,
  },
  {
    "name": "Bangkok",
    "imageUrl":
        "https://i.pinimg.com/originals/57/1d/03/571d038fb96fe6bd6782b3b4d9dbc4a8.jpg",
    "tagLine": "Thailand Variety of Culture",
    "images": [
      "https://i.pinimg.com/originals/ab/f5/f6/abf5f6cdf6e73ad0a607c970f4729753.jpg",
      "https://i.pinimg.com/originals/21/52/1c/21521c5839a9939405966e075ee1854d.jpg",
      "https://i.pinimg.com/originals/3f/9e/16/3f9e16142e4e2b6487ff94f7d95aeb35.jpg",
      "https://i.pinimg.com/originals/b2/12/d1/b212d100377a0ca025676d320842a3e6.jpg",
      "https://i.pinimg.com/originals/8c/7a/65/8c7a654c8df196fc266c8830c1d95af7.jpg",
      "https://i.pinimg.com/originals/82/01/78/8201781e773379dbcb4948fecd69d530.jpg"
    ],
    "price": 100,
    "city": "Bangkok",
    "country": "Thailand",
    "description": "Visit Thailand for an amazing and unforgettable adventure",
    "rate": 4.3,
  },
  {
    "name": "Taipei",
    "imageUrl":
        "https://i.pinimg.com/originals/c0/7d/de/c07dde165d31d30d9653e04981aaa763.jpg",
    "tagLine": "Taiwan Variety of Culture",
    "images": [
      "https://i.pinimg.com/originals/ab/83/a6/ab83a6ee5552e5ef6a2fc2eac1e69ac1.jpg",
      "https://i.pinimg.com/originals/d6/19/52/d619528ef5455baae99a88484db32150.jpg",
      "https://i.pinimg.com/originals/2c/4a/92/2c4a9244a4866952dc9b563f7231c75a.jpg",
      "https://i.pinimg.com/originals/d8/b3/dc/d8b3dce460069ef4b84e850f9ae23e88.jpg",
      "https://i.pinimg.com/originals/b4/da/dd/b4daddaec73a10f6c5d37f0127b6b3e4.jpg",
      "https://i.pinimg.com/originals/43/ad/6a/43ad6a7e11f2fd8c5b480c6bb0629f31.jpg"
    ],
    "price": 100,
    "city": "Taipei",
    "country": "Taiwan",
    "description": "Visit Taiwan for an amazing and unforgettable adventure",
    "rate": 4.5,
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