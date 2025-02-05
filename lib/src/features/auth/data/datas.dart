import 'package:flutter/material.dart';

import '../../../core/resources/images/app_images.dart';

class UserProfile {
  final int id;
  final String displayName;
  final String username;
  final String bio;
  final String link;
  final String profileImage;

  UserProfile({
    required this.id,
    required this.displayName,
    required this.username,
    required this.bio,
    required this.link,
    required this.profileImage,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'],
      displayName: json['displayName'],
      username: json['username'],
      bio: json['bio'],
      link: json['link'],
      profileImage: json['profile_image'],
    );
  }
}

List<UserProfile> datas = [
  {
    "id": 1,
    "displayName": "Jhon Daniel",
    "username": "_savannah",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/men/9.jpg"
  },
  {
    "id": 2,
    "displayName": "Savannah Green",
    "username": "_savannah",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/women/9.jpg"
  },
  {
    "id": 3,
    "displayName": "Mabel Evans",
    "username": "_evans93",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/women/71.jpg"
  },
  {
    "id": 4,
    "displayName": "Justin Olson",
    "username": "justin_olson",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/men/72.jpg"
  },
  {
    "id": 5,
    "displayName": "Stanley Reid",
    "username": "itsstanley",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/men/31.jpg"
  },
  {
    "id": 6,
    "displayName": "Corey Henry",
    "username": "the_henry",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/men/60.jpg"
  },
  {
    "id": 7,
    "displayName": "Amanda Alvarez",
    "username": "alvarez",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/women/45.jpg"
  },
  {
    "id": 8,
    "displayName": "Tyler Anderson",
    "username": "tyler_anderson",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/men/57.jpg"
  },
  {
    "id": 9,
    "displayName": "Ruben Thompson",
    "username": "sniper007",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/men/46.jpg"
  },
  {
    "id": 10,
    "displayName": "Alexa Turner",
    "username": "alexa_",
    "bio": "Lorem ipsum dolor sit amet, consectetur ipsum dolor. Lorem ipsum",
    "link": "",
    "profile_image": "https://randomuser.me/api/portraits/women/11.jpg"
  }
].map((data) => UserProfile.fromJson(data)).toList();

/////
class Municipio {
  final int id;
  final String nome;
  final String provincia;
  final String image;

  Municipio(
      {required this.id,
      required this.nome,
      required this.provincia,
      required this.image});

  factory Municipio.fromJson(Map<String, dynamic> json) {
    return Municipio(
      id: json['id'],
      nome: json['nome'],
      provincia: json['provincia'],
      image: json['image'],
    );
  }
}

List<Municipio> municipios = [
  {
    "id": 1,
    "nome": "Negage",
    "provincia": "Uíge",
    "image": AppImages.informatica1
  },
  {"id": 2, "nome": "Viana", "provincia": "Luanda", "image": AppImages.image1},
  {
    "id": 3,
    "nome": "Ambriz",
    "provincia": "Bnego",
    "image": AppImages.matematica1
  },
  {"id": 4, "nome": "Lubango", "provincia": "Huíla", "image": AppImages.saude1},
  {"id": 5, "nome": "Chitempo", "provincia": "Bié", "image": AppImages.image3},
  {
    "id": 6,
    "nome": "Lobito",
    "provincia": "Benguela",
    "image": AppImages.enfermagem1
  },
  {
    "id": 7,
    "nome": "Bolongongo ah",
    "provincia": "Cabinda",
    "image": AppImages.image2
  },
  {
    "id": 8,
    "nome": "Menongue",
    "provincia": "Kuando Kubango",
    "image": AppImages.saude2
  },
  {
    "id": 9,
    "nome": "Calandula",
    "provincia": "Malanje",
    "image": AppImages.image4
  },
  {"id": 10, "nome": "Soyo", "provincia": "Zaire", "image": AppImages.angola2}
].map((data) => Municipio.fromJson(data)).toList();

class Lesson {
  final String professorName;
  final String disciplineName;
  final double percentage;
  final Color color;

  Lesson({
    required this.professorName,
    required this.disciplineName,
    required this.percentage,
    required this.color,
  });
}

List<Lesson> fakeLessons = [
  Lesson(
      professorName: 'Lela Fieta',
      disciplineName: 'Matemática Aqua',
      percentage: 50.0,
      color: Color.fromARGB(255, 0, 255, 119)),
  Lesson(
      professorName: 'Pedro Epalanga',
      disciplineName: 'História',
      percentage: 36.5,
      color: const Color(0xfff00000)),
  Lesson(
      professorName: 'Osorio Palhais',
      disciplineName: 'Ciências',
      percentage: 92.3,
      color: Color.fromARGB(255, 255, 230, 0)),
  Lesson(
      professorName: 'Gunza Fernandes',
      disciplineName: 'Geografia',
      percentage: 10.4,
      color: Color.fromARGB(15, 25, 0, 255)),
  Lesson(
      professorName: 'Edson Xauvunge',
      disciplineName: 'Inglês',
      percentage: 90.1,
      color: Color.fromARGB(255, 81, 0, 255)),
];

class SchoolNotice {
  final String description;
  final String image;
  final Color color;

  SchoolNotice({
    required this.description,
    required this.image,
    required this.color,
  });
}

List<SchoolNotice> fakeNotices = [
  SchoolNotice(
    description: 'Aulas de reforço começam na próxima semana.',
    image: 'assets/images/reforco.png',
    color: Color.fromARGB(255, 81, 0, 255),
  ),
  SchoolNotice(
    description: 'Festa junina será realizada no dia 24 de junho.',
    image: 'assets/images/festa_junina.png',
    color: Color.fromARGB(255, 0, 255, 119),
  ),
  SchoolNotice(
    description: 'Entrega de boletins na próxima sexta-feira.',
    image: 'assets/images/boletins.png',
    color: Color.fromARGB(255, 0, 255, 119),
  ),
  SchoolNotice(
    description: 'Semana da ciência e tecnologia, participe!',
    image: 'assets/images/ciencia_tecnologia.png',
    color: Color.fromARGB(255, 81, 0, 255),
  ),
];
