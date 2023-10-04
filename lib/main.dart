import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';


void main() async {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount),
            label: 'Discounts',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: 'Coffee',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,

      ),
      body: <Widget>[
        ListView(
            children: <Widget>[
            Container(
              color: const Color.fromRGBO(242, 232, 201, 1),
              padding: const EdgeInsets.only(top: 20),
              child: const Center(
                child: Text('Coffee Boss',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontFamily: "Gilroy",
                  fontSize: 32.0,
                ),
              ),
              ),
            ),
            Container(
                color: const Color.fromRGBO(242, 232, 201, 1),
                padding: const EdgeInsets.only(top: 20),
                child: const Center(
                  child: Text('Добрый вечер, \nПетр',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: "Gilroy",
                      fontSize: 32.0,
                    ),
                  ),
                ),
              ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            color: const Color.fromRGBO(242, 232, 201, 1),
            child: Container(
              height: 90.0,
              width: 270.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(
                      'assets/img/bonuscard3.png'),
                  fit: BoxFit.contain,
                ),
              ),
            )
          ),
              Container(
                color: const Color.fromRGBO(30, 30, 30, 1),
                padding: const EdgeInsets.only(top: 10,  left: 10, right: 10),
                height: 280.0,
                child: ListView(
                    children: <Widget>[
    Container(child:

                      const Text('Акция ”COFFE-NON-STOP”', 
                        style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: "Gilroy",
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
    ),
                      Container(
                        height: 140.0,
                        width: 400.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage(
                                'assets/img/bonus.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: 100.0,
                  child:
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:
                    Container(
                        color: const Color.fromRGBO(242, 232, 201, 1),
                    height: 60.0,
                    child: TextButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Iphone1313Pro2()),
                      );
                    }, child: const Text('Крутить барабан!',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Gilroy",
                        fontSize: 24.0,
                      ),
                    )
                    )
                    ),
                ),
                ),
                ]
                ),
              ),
         ]
        ),
        Container(
          color: const Color.fromRGBO(242, 232, 201, 1),
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: const Color.fromRGBO(242, 232, 201, 1),
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
        Container(
          color: const Color.fromRGBO(242, 232, 201, 1),
          alignment: Alignment.center,
          child: const Text('Page 4'),
        ),
        Container(
          color: const Color.fromRGBO(242, 232, 201, 1),
          alignment: Alignment.center,
          child: const Text('Page 5'),
        ),
      ][_selectedIndex],
    );
  }
}

class Iphone1313Pro2 extends StatefulWidget  {







