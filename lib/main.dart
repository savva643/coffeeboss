import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

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
                padding: const EdgeInsets.only(top: 10,  left: 10),
                height: 300.0,
                child: ListView(
                    children: <Widget>[
                      const Text('Акция ”COFFE-NON-STOP”', 
                        style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: "Gilroy",
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 100.0,
                  child:
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:
                    Container(
                        color: const Color.fromRGBO(242, 232, 201, 1),
                    height: 60.0,
                    child: TextButton(onPressed: () {}, child: const Text('Крутить барабан!',
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
      ][_selectedIndex],
    );
  }
}
