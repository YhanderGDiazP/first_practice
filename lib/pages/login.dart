import 'register.dart';
import 'package:flutter/material.dart';
import 'forget_password.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyleDesing01 = const TextStyle(
        color: Colors.blue, fontSize: 10, fontStyle: FontStyle.italic);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inicio de Sesion',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.alternate_email,
                          color: Colors.black,
                        ),
                        hintText: 'Correo',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)),
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      hintText: 'Contraseña',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FogetPassword(),
                          ),
                        );
                      },
                      child: Text(
                        '¿Se le olvido su contraseña?',
                        style: textStyleDesing01,
                      ),
                    ),
                    Text(
                      ' | ',
                      style: textStyleDesing01,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Register(),
                          ),
                        );
                      },
                      child: Text(
                        'Registrese',
                        style: textStyleDesing01,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 10,
                height: 55,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        width: 4,
                        color: Colors.purple,
                        style: BorderStyle.solid,
                      ),
                      textStyle: const TextStyle(
                          fontSize: 15, fontStyle: FontStyle.normal),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      minimumSize: const Size(10, 35)),
                  onPressed: () {},
                  child: const Text(
                    'Iniciar Sesion',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