  State<Iphone1313Pro2> createState() => _FooState();
}
class _FooState extends State<Iphone1313Pro2> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> animation;
  late AnimationController animationController;
  late Animation<Offset> animationb;
  late AnimationController animationControllerb;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<Offset>(begin: Offset(0.18, 4.3), end: Offset(-1.82, 4.3))
        .animate(animationController);

    animationControllerb =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animationb = Tween<Offset>(begin: Offset(0.117, 8.4), end: Offset(-1.883, 8.4))
        .animate(animationControllerb);
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 640,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 360,
                  height: 640,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 360,
                          height: 640,
                          decoration: const BoxDecoration(color: Color(0xFFF2E8C9)),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 300,
                        child: Container(
                          width: 360,
                          height: 425,
                          decoration: const ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(55),
                                topRight: Radius.circular(55),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 109,
                        top: 30,
                        child: Text(
                          'Coffee Boss',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w900,
                              height: 0,
                              decoration: TextDecoration.none
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 20,
                        top: 81,
                        child: Text(
                          'Добрый вечер ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w900,
                            height: 0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 97,
                top: 234,
                child: Text(
                  'Введите телефон',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w900,
                      height: 0,
                      decoration: TextDecoration.none
                  ),
                ),
              ),
              const Positioned(
                left: 97,
                top: 234,
                child: Text(
                  'Выберите язык',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w900,
                      height: 0,
                      decoration: TextDecoration.none
                  ),
                ),
              ),
              const Positioned(
                left: 55,
                top: 264,
                child: Text(
                  'Чтобы войти или зарегестрироватся',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w900,
                      height: 0,
                      decoration: TextDecoration.none
                  ),
                ),
              ),

          SlideTransition(
            position: animationb,
            child:
              Positioned(
                left: 35,
                top: 440,
                child:
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:
                  Container(
                      width: 300,
                      height: 50,
                      color: const Color(0xFF1E1E1E),
                      child: TextButton(onPressed: () {
                        animationController.forward();
                        animationControllerb.forward();
                      }, child: const Text('Продолжить',
                        style: TextStyle(
                          color: Color(0xFFF2E8C9),
                          fontWeight: FontWeight.w900,
                          fontFamily: "Gilroy",
                          fontSize: 24.0,
                        ),
                      )
                      )
                  ),
                ),
              ),
          ),


              SlideTransition(
                position: animation,
                child:
                Positioned(
                  left: 50,
                  top: 340,
                  child:
                  Container(
                    width: 268,
                    height: 76,
                    child:
                    Positioned(
                      left: 0,
                      top: 0,
                      child:
                      Stack(
                        children: [

                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 125,
                              height: 35,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 125,
                                      height: 35,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF1E1E1E),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 24,
                                    top: 8,
                                    child: Text(
                                      '🇷🇺 Русский',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Gilroy',
                                          fontWeight: FontWeight.w900,
                                          height: 0,
                                          decoration: TextDecoration.none
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 268,
                              height: 76,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 143,
                                    top: 0,
                                    child: Container(
                                      width: 125,
                                      height: 35,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 125,
                                              height: 35,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF1E1E1E),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 29,
                                            top: 8,
                                            child: Text(
                                              '🇬🇧 English',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w900,
                                                  height: 0,
                                                  decoration: TextDecoration.none
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 41,
                                    child: Container(
                                      width: 125,
                                      height: 35,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 125,
                                              height: 35,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF1E1E1E),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 9,
                                            top: 8,
                                            child: Text(
                                              '🇺🇦 Український',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w900,
                                                  height: 0,
                                                  decoration: TextDecoration.none
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 143,
                                    top: 41,
                                    child: Container(
                                      width: 125,
                                      height: 35,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 125,
                                              height: 35,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF1E1E1E),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 18,
                                            top: 8,
                                            child: Text(
                                              '🇧🇾 Беларускі',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w900,
                                                  height: 0,
                                                  decoration: TextDecoration.none
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),





              Positioned(
                left: 35,
                top: 424,
                child: Container(
                  width: 300,
                  height: 50,
                  child: Stack(
                    children: [

                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 300,
                          height: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:
                            Container(
                                color: const Color(0xFF1E1E1E),
                                height: 60.0,
                                child: TextButton(onPressed: () {
                                }, child: const Text('Продолжить',
                                  style: TextStyle(
                                    color: Color(0xFFF2E8C9),
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "Gilroy",
                                    fontSize: 24.0,
                                  ),
                                )
                                )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 350,
                child: Container(
                  width: 300,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF1E1E1E),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                          ),
                        ),
                      ),

                      const Positioned(
                        left: 100,
                        top: -2,
                        width: 160.0,
                        child:  Hero(
                          tag: "search_text_field",
                          child: Material(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              maxLength: 10,
                              decoration: InputDecoration(
                                hintText: '977 777 77 77',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 24,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w900,
                                    decoration: TextDecoration.none,
                                    height: 0),
                                filled: true,
                                fillColor: const Color(0xFF1E1E1E),
                              ),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 53,
                        top: 10,
                        child: Text(
                          '🇷🇺 +7',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w900,
                            decoration: TextDecoration.none,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 100,
                top: 600,
                child: Text(
                  'Босс-Холдинг',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w900,
                      height: 0,
                      decoration: TextDecoration.none
                  ),
                ),
              ),
              Positioned(
                left: 49,
                top: 494,
                child: Container(
                  width: 30,
                  height: 31,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 30,
                          height: 31,
                          decoration: const ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(
                                width: 5,
                                strokeAlign: BorderSide.strokeAlignOutside,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 2.50,
                        top: 2.58,
                        child: Container(
                          width: 25,
                          height: 25.83,
                          decoration: const ShapeDecoration(
                            color: Colors.black,
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 87,
                top: 500,
                child: SizedBox(
                  width: 239,
                  child: Text(
                    'Я принимаю условия сервиса',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.none,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
