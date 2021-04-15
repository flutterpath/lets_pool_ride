import 'package:flutter/material.dart';
import 'package:lets_pool/model/stepModel.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/text/text16SemiBold.dart';
import 'package:lets_pool/widgets/text/text32Bold.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  List<StepModel> list = StepModel.list;
  var _controller = PageController();
  var initialPage = 0;

  _body(PageController controller) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
                  _displayText(list[index].text, "Request a ride get picked up by a nearby community driver"),
                  _displayImage(list[index].id),
            ],
          );
        },
      ),
    );
  }

  _indicator() {
    return Container(
      width: 90,
      height: 90,
      margin: EdgeInsets.symmetric(vertical: 30),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 90,
              height: 90,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(MyColors.primary),
                value: (initialPage + 1) / (3),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                if (initialPage < list.length)
                  _controller.animateToPage(initialPage + 1,
                      duration: Duration(microseconds: 500),
                      curve: Curves.easeIn);
                if (initialPage == list.length-1) {
                  Navigator.pushReplacementNamed(context, '/LocationDeclare');
                }
              },
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: MyColors.primary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _displayText(String text, String subText) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.1,),
        Text32Bold(
          text: text,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Text16SemiBold(
            text: subText,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  _displayImage(String path) {
    return Image.asset(
      path,
      height: MediaQuery.of(context).size.height * .5,
    );
  }

  @override
  Widget build(BuildContext context) {

    _controller.addListener(() {
      setState(() {
        initialPage = _controller.page.round();
      });
    });

    return Scaffold(
      body: Column(
        children: <Widget>[
          _body(_controller),
          _indicator(),
        ],
      ),
    );
  }
}
