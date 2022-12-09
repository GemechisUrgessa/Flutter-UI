class Car {
  final int id;
  final String imageUrl;
  final String name;
  final String price;
  final bool isLiked;

  Car(
      {required this.imageUrl,
      required this.name,
      required this.price,
      required this.isLiked,
      required this.id});
}

final Car car1 = Car(
    id: 1,
    imageUrl: 'assets/car1.webp',
    name: '2020 Ford F-150 RAPTOR',
    isLiked: false,
    price: '164, 995');
final Car car2 = Car(
    id: 2,
    imageUrl: 'assets/car2.jpeg',
    name: '2020 Ford F-150 RAPTOR',
    isLiked: false,
    price: '164, 995');
final Car car3 = Car(
    id: 3,
    imageUrl: 'assets/car3.jpeg',
    name: '2020 Ford F-150 RAPTOR',
    isLiked: false,
    price: '164, 995');
final Car car4 = Car(
    id: 4,
    imageUrl: 'assets/car4.jpeg',
    name: '2020 Ford F-150 RAPTOR',
    isLiked: false,
    price: '164, 995');
final Car car5 = Car(
    id: 5,
    imageUrl: 'assets/car5.jpeg',
    name: '2020 Ford F-150 RAPTOR',
    isLiked: false,
    price: '164, 995');
final Car car6 = Car(
    id: 6,
    imageUrl: 'assets/car6.jpeg',
    name: '2020 Ford F-150 RAPTOR',
    isLiked: false,
    price: '164, 995');
final Car car7 = Car(
    id: 7,
    imageUrl: 'assets/car7.jpeg',
    name: '2020 Ford F-150 RAPTOR',
    isLiked: false,
    price: '164, 995');
final Car car8 = Car(
    id: 8,
    imageUrl: 'assets/car9.jpeg',
    name: '2020 Ford F-150 RAPTOR',
    isLiked: false,
    price: '164, 995');
final Car car9 = Car(
    id: 9,
    imageUrl: 'assets/car8.jpeg',
    name: '2020 Ford F-150 RAPTOR',
    isLiked: false,
    price: '164, 995');
final Car car10 = Car(
    id: 10,
    imageUrl: 'assets/car10.webp',
    name: '2020 Ford F-150 RAPTOR',
    isLiked: false,
    price: '164, 995');

List<Car> carModels = [
  car1,
  car2,
  car3,
  car4,
  car5,
  car6,
  car7,
  car8,
  car9,
  car10
];
