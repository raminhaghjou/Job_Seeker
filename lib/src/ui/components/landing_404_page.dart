import 'package:flutter/material.dart';

class LandingErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);
    return new Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment(-1, 0),
              image: AssetImage('assets/vector-3.png'),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Stack(
              alignment: Alignment(6, 4),
              children: <Widget>[
                Image.asset('assets/ellipse_1.png', width: 270),
                Container(
                  height: 275,
                  width: 275,
                  child: Stack(
                    alignment: Alignment(4, 4.2),
                    children: [
                      Image.asset('assets/ellipse_2.png', width: 270),
                      Container(
                        height: 140,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        margin: EdgeInsets.only(bottom: 90, left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('404',
                                style: style.copyWith(
                                    fontSize: 70, color: Colors.white)),
                            Text('Sorry! The Page Not Found :(',
                                style: style.copyWith(
                                    fontSize: 15, color: Colors.white)),
                            Text(
                              'The Link You Folowed Probably Broken, or the page has been removed.',
                              textAlign: TextAlign.center,
                              style: style.copyWith(
                                  fontSize: 11.5, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                width: 280,
                height: 300,
                child: Stack(
                  alignment: Alignment(1.8, -0.2),
                  children: <Widget>[
                    Container(
                        width: 125,
                        height: 60,
                        padding: EdgeInsets.only(top: 15),
                        child: Material(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff4e4f4f),
                          child: MaterialButton(
                              padding:
                                  EdgeInsets.only(top: 13, left: 5, right: 5),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/icon1.png',
                                    width: 22,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('info@online.com',
                                          style: style.copyWith(
                                              fontSize: 9,
                                              color: Colors.white)),
                                      Text('online support',
                                          style: style.copyWith(
                                              fontSize: 6,
                                              color: Color(0xffffa500))),
                                    ],
                                  ),
                                ],
                              )),
                        ))
                  ],
                )),
            Container(
                width: 280,
                height: 300,
                child: Stack(alignment: Alignment(2.2, 0.2), children: <Widget>[
                  Container(
                      width: 125,
                      height: 60,
                      padding: EdgeInsets.only(top: 15),
                      child: Material(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff4e4f4f),
                        child: MaterialButton(
                            padding:
                                EdgeInsets.only(top: 13, left: 5, right: 5),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  'assets/icon2.png',
                                  width: 22,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('62 822 1234 567',
                                        style: style.copyWith(
                                            fontSize: 9, color: Colors.white)),
                                    Text('Mon-Fri 9am-8pm',
                                        style: style.copyWith(
                                            fontSize: 6,
                                            color: Color(0xff90ee90))),
                                  ],
                                ),
                              ],
                            )),
                      ))
                ]))
          ],
        ),
      ),
    );
  }
}
