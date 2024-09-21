

import 'package:flutter/material.dart';

class InterviewPage extends StatefulWidget {
  const InterviewPage({super.key});

  @override
  State<InterviewPage> createState() => _InterviewPageState();
}

class _InterviewPageState extends State<InterviewPage> {
  int index = 0;
  bool isEndJoke = false;
  List<JokeModel> list = [
    JokeModel(
        isFunny: false,
        content: 'A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on."'

            ' The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now."'

            ' The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."'
    ),
    JokeModel(
        isFunny: false,
        content: 'Teacher: "Kids,what does the chicken give you?" Student: "Meat!" Teacher: "Very good! Now what does the pig give you?" Student: "Bacon!" Teacher: "Great! And what does the fat cow give you?" Student: "Homework!"'
    ),
    JokeModel(
        isFunny: false,
        content: 'The teacher asked Jimmy, "Why is your cat at school today Jimmy?" Jimmy replied crying, "Because I heard my daddy tell my mommy, "I am going to eat that pussy once Jimmy leaves for school today!""'
    ),
    JokeModel(
        isFunny: false,
        content: "A housewife, an accountant and a lawyer were asked \"How much is 2+2?\" The housewife replies: \"Four!\". The accountant says: \"I think it's either 3 or 4. Let me run those figures through my spreadsheet one more time.\" The lawyer pulls the drapes, dims the lights and asks in a hushed voice, \"How much do you want it to be?\""
    ),
  ];
  String contentEndJoke = "That's all the jokes for today! Come back another day!";

  void isFunny(int i, bool isFunny) {
    if(i < list.length-1){
      list[i].isFunny = isFunny;
      index++;
    } else{
      isEndJoke = true;
    }
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
          children: [
            Container(
              width: screenSize.width,
              height: 120,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Image.asset("assets/images/logo_test.png"),
                    height: 55,
                    width: 55,
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text("Handicrafted by",style: TextStyle(
                                color: Colors.black26,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Sans-serif"
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 6,bottom: 20),
                            child: Text("Jim HLS",style: TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Sans-serif"
                            ),),
                          ),
                        ],
                      ),
                      Container(
                        child: Image.asset("assets/images/avatar_test.png"),
                        height: 55,
                        width: 55,
                        margin: EdgeInsets.fromLTRB(6, 14, 12, 12),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: screenSize.width,
              height: 160,
              color: const Color(0xFF4CAF50),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text("A joke a day keeps the doctor away",style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontSize: 20,
                        fontFamily: "Sans-serif"
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text("If you joke wrong way, your teeth have to pay. (Serious)",style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontSize: 14,
                        fontFamily: "Sans-serif"
                    ),),
                  ),
                ],
              ),
            ),
            Expanded(child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50,left: 30,right: 30),
                    child: Text(isEndJoke? contentEndJoke : list[index].content,
                      style: const TextStyle(
                        color: Color(0XFF333333),
                        fontSize: 18,
                        fontFamily: "Sans-serif",
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 60),
                    child: !isEndJoke ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            isFunny(index,true);
                          },
                          child: Container(
                            child:   Text("This is Funny!",style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Sans-serif"
                            ),),
                            color: Color(0XFF1976D2),
                            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            isFunny(index,false);
                          },
                          child: Container(
                            child:  Text("This is not Funny.",style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Sans-serif"
                            ),),
                            color: const Color(0XFF4CAF50),
                            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                          ),
                        )
                      ],
                    ) : SizedBox(),
                  ),
                ],
              ),
            )),
            Container(width: screenSize.width,
              color: Colors.black26,
              height: 1,),
            Container(
              width: screenSize.width,
              height: 160,
              color: const Color(0xFFFFFF),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                    child: Text("This appis created as part of HIsolutions program. The materials contained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the information contained on this site.",
                      style: TextStyle(
                        color: Color(0XFF333333),
                        fontSize: 13,
                        fontFamily: "Sans-serif",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("Copyright 2021 HLS",style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Sans-serif"
                    ),),
                  ),
                ],
              ),
            ),
          ],
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class JokeModel {
  final String content;
  bool isFunny;
  JokeModel({
    this.content = '',
    this.isFunny = false,
  });
}