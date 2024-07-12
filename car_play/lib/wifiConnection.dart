import 'package:car_play/connectType.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WifiConnection extends StatefulWidget {
  const WifiConnection({Key? key}) : super(key: key);
  @override
  _WifiConnectionState createState() => _WifiConnectionState();
}

class _WifiConnectionState extends State<WifiConnection> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: screenWidth * 0.15,
                  right: screenWidth * 0.05,
                  left: screenWidth * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: screenWidth * 0.15,
                      width: screenWidth * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.075),
                        color: Color(0xFF03A400),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) => ConnectType()),
                                  (route) => false,
                            );
                          },
                          icon: Icon(Icons.arrow_back_ios_new),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: screenWidth * 0.1),
                      child: Text(
                        "Connect Wifi",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.05,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.5,
                    decoration: BoxDecoration(
                        color: Color(0xFF03A400),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: MaterialButton(onPressed: () {

                    },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(image: AssetImage("assets/connectType/wifi_btn.png"),height: screenHeight * 0.04,width: screenWidth * 0.06,),
                          Text("Connect",style: TextStyle(color: Colors.white,fontSize:screenWidth * 0.07),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: screenHeight * 0.4, width: screenWidth * 0.7,color: Colors.black12,
                      child: Center(
                        child: Text("Native Ad",style:TextStyle(fontWeight: FontWeight.w600,fontSize: screenWidth * 0.05,color: Colors.black),),
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
