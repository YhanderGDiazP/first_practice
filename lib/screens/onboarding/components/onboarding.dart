import 'package:first_practice/pages/login.dart';
import 'package:first_practice/screens/onboarding/components/content_boarding.dart';
import 'package:first_practice/screens/onboarding/components/content_page.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;
  List<Map<dynamic, dynamic>> boardingData = [
    {
      'image': 'assets/images/img01.png',
      'tittle': 'ESPARCIMIENTO',
      'text': 'Lorem ipsum dolor sit amet\nconsectetur adipiscing elit.',
    },
    {
      'image': 'assets/images/img02.png',
      'tittle': 'ADOPCION',
      'text': 'Lorem ipsum dolor sit amet\nconsectetur adipiscing elit.',
    },
    {
      'image': 'assets/images/img03.png',
      'tittle': 'HOSPITALIDAD',
      'text': 'Lorem ipsum dolor sit amet\nconsectetur adipiscing elit.',
    },
    {
      'image': 'assets/images/img04.png',
      'tittle': 'VETERINARIA',
      'text': 'Lorem ipsum dolor sit amet\nconsectetur adipiscing elit.',
    },
    {
      'image': 'assets/images/img05.png',
      'tittle': 'TIENDA',
      'text': 'Lorem ipsum dolor sit amet\nconsectetur adipiscing elit.',
      'textbutton': 'Continuar'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Text('.'),
          ),
          Expanded(
            flex: 3,
            child: PageView.builder(
              itemBuilder: ((context, index) => ContentBoarding(
                    image: boardingData[index]['image'],
                    tittle: boardingData[index]['tittle'],
                    text: boardingData[index]['text'],
                  )),
              itemCount: boardingData.length,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    boardingData.length,
                    (index) => page(index: index, currentPage: currentPage),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: currentPage == boardingData.length - 1
                  ? Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.only(
                            left: 120,
                            right: 120,
                            top: 30,
                            bottom: 30,
                          ),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        },
                        child: const Text(
                          'Continuar',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  : Center(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.only(
                            left: 120,
                            right: 120,
                            top: 20,
                            bottom: 20,
                          ),
                          shape: const StadiumBorder(),
                          side: const BorderSide(
                            width: 2,
                            color: Colors.black38,
                            style: BorderStyle.solid,
                          ),
                        ),
                        onPressed: () {
                            setState(() {
                              currentPage = currentPage == boardingData.length - 1
                                  ? 0
                                  : currentPage + 1;
                          });
                        },
                        child: const Text(
                          'Siguiente',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    )),
        ],
      ),
    );
  }
}
