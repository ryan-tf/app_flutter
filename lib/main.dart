import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Color(0xbfff2f6f7)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xbfff2f6f7),
          title: 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hai, Gupi Kay",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24 
                ),
              ),
              Row(
                children: [
                  Image(image: AssetImage('assets/Notif.png')),
                  SizedBox(width: 16),
                  Image(image: AssetImage('assets/Avatar.png')),
                ],
              ),
            ],
          ),
        ),
        body: 
        SingleChildScrollView(
          child: 
          Column(
            children: [
              //Card Balance
              Container(
                margin: EdgeInsets.only(top: 28, right: 16, bottom: 36, left: 16),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Color(0xbfffcfcfc), borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8))),
                      padding: EdgeInsets.all(16),
                      child: 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Total Saldo
                            IntrinsicWidth(
                              child: 
                                Column(
                                  children: [
                                    SizedBox( width: double.infinity,
                                      child: Text(
                                        "Total Saldo",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xbff575c62)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      child: Text(
                                        "Rp5.000.000,00",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            Image(image: AssetImage("assets/lots.png")),
                          ],
                        )
                    ),
                    Container(
                      decoration: BoxDecoration(color: Color(0xbff350699), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IntrinsicWidth(
                            child: 
                              Column(
                                children: [
                                  SizedBox( width: double.infinity,
                                    child: Text(
                                      "Buying Power",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "Rp.1.345.000,00",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white
                                      ),
                                    ),
                                  ),
                                ],
                              )
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xbffC6EC29),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(4))
                              )
                            ),
                            child: Row(
                              children: [
                                Image(image: AssetImage("assets/plus.png")),
                                SizedBox(width: 8),
                                Text(
                                  "Deposit",
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () => print("Depo Berhasil"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //Channel trending
              Container(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 36),
                child: Column(
                  children: [
                    SizedBox( width: double.infinity,
                      child: 
                      Text(
                        "Channel Trending",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),
                    //Card Channel Trending
                    Container(
                      height: 202,
                      child: 
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CardChannelTrending('"assets/Avatar1"', 'Tanjiro Kamado', 'Legend | 136 Subscribers', '+102.8%', 'Rp300.000'),
                          SizedBox(width: 12,),
                          CardChannelTrending('"assets/Avatar2"', 'Nezuko Kamado', 'Legend | 102 Subscribers', '+89.4%', 'Rp350.000'),
                          SizedBox(width: 12,),
                          CardChannelTrending('"assets/Avatar4"', 'Zenitsu Agatsuma', 'Master | 89 Subscribers', '+77.74%', 'Rp277.000'),
                        ],
                      ),
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Text(
                          "Lihat semua",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xbff5d666f)
                          ),
                        ),
                        SizedBox(width: 6,),
                        Image(image: AssetImage("assets/arrowright.png"))
                      ],
                    ),
                  ],
                ),
              ),
              //Signal baru saja profit
              Container(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: 
                Column(
                  children: [
                    SizedBox( width: double.infinity,
                      child: 
                      Text(
                        "Signal baru saja profit",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(height: 16,),
                    //Card Baru Saja Profit
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Color(0xbfffcfcfc), borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: 
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: 
                                Row(
                                  children: [
                                    Image(image: AssetImage("assets/Avatar2.png")),
                                    SizedBox(width: 8,),
                                    IntrinsicWidth(
                                      child: 
                                      Column(
                                        children: [
                                          SizedBox(width: double.infinity,
                                          child:
                                            Text(
                                              "Nezuko Kamado",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 2),
                                          Text(
                                            "Legend | 102 subscribers",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xbff5d666f),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image(image: AssetImage("assets/arrowright2.png")),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Divider(
                            color: Color(0xbffc9cccf),
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IntrinsicWidth(
                              child: 
                                Column(
                                  children: [
                                    SizedBox( width: double.infinity,
                                      child: Text(
                                        "TKIM",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      child: Text(
                                        "Pabrik Kertas Tjiwi Kimia Tbk.",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IntrinsicWidth(
                              child: 
                                Column(
                                  children: [
                                    SizedBox( width: double.infinity,
                                      child: Text(
                                        "+2.97%",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xbff00b451)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      child: Text(
                                        "02 Mei 2023, 11:18 WIB",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xbff5d666f)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16,),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Color(0xbfffcfcfc), borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: 
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: 
                                Row(
                                  children: [
                                    Image(image: AssetImage("assets/Avatar3.png")),
                                    SizedBox(width: 8,),
                                    IntrinsicWidth(
                                      child: 
                                      Column(
                                        children: [
                                          SizedBox(width: double.infinity,
                                          child:
                                            Text(
                                              "Muichiro Tokito",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 2),
                                          Text(
                                            "Elite | 22 subscribers",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xbff5d666f),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image(image: AssetImage("assets/arrowright2.png")),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Divider(
                            color: Color(0xbffc9cccf),
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IntrinsicWidth(
                              child: 
                                Column(
                                  children: [
                                    SizedBox( width: double.infinity,
                                      child: Text(
                                        "WSKT",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      child: Text(
                                        "Waskita Karya (Persero) Tbk.",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IntrinsicWidth(
                              child: 
                                Column(
                                  children: [
                                    SizedBox( width: double.infinity,
                                      child: Text(
                                        "+3.12%",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xbff00b451)
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      child: Text(
                                        "02 Mei 2023, 10:56 WIB",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xbff5d666f)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget CardChannelTrending(String image, String channelName, String levelSubs, String percent, String price){
  return Container(
    decoration: BoxDecoration(color: Color(0xbfffcfcfc), borderRadius: BorderRadius.all(Radius.circular(8))),
    padding: EdgeInsets.all(16),
    width: 266,
    child: 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image(image: AssetImage(image)),
            SizedBox(width: 8,),
            IntrinsicWidth(
              child: 
              Column(
                children: [
                  SizedBox(width: double.infinity,
                  child:
                    Text(
                      channelName,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  Text(
                    levelSubs,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xbff5d666f),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/trendingup.png")),
            SizedBox(width: 8,),
            Text(
              percent,
              style: TextStyle(
                fontSize: 24,
                color: Color(0xbff00b451),
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: Size(234, 40),
                backgroundColor: Color(0xbffC6EC29),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4))
                )
              ),
              child: 
                Text(
                  "Subscribe for " + price,
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              onPressed: () => print("Subscribe Berhasil"),
            )
          ],
        ),
      ],
    ),
  );
}
