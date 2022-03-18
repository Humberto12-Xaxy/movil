import 'package:flutter/material.dart';
import 'package:practicas/Styles/colors_view.dart';

import '../widgets/contentBoarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;
  PageController controller = PageController(initialPage: 0);
  List<Map<String, String>> onBoardingData = [
    {
      "title": "ESPARCIMIENTO",
      'subtitle': 'Brindamos todos los servicios para consentir',
      "image": "assets/img/B1.png",
    },
    {
      "title": "ADOPCIÓN",
      'subtitle': 'Brindamos todos los servicios para consentir',
      "image": "assets/img/B2.png",
    },
    {
      "title": "HOSPITALIDAD",
      'subtitle': 'Brindamos todos los servicios para consentir',
      "image": "assets/img/B3.png",
    },
    {
      "title": "VETERINARIA",
      'subtitle': 'Brindamos todos los servicios para consentir',
      "image": "assets/img/B4.png",
    },
    {
      "title": "TIENDA",
      'subtitle': 'Brindamos todos los servicios para consentir',
      "image": "assets/img/B5.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    pages = value;
                  });
                },
                itemCount: onBoardingData.length,
                itemBuilder: (context, index) => ContentBoarding(
                  title: onBoardingData[index]["title"]!,
                  subtitle: onBoardingData[index]["subtitle"]!,
                  image: onBoardingData[index]["image"]!,
                ),
              ),
              flex: 4,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(onBoardingData.length,
                        (index) => animatedMethod(index: index)),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 180)),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (pages == onBoardingData.length - 1) {
                          Navigator.pushNamed(context, 'progress');
                        } else {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 150),
                              curve: Curves.easeIn);
                        }
                      },
                      child: Text(
                        pages == onBoardingData.length - 1
                            ? 'Continuar'
                            : 'Siguiente',
                        style: TextStyle(
                          color: pages == onBoardingData.length - 1
                              ? ColorSelect.btnBackgroundBo1
                              : ColorSelect.txtBoSubHe,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          side: BorderSide(
                            width: 3,
                            color: pages == onBoardingData.length - 1
                                ? Colors.transparent
                                : ColorSelect.txtBoSubHe,
                          ),
                          primary: pages == onBoardingData.length - 1
                              ? ColorSelect.btnBackgroundBo2
                              : ColorSelect.btnBackgroundBo1),
                    ),
                  )
                ],
              ),
              flex: 3,
            )
          ],
        ),
      ),
    ));
  }

  AnimatedContainer animatedMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: pages == index
              ? ColorSelect.paginatorNext
              : ColorSelect.txtBoSubHe),
      height: 5,
      width: pages == index ? 20 : 15,
      duration: kThemeAnimationDuration,
    );
  }
}
