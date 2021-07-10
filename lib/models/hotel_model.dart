part of 'models.dart';

class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;
  String description;
  double rate;

  Hotel(
      {this.imageUrl,
      this.name,
      this.address,
      this.price,
      this.description,
      this.rate});
}

final List<Hotel> hotels = [
  Hotel(
      imageUrl: 'assets/images/hotel2.jpg',
      name: 'Manda Hotels',
      address: '01 Tokyo',
      price: 500000,
      description:
          "Manarola is a small town, a frazione of the comune of Riomaggiore, in the province of La Spezia, Liguria, northern Italy. It is the second-smallest of the famous Cinque Terre towns frequented by tourists, with a population of 353.",
      rate: 4.2),
  Hotel(
      imageUrl: 'assets/images/Hotel4.jpg',
      name: 'Sum Resorts',
      address: '98 Denpasar',
      price: 550000,
      description:
          "The Panoramic Hotel is a modern, elegant 4-star hotel overlooking the sea, perfect for a romantic, charming vacation, in the enchanting setting of Taormina and the Ionian Sea..",
      rate: 5.0),
  Hotel(
      imageUrl: 'assets/images/Hotel5.jpg',
      name: 'Sumnda Hotels',
      address: '506 Lubek',
      price: 590000,
      description:
          "The rooms at the Panoramic Hotel are new, well-lit and inviting. Our reception staff will be happy to help you during your stay in Taormina, suggesting itineraries, guided visits and some good restaurants in the historic centre.",
      rate: 4.9),
];
