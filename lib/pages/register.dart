import 'package:flutter/material.dart';


class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Registro',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    //El padding es para separa 30 en top y bot del SizedBox
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        bottom: 30,
                      ),
                      child: Row(
                        //Es el Row para agregar dos Inputs en una fila
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Se utiliza Container/SidedBox para darle limite y no se desborde *First Name*
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 170,
                            // ignore: prefer_const_constructors
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: const TextField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'First Name',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //Se utiliza Container/SidedBox para darle limite y no se desborde *Last Name*
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 170,
                            // ignore: prefer_const_constructors
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: const TextField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Last Name',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            //Se agrega el Input
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              hintText: 'Username',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            keyboardType: TextInputType.number,
                            //Se agrega el Input
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                Icons.phone_android,
                                color: Colors.black,
                              ),
                              hintText: 'Phone',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: Row(
                        //Es el Row para agregar dos Inputs en una fila
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          //Se utiliza Container/SidedBox para darle limite y no se desborde
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 170,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: TextField(
                                style: TextStyle(color: Colors.black),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Age',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  icon: Icon(
                                    Icons.date_range,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //Se utiliza Container/SidedBox para darle limite y no se desborde
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 170,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: TextField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Gener',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  icon: Icon(
                                    Icons.transgender,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
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
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
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
                                Icons.lock,
                                color: Colors.black,
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            obscureText: true,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
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
                                Icons.lock,
                                color: Colors.black,
                              ),
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            obscureText: true,
                          ),
                        ),
                      ),
                    ),

                    //Se le agrega el Boton
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 45,
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
                          'Registrate',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
