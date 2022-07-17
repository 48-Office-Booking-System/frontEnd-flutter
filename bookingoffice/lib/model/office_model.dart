class BuildingModel {
  int id;
  String name;
  String img;
  String title;
  String location;
  String locationdetail;
  String facility;
  String pricehours;
  String category;
  String capacity;
  double price;


  BuildingModel({
    required this.id,
    required this.name,
    required this.img,
    required this.title,
    required this.location,
    required this.locationdetail,
    required this.facility,
    required this.pricehours,
    required this.category,
    required this.capacity,
    required this.price,
  });
}

// var buildingModelData = [
//   BuildingModel(
//     id: 1,
//     name: 'Building A',
//     img: 'assets/images/gambar1.png',
//     title: 'Ruang Meeting indoor yang berkualitas dengan mementingkan kenyamanan dan fasilitas yang mendukung kegiatan meeting anda. Meeting bersama rekan kerja akan berjalan dengan lancar.',
//     location: 'APL Tower - Central Park 26th floor Unit T3',
//     locationdetail: 'Jl. Letjen S. Parman 28, Tanjung Duren Selatan , Grogol petamburan, Jakarta Barat, 11470, Indonesia',
//     facility: 'Dilengkapi dengan AC, proyektor, bangku, sofa, meja, papan tulis dan lainnya.',
//     pricehours: 'Rp 500.000 x 1 Jam',
//     category : 'Indoor',
//     capacity: '51-60',
//     price: 500000,
//   ),
//   BuildingModel(
//     id: 2,
//     name: 'Building B',
//     img: 'assets/images/gambar2.png',
//     title: 'Ruang Meeting indoor yang berkualitas dengan mementingkan kenyamanan dan fasilitas yang mendukung kegiatan meeting anda. Meeting bersama rekan kerja akan berjalan dengan lancar.',
//     location: 'APL Tower - Central Park 26th floor Unit T3',
//     locationdetail: 'Jl. Letjen S. Parman 28, Tanjung Duren Selatan , Grogol petamburan, Jakarta Barat, 11470, Indonesia',
//     facility: 'Dilengkapi dengan AC, proyektor, bangku, sofa, meja, papan tulis dan lainnya.',
//     pricehours: 'Rp 550.000 x 1 Jam',
//     category : 'Indoor',
//     capacity: '31-40',
//     price: 550000,
//   ),
//   BuildingModel(
//     id: 3,
//     name: 'Building C',
//     img: 'assets/images/gambar3.png',
//     title: 'Ruang Meeting indoor yang berkualitas dengan mementingkan kenyamanan dan fasilitas yang mendukung kegiatan meeting anda. Meeting bersama rekan kerja akan berjalan dengan lancar.',
//     location: 'APL Tower - Central Park 26th floor Unit T3',
//     locationdetail: 'Jl. Letjen S. Parman 28, Tanjung Duren Selatan , Grogol petamburan, Jakarta Barat, 11470, Indonesia',
//     facility: 'Dilengkapi dengan AC, proyektor, bangku, sofa, meja, papan tulis dan lainnya.',
//     pricehours: 'Rp 950.000 x 1 Jam',
//     category : 'Indoor',
//     capacity: '11-20',
//     price: 950000,
//   ),
//   BuildingModel(
//     id: 4,
//     name: 'Building D',
//     img: 'assets/images/gambar4.png',
//     title: 'Ruang Meeting indoor yang berkualitas dengan mementingkan kenyamanan dan fasilitas yang mendukung kegiatan meeting anda. Meeting bersama rekan kerja akan berjalan dengan lancar.',
//     location: 'APL Tower - Central Park 26th floor Unit T3',
//     locationdetail: 'Jl. Letjen S. Parman 28, Tanjung Duren Selatan , Grogol petamburan, Jakarta Barat, 11470, Indonesia',
//     facility: 'Dilengkapi dengan AC, proyektor, bangku, sofa, meja, papan tulis dan lainnya.',
//     pricehours: 'Rp 500.000 x 1 Jam',
//     category : 'Outdoor',
//     capacity: '51-60',
//     price: 800000,
//   ),
//   BuildingModel(
//     id: 5,
//     name: 'Building E',
//     img: 'assets/images/gambar5.png',
//     title: 'Ruang Meeting indoor yang berkualitas dengan mementingkan kenyamanan dan fasilitas yang mendukung kegiatan meeting anda. Meeting bersama rekan kerja akan berjalan dengan lancar.',
//     location: 'APL Tower - Central Park 26th floor Unit T3',
//     locationdetail: 'Jl. Letjen S. Parman 28, Tanjung Duren Selatan , Grogol petamburan, Jakarta Barat, 11470, Indonesia',
//     facility: 'Dilengkapi dengan AC, proyektor, bangku, sofa, meja, papan tulis dan lainnya.',
//     pricehours: 'Rp 500.000 x 1 Jam',
//     category : 'Outdoor',
//     capacity: '51-60',
//     price: 500000,
//   ),
//   BuildingModel(
//     id: 6,
//     name: 'Building F',
//     img: 'assets/images/gambar6.png',
//     title: 'Ruang Meeting indoor yang berkualitas dengan mementingkan kenyamanan dan fasilitas yang mendukung kegiatan meeting anda. Meeting bersama rekan kerja akan berjalan dengan lancar.',
//     location: 'APL Tower - Central Park 26th floor Unit T3',
//     locationdetail: 'Jl. Letjen S. Parman 28, Tanjung Duren Selatan , Grogol petamburan, Jakarta Barat, 11470, Indonesia',
//     facility: 'Dilengkapi dengan AC, proyektor, bangku, sofa, meja, papan tulis dan lainnya.',
//     pricehours: 'Rp 500.000 x 1 Jam',
//     category : 'Indoor',
//     capacity: '41-50',
//     price: 500000,
//   ),
// ];