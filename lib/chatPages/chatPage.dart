import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/circleAvatarWidget.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController _message = TextEditingController();
  final messages = [
    "hwd Modi",
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'This is a short message.',
    'This is a relatively longer line of text.',
    'Hi!'
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: MyColors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Container(
                    height: 45,
                    width: width,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios)),
                        SizedBox(
                          width: 10,
                        ),
                        Stack(
                          children: [
                            CircleAvatarWidget(
                              imagePath: "assets/icons/group.png",
                              imgHeight: 30,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 2, color: MyColors.white),
                                    color: Colors.green),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, '/GroupInfo'),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextBold(
                                  text: "Roj ke Sathi",
                                  fontSize: 14,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    NormalText(
                                      text: "4 Active",
                                      fontSize: 14,
                                      txtColor: MyColors.greyText,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  height: 10,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.grey[100], MyColors.white])),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  // reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      child: Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: index % 2 == 0
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.5,
                            ),
                            decoration: index % 2 == 0
                                ? BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                    ),
                                  )
                                : BoxDecoration(
                                    color: MyColors.primary,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0),
                                    ),
                                  ),
                            child: NormalText(
                                text: messages[index],
                                fontSize: 14,
                                txtColor: index % 2 == 0
                                    ? MyColors.black
                                    : MyColors.white),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ]),
              Positioned(
                bottom: 0,
                child: Container(
                  color: MyColors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: width,
                        height: 10,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              MyColors.white,
                              Colors.grey[100],
                            ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: width,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: _message,
                                  cursorColor: MyColors.primary,
                                  maxLines: null,
                                  decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: "Enter Message"),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    messages.add(_message.text);
                                  });
                                },
                                child: Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.only(right: 20),
                                    decoration: BoxDecoration(
                                      color: MyColors.primary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    ),
                                    child: Icon(
                                      Icons.send,
                                      color: MyColors.white,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
