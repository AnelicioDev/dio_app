import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController(initialPage: 0);
  int posicaoPagina = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged:
                  (val) => {
                    setState(() {
                      posicaoPagina = val;
                    }),
                  },
              scrollDirection: Axis.vertical,
              children: [
                Container(color: Colors.amber),
                Container(color: Colors.blueAccent),
                Container(color: Colors.red),
              ],
            ),
          ),
          BottomNavigationBar(
            onTap: (val)=>{
              controller.jumpToPage(val)
            },
            currentIndex: posicaoPagina,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm),
                label: "Time",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box_outlined),
                label: "Perfil",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
