import 'package:flutter/material.dart';
import 'package:odc_app/constant/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/components.dart';

var boardingController = PageController();
var isLast = false;

class BoardingModel {
  final String title;
  final String images;
  final String body;

  BoardingModel(
      {required this.title, required this.images, required this.body});
}

List<BoardingModel> boardingmodel = [
  BoardingModel(
    images: 'assets/images/illustration.png',
    title: 'Learn a lot of courses in Orange Education ',
    body:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
  ),
  BoardingModel(
    images: 'assets/images/illustrations.png',
    title: 'Learn a lot of courses in Orange Education ',
    body:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
  BoardingModel(
    images: 'assets/images/illustrationss.png',
    title: 'Learn a lot of courses in Orange Education',
    body:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
];

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          // TextButton(
          //     onPressed:() {submit(context);},
          //     child: const Text(
          //       'SKIP',
          //       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          //     ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: boardingController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (int index) {
                  if (index == boardingmodel.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(boardingmodel[index]),
                itemCount: boardingmodel.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
                image: AssetImage(model.images), height: 242.07, width: 282.3),
          ),
          SizedBox(height: 45.0),
          Padding(
            padding: const EdgeInsets.only(right: 55.0,left: 55),
            child: Text(
              model.title,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 11.0),
          Padding(
            padding: const EdgeInsets.only(right: 45.0,left: 45),
            child: Text(
              model.body,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                  color: Colors.grey),
            ),
          ),
          SizedBox(height: 65),
          SmoothPageIndicator(
            controller: boardingController,
            count: boardingmodel.length,
            effect: const SwapEffect(spacing: 12.0,dotHeight: 8,dotWidth: 8,dotColor: Colors.grey,activeDotColor: mainColor),
          ),
          const SizedBox(height: 46.45,),
          Row(
            children: [
              Container(
                height: 50,
                width: 154.0,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: defaultButton(
                    text: 'Join Now',
                    textColor: Colors.white,
                    isUpper: false,
                    onTap: () {
                      //  Get.offAndToNamed(Routes.loginScreen);
                    }),
              ),
              const SizedBox(
                width: 30.0,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 154.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: mainColor),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: defaultButton(
                      text: 'Log in',
                      textColor: mainColor,
                      isUpper: false,
                      onTap: () {
                        //  Get.offAndToNamed(Routes.signupScreen);
                      }),
                ),
              ),
            ],
          ),
        ],
      );
// void submit(context){
//   CashHelper.saveData(key: 'Boarding', value: true).then((value) {
//     if (value=true) {
//       Navigator.pushAndRemoveUntil(context,
//         MaterialPageRoute(builder: (BuildContext context) => LoginScreen(),
//         ),
//             (Route<dynamic>route) => false,
//       );
//     }
//   });
//
// }
}
