part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.city,
      this.picturePath});

  @override
  List<Object> get props => [id, name, email, address, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Odi',
    address: 'Jalan Lubuk Begalung',
    city: 'Padang',
    email: 'mandamanda49@gmail.com',
    picturePath:
        'https://i.pinimg.com/originals/b7/02/30/b702300a4b7b338e4f2b9d25bc93ee6f.jpg');
