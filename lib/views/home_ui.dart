import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_project/views/about_ui.dart';
import 'package:flutter_body_health_calculator_project/views/bmi_ui.dart';
import 'package:flutter_body_health_calculator_project/views/bmr_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  //สร้างตัวเเปรเก็บ index ของรายการที่เลือก
  int _currentIndex = 1;
  //สร้างตัวเเปรเเบบ list คือตัวเเปร1ตัวเก็บได้มากกว่า1ข้อมูลเหมือนArray
  List subViewShow = [
    BmiUI(),
    AboutUi(),
    BmrUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // สีพื้นหลังของ scaffold
      backgroundColor: Colors.white,
      //ส่วนของapp Bar
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Body ว้าว',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      //ส่วนของ BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          //***  โค้ดอะไรก็ตามที่มีผลต่อการเเสดงผลบนหน้าจอ 
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: Colors.deepOrange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person),
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.heartCircleCheck),
            label: 'BMR',
          ),
        ],
      ),
      //ส่วนของbody 
      body: subViewShow[_currentIndex],
    );
  }
}
