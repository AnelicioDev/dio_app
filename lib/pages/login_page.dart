import 'package:dio_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String senha = "";
  bool isobscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 232, 233, 255),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Expanded(
                        flex: 5,
                        child: Image.network(
                          "https://hermes.digitalinnovation.one/users/company/3a52d6e3-a58c-4755-89c9-fbc093a8868f.png",
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Já tem cadastro?",
                    style: TextStyle(fontSize: 26),
                  ),
                  const SizedBox(height: 10),
                  const Text("Faça seu login", style: TextStyle(fontSize: 20)),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextField(
                            onChanged: (value) => {email = value, print(email)},
                            decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ),
                          TextField(
                            obscureText: isobscureText,
                            onChanged: (value) => {senha = value, print(senha)},
                            decoration: InputDecoration(
                              labelText: "Senha",
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              prefixIcon: Icon(
                                Icons.lock_outlined,
                                color: Colors.deepPurple,
                              ),
                              suffixIcon: GestureDetector(
                                onTap:
                                    () => {
                                      setState(() {
                                        isobscureText = !isobscureText;
                                      }),
                                    },
                                child: Icon(
                                  isobscureText
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 200,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () => {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => HomePage())
                        )
                      },
                      child: Text(
                        "Entrar",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    child: Column(
                      children: [
                        Text(
                          "Esqueceu a senha?",
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 220, 166, 7),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Criar conta",
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 7, 128, 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
