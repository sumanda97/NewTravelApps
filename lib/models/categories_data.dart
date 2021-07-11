part of 'models.dart';

class CatDestination {
  String image;
  String name;
  int price;
  double rate;

  CatDestination({
    this.image,
    this.name,
    this.price,
    this.rate,
  });
}

final List<CatDestination> categories = [
  CatDestination(
    image:
        "https://images.unsplash.com/photo-1501950183564-3c8ac97d08f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    name: "Beach 1",
    price: 150000,
    rate: 4.7,
  ),
  CatDestination(
    image:
        "https://images.unsplash.com/photo-1546484475-7f7bd55792da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    name: "Beach 2",
    price: 160000,
    rate: 4.6,
  ),
  CatDestination(
    image:
        "https://images.unsplash.com/photo-1539609413529-1166774c3954?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    name: "Mountain 1",
    price: 170000,
    rate: 4.5,
  ),
  CatDestination(
    image:
        "https://images.unsplash.com/photo-1573790387438-4da905039392?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=666&q=80",
    name: "Mountain 2",
    price: 180000,
    rate: 4.4,
  ),
  CatDestination(
    image:
        "https://images.unsplash.com/photo-1591152348786-b37131d37840?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    name: "Lake 1",
    price: 190000,
    rate: 4.3,
  ),
  CatDestination(
    image:
        "https://images.unsplash.com/photo-1540690448301-9f7ead5263ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1268&q=80",
    name: "River 1",
    price: 200000,
    rate: 4.1,
  ),
];
