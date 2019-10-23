import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter_svg/svg.dart';

  class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  TextStyle style2 = TextStyle(fontFamily: 'Cocogoose', fontSize: 20.0);
  TextStyle style = TextStyle(fontFamily: 'TitilliumWeb', fontSize: 20.0);
  TextStyle style3 = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);
    return Stack(
      children: <Widget>[
        SvgPicture.asset(
          'assets/vector-5.svg',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                icon: Icon(FeatherIcons.chevronLeft,
                    color: Colors.white, size: 16)),
            elevation: 10,
            backgroundColor: Colors.transparent,
            title: Text('Abous Us',
                style: style3.copyWith(
                  color: Color(0xffffffff),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                )),
          ),
          body: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/grunge.png'),
                      radius: 100,
                      backgroundColor: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 80),
                      child: Image.asset('assets/vector-7.png', height: 80),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 90, right: 20),
                      child: Image.asset('assets/vector-7.png', height: 80),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70, top: 60),
                      child: Image.asset('assets/vector-7.png', height: 80),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                margin: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Text('About Us',
                        style: style2.copyWith(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text(
                        'Dreamjob adalah tempat untuk mewujudkan mimpi kalian semua dimulai dari bekerja. Pekerjaan impian anda bisa saja ada disini. Bisa juga kerjaan biasa yang akan membawa kalian melangkah lebih jauh untuk menggapai mimpi.',
                        textAlign: TextAlign.center,
                        style:
                            style.copyWith(fontSize: 12, color: Colors.white)),
                    Text(
                        'Logo astronot melambangkan cita-cita yang terucapkan oleh  mayoritas individu semasa kecil. Tidak ada jalan pintas untuk menjadi astronot selain belajar dan kerja keras. Dua simbol bintang dengan ukuran kecil dan besar di logo melambangkan simbol pencapaian dan reward yang melalui progress dari kecil menjadi besar.',
                        textAlign: TextAlign.center,
                        style:
                            style.copyWith(fontSize: 12, color: Colors.white)),
                    Column(
                      children: [
                        Text('So, Dreamers,',
                            style: style.copyWith(
                                fontSize: 12, color: Colors.white)),
                        Text('"Never stop working and never stop dreaming"',
                            style: style.copyWith(
                                fontSize: 12, color: Colors.white)),
                        SizedBox(
                          height: 15,
                        ),
                        Text('In DREAMJOB, We Make It Happen!',
                            style: style.copyWith(
                                fontSize: 12, color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
