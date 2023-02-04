import 'package:flutter/material.dart';

class FogetPassword extends StatelessWidget {
  const FogetPassword({super.key});

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      const Text('¿Se ha olvidado la contraseña de su cuenta?'),
                      const Text(
                          'Para recuperar su contraseña, ingrese su correo electronico'),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30, top: 30),
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
                                hintText: 'Verify email address',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          textStyle: const TextStyle(
                              fontSize: 15, fontStyle: FontStyle.normal),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Recuperar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
