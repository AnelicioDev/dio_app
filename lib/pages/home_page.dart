import 'package:dio_app/pages/dados_cadastrais.dart';
import 'package:dio_app/pages/page1.dart';
import 'package:dio_app/pages/testes_widgests.dart';
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Menu')),
            ListTile(
              title: Text('Dados cadastráis'),
              onTap:
                  () => {
                    Navigator.pop(context), //esconde a drawer depois de clicado
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DadosCadastrais(),
                      ),
                    ),
                  },
            ),
            ListTile(title: Text('Configurações')),
          ],
        ),
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
              children: [
                Page1(), 
                TestesWidgests(),
              ],
            ),
          ),
          BottomNavigationBar(
            onTap: (value) => {
              controller.jumpToPage(value)
            },
            currentIndex: posicaoPagina,
            items: [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}
