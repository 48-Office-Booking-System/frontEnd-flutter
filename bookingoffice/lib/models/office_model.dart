class BuildingModel {
  String name;
  String img;
  String category;
  String capacity;
  double price;

  BuildingModel({
    required this.name,
    required this.img,
    required this.category,
    required this.capacity,
    required this.price,
  });
}

var buildingModelData = [
  BuildingModel(
      name: 'Building A',
      img: 'assets/images/gambar1.png',
      category : 'Indoor',
      capacity: '60',
      price: 500000,
  ),
  BuildingModel(
      name: 'Building B',
      img: 'assets/images/gambar2.png',
      category : 'Indoor',
      capacity: '60',
      price: 550000,
  ),
  BuildingModel(
      name: 'Building C',
      img: 'assets/images/gambar3.png',
      category : 'Indoor',
      capacity: '80',
      price: 950000,
  ),
  BuildingModel(
      name: 'Building D',
      img: 'assets/images/gambar4.png',
      category : 'Outdoor',
      capacity: '120',
      price: 800000,
  ),
  BuildingModel(
      name: 'Building E',
      img: 'assets/images/gambar5.png',
      category : 'Outdoor',
      capacity: '150',
      price: 500000,
  ),
  BuildingModel(
      name: 'Building F',
      img: 'assets/images/gambar6.png',
      category : 'Indoor',
      capacity: '60',
      price: 500000,
  ),
];

// var buildingModelData = [
//   BuildingModel(
//       name: 'Building A',
//       img: 'https://images.unsplash.com/photo-1481253127861-534498168948?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1373&q=80',
//       category : 'Indoor',
//       capacity: '60',
//       price: 500000,
//   ),
//   BuildingModel(
//       name: 'Building B',
//       img: 'https://images.unsplash.com/photo-1543892607-04657ef3a279?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
//       category : 'Indoor',
//       capacity: '60',
//       price: 550000,
//   ),
//   BuildingModel(
//       name: 'Building C',
//       img: 'https://images.unsplash.com/photo-1542361345-89e58247f2d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
//       category : 'Indoor',
//       capacity: '80',
//       price: 950000,
//   ),
//   BuildingModel(
//       name: 'Building D',
//       img: 'https://images.unsplash.com/photo-1628693720874-58a0eb94e74e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=80',
//       category : 'Outdoor',
//       capacity: '120',
//       price: 800000,
//   ),
//   BuildingModel(
//       name: 'Building E',
//       img: 'https://images.unsplash.com/photo-1519879110616-349b57f8cd11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
//       ,
//       category : 'Outdoor',
//       capacity: '150',
//       price: 500000,
//   ),
//   BuildingModel(
//       name: 'Building F',
//       img: 'https://images.unsplash.com/photo-1481253127861-534498168948?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1373&q=80',
//       category : 'Indoor',
//       capacity: '60',
//       price: 500000,
//   ),
//   BuildingModel(
//       name: 'Building G',
//       img: 'https://images.unsplash.com/photo-1535640555174-c836c799d250?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
//       category : 'Indoor',
//       capacity: '40',
//       price: 400000,
//   ),
//   BuildingModel(
//       name: 'Building H',
//       img: 'https://images.unsplash.com/photo-1487958449943-2429e8be8625?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
//       category : 'Indoor',
//       capacity: '65',
//       price: 560000,
//   ),
//   BuildingModel(
//       name: 'Building I',
//       img: 'https://images.unsplash.com/photo-1586114539347-b70b5ab0faeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
//       category : 'Outdoor',
//       capacity: '160',
//       price: 950000,
//   ),
//   BuildingModel(
//       name: 'Building J',
//       img: 'https://images.unsplash.com/photo-1575338334737-700ca00d959e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=867&q=80',
//       category : 'Indoor',
//       capacity: '80',
//       price: 700000,
//   ),
// ];