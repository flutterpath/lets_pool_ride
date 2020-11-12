import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/text/text16SemiBold.dart';

class ChatDialog extends StatefulWidget {
  @override
  _ChatDialogState createState() => _ChatDialogState();
}

class _ChatDialogState extends State<ChatDialog> {
  final messages = [
    "hwd Modi",
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'This is a short message.',
    'This is a relatively longer line of text.',
    'Hi!'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            "assets/avatar/avatar3.png",
                          )),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(width: 2, color: MyColors.white),
                              color: Colors.green),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text16SemiBold(
                            text: "Bernard",
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              NormalText(
                                text: "Active Now",
                                fontSize: 12,
                                txtColor: MyColors.greyText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                                      child: Image.asset(
                      "assets/icons/close.png",
                      height: 30,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: MyColors.divider,
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              reverse: true,
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
            Container(
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
            Align(
              alignment: Alignment.bottomCenter,
                            child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 6,
                      child: TextFormField(
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
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                        color: MyColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Image.asset("assets/icons/send.png", height: 10,),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}
