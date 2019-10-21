import 'package:flutter/material.dart';

import './job.dart';

class Jobs with ChangeNotifier {
  List<Job> _posts = [
    Job(
      id: 'p1',
      title: 'Head Chef',
      employerName: 'Mekuru Ramen',
      description: 'Our teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and BeveragesOur teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and BeveragesOur teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and BeveragesOur teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and BeveragesOur teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and BeveragesOur teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and Beverages',
      salary: 2500000,
      type: 'Full Time',
      gender: 'Male',
      typeSalary: 'Per Month',
      location: 'Pontianak, Kalimantan Barat',
      industry: 'Food and Beverages',
      education: 'High School',
      workingday: 'Tuesday - Sunday',
      workinghour: '08.00 - 21.30',
      imageUrl:
          'https://i.ibb.co/9NyNjxM/mekuru-2.png',
      skill:  'required: ' 
              '• 1+ years experience in F&B company' 
              '• work with passion and team oriented'
              '• Kitchen oriented.'
              '• can work comfortably alongside both jobuction and serving teams'
              '• a strong written and verbal communicator'
              '• attention to food serving perfection',
    ),
    Job(
      id: 'p2',
      title: 'Assistant Chef',
      employerName: 'Mekuru Ramen',
      description: 'Our teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and Beverages',
      salary: 2500000,
      type: 'Part Time',
      gender: 'Female',
      typeSalary: 'Per Month',
      location: 'Pontianak, Kalimantan Barat',
      industry: 'Food and Beverages',
      education: 'High School',
      workingday: 'Tuesday - Sunday',
      workinghour: '08.00 - 21.30',
      imageUrl:
          'https://i.ibb.co/9NyNjxM/mekuru-2.png',
      skill:  'required: ' 
              '• 1+ years experience in F&B company' 
              '• work with passion and team oriented'
              '• Kitchen oriented.'
              '• can work comfortably alongside both jobuction and serving teams'
              '• a strong written and verbal communicator'
              '• attention to food serving perfection',
    ),
    Job(
      id: 'p3',
      title: 'Cleaning Service',
      employerName: 'Up2u',
      description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',      salary: 2500000,
      type: 'Weekend',
      gender: 'Male / Female',
      typeSalary: 'Per Day',
      location: 'Banjarmasin, Kalimantan Barat',
      industry: 'Food and Beverages',
      education: 'High School',
      workingday: 'Sunday',
      workinghour: '10.00 - 22.00',
      imageUrl:
          'https://i.ibb.co/1GcZb6v/up2u.png',
      skill:  'required: ' 
              '• -' 
              '• -'
              '• -'
              '• -'
              '• -'
              '• -',
    ),
    Job(
      id: 'p4',
      title: 'CCTV Installer',
      employerName: 'CV. CCTV Installer',
      description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      salary: 1800000,
      type: 'Freelance',
      gender: 'Male / Female',
      typeSalary: 'Per Week',
      location: 'Singkawang, Kalimantan Barat',
      industry: 'Technology',
      education: 'High School',
      workingday: 'Saturday - Sunday',
      workinghour: '06.00 - 04.00',
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/12/27/10/14/image-3042333_960_720.png',
      skill:  'required: ' 
              '• -' 
              '• -'
              '• -'
              '• -'
              '• -'
              '• -',
    ),
    Job(
      id: 'p5',
      title: 'Mobile App Beckend',
      employerName: 'PT. Mobile Apps',
      description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      salary: 10000000,
      type: 'Full Time',
      gender: 'Male',
      typeSalary: 'Per Month',
      location: 'Jakarta, Jawa Timur',
      industry: 'Human Resource',
      education: 'S1',
      workingday: 'Everyday',
      workinghour: '07.00 - 17.00',
      imageUrl:
          'https://img.freepik.com/free-vector/professional-programmer-engineer-writing-code_3446-693.jpg?size=338&ext=jpg',
      skill:  'required: ' 
              '• -' 
              '• -'
              '• -'
              '• -'
              '• -'
              '• -',
    ),
  ];
  // var _showFavoritesOnly = false;

  List<Job> get posts {
    return [..._posts];
  }

  List<Job> get savePosts {
    return _posts.where((jobPost) => jobPost.isSave).toList();
  }

  Job findById(String id) {
    return _posts.firstWhere((job) => job.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addJob() {
    // _posts.add(value);
    notifyListeners();
  }
}
