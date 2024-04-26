import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingScreenView extends StatefulWidget {
  const OnboardingScreenView({super.key});

  @override
  State<OnboardingScreenView> createState() => _OnboardingScreenViewState();
}

class _OnboardingScreenViewState extends State<OnboardingScreenView> {
  @override
  int index=0;
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,

        ),
        onPressed: (){
          setState(() {
            if(index!=2){
              index=index+1;
            }
            else{
              index=0;
            }
          });
        },
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(100),
          side: BorderSide(
            color: Color(0xffd93c6d)
          ),

        ),
        backgroundColor: Color(0xffd93c6d),
        
        

      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                child: Text("Skip", style: TextStyle(color:Color(0xff202244) , fontWeight: FontWeight.bold, fontSize: 15 ),),
                onPressed: (){},
              ),
            ),
            SizedBox(
              height: 40,
            ),
            const Image(image: AssetImage("assets/images/biometric.png")),
            SizedBox(
              height: 40,
            ),
            Text(
              "Find Photos in a Flash:\nPowered by AI",
              style: TextStyle(color:Color(0xff202244), fontSize: 20, fontWeight: FontWeight.w600),
               textAlign: TextAlign.center,
            ),
            Text("Sort Photos by Face with Facial Recognition", style: TextStyle(color: Color(0xff545454)),),
            SizedBox(
              height: 20,
            ),
            Align(

              child: Container(
                width: 100,
                child:Row(
                  children: [
                    Container(
                      width: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue
                      ),
                      child: Text(""),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue
                      ),
                      child: Text(""),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue
                      ),
                      child: Text(""),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
