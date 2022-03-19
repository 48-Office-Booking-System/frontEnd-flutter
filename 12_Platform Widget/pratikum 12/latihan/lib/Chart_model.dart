class ChartModel {
  final String name;
  final String message;
  final String time;
  final String profileUrl;

  ChartModel({
    required this.name,
    required this.message,
    required this.time,
    required this.profileUrl,
  });
  

  @override
  String toString() {
    return 'ChartModel(name: $name, message: $message, time: $time, profileUrl: $profileUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ChartModel &&
      other.name == name &&
      other.message == message &&
      other.time == time &&
      other.profileUrl == profileUrl;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      message.hashCode ^
      time.hashCode ^
      profileUrl.hashCode;
  }
}

final List<ChartModel> items =[
  ChartModel(name: 'Aida Paramita',message: 'ini aida paramita', time: '12:39',profileUrl: 'http://contoh.jpg'),
  ChartModel(name: 'Arjuna Panji Prakarsa',message: 'ini arjuna panji', time: '12:20',profileUrl: 'httpp://arjuna.jpg'),
  ChartModel(name: 'Danny Ilham Al-Khairi',message: 'ini danny ilham ', time: '12:12',profileUrl: 'http://dani.jpg'),
  ChartModel(name: 'Ega Mawadah ',message: 'ini ega mawadah ', time: '6:11',profileUrl: 'http://ega.jpg'),
  ChartModel(name: 'Wahyu Nugraha',message: 'ini wahyu nugraha', time: '5:10',profileUrl: 'http://wahyun.jpg'),
  ChartModel(name: 'Marshanda',message: 'ini marshanda', time: '4:00',profileUrl: 'http://marsha.jpg'),
  ChartModel(name: 'Joshua Sitompul',message: 'ini jojo', time: 'Dec 10',profileUrl: 'http://jojo.jpg'),
  ChartModel(name: 'Muhammad Surya',message: 'ini surya', time: 'Dec 4',profileUrl: 'http://surya.jpg'),
  ChartModel(name: 'Ahmad Miftahqurohman ',message: 'ini mivtah ', time: 'Dec 3',profileUrl: 'https://mivtah.jpg'),
  ChartModel(name: 'Ade Halimatun ',message: 'ini ade', time: 'Dec 2',profileUrl: 'http://ade.jpg')
];