import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

import 'package:home_rent/utlis.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // homescreen5Wh (25:2214)
        padding: EdgeInsets.fromLTRB(20 * fem, 24 * fem, 0 * fem, 31 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfff9f9f9),
          borderRadius: BorderRadius.circular(20 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupvszd41F (PnP1Y6ryK2yuHKoHp7VSzd)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 20 * fem, 22 * fem),
              width: double.infinity,
              height: 47 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // locationMFF (63:205)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 215 * fem, 0 * fem),
                    width: 96 * fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // locationfmj (25:2226)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 7 * fem),
                          child: Text(
                            'Location',
                            style: SafeGoogleFont(
                              'Raleway',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.175 * ffem / fem,
                              color: Color(0xff828282),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupe98mPLM (PnP1iGEhw23Bfh86SVe98M)
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // jakarta8oj (25:2225)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 4 * fem, 1 * fem),
                                child: Text(
                                  'Jakarta',
                                  style: SafeGoogleFont(
                                    'Raleway',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.175 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // icarrowdownErm (25:2264)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                width: 24 * fem,
                                height: 24 * fem,
                                child: Image.asset(
                                  'images/icarrow-down.png',
                                  width: 24 * fem,
                                  height: 24 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // icnotificationwmB (25:2227)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    width: 24 * fem,
                    height: 24 * fem,
                    child: Image.asset(
                      'images/icnotification.png',
                      width: 24 * fem,
                      height: 24 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupcqmsdtu (PnP1sbJViQwe7vzdqSCqms)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 20 * fem, 18 * fem),
              width: double.infinity,
              height: 48 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // searchbarAP3 (25:2216)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        16.47 * fem, 12 * fem, 69 * fem, 12 * fem),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xfff6f6f6),
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // icsearchrmf (25:2218)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10.82 * fem, 0 * fem),
                          width: 24.71 * fem,
                          height: 24 * fem,
                          child: Image.asset(
                            'images/icsearch.png',
                            width: 24.71 * fem,
                            height: 24 * fem,
                          ),
                        ),
                        Container(
                          // searchaddressornearyouaSm (25:2217)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'Search address, or near you ',
                            style: SafeGoogleFont(
                              'Raleway',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.175 * ffem / fem,
                              color: Color(0xff848484),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // icfiltersgm (25:2221)
                    width: 48 * fem,
                    height: 48 * fem,
                    child: Image.asset(
                      'images/icfilter.png',
                      width: 48 * fem,
                      height: 48 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // categoryCDF (25:3292)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 27 * fem),
              width: 405 * fem,
              height: 41 * fem,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupppmtWjj (PnP3G3zRqhF5Gk8od3pPMT)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 2 * fem, 0 * fem, 0 * fem),
                      width: 69 * fem,
                      height: 39 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // shadowMEZ (25:2215)
                            left: 5 * fem,
                            top: 19 * fem,
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur(
                                sigmaX: 6 * fem,
                                sigmaY: 6 * fem,
                              ),
                              child: Align(
                                child: SizedBox(
                                  width: 57 * fem,
                                  height: 20 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10 * fem),
                                      gradient: LinearGradient(
                                        begin: Alignment(0, -1.962),
                                        end: Alignment(-0, 1.628),
                                        colors: <Color>[
                                          Color(0x3d9fd9fa),
                                          Color(0x3d098dd8)
                                        ],
                                        stops: <double>[0.14, 1],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // houseactiveZ5j (25:2233)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Container(
                              width: 69 * fem,
                              height: 34 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10 * fem),
                                gradient: LinearGradient(
                                  begin: Alignment(0, -1.962),
                                  end: Alignment(-0, 1.628),
                                  colors: <Color>[
                                    Color(0xff9fd9fa),
                                    Color(0xff098dd8)
                                  ],
                                  stops: <double>[0.14, 1],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x14363b64),
                                    offset: Offset(0 * fem, 8 * fem),
                                    blurRadius: 12 * fem,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'House',
                                  style: SafeGoogleFont(
                                    'Raleway',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.175 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12 * fem,
                    ),
                    Container(
                      // apartmentJhX (25:2239)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 2 * fem, 0 * fem, 5 * fem),
                      width: 92 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xfff6f6f6),
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Apartment',
                          style: SafeGoogleFont(
                            'Raleway',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.175 * ffem / fem,
                            color: Color(0xff848484),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12 * fem,
                    ),
                    Container(
                      // hotelMvh (25:2235)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 2 * fem, 0 * fem, 5 * fem),
                      width: 63 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xfff6f6f6),
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Hotel',
                          style: SafeGoogleFont(
                            'Raleway',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.175 * ffem / fem,
                            color: Color(0xff848484),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12 * fem,
                    ),
                    Container(
                      // villaRQm (25:2237)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 2 * fem, 0 * fem, 5 * fem),
                      width: 56 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xfff6f6f6),
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Villa',
                          style: SafeGoogleFont(
                            'Raleway',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.175 * ffem / fem,
                            color: Color(0xff848484),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12 * fem,
                    ),
                    Container(
                      // autogroupylxbh7P (PnP3Ldh8Sw5cuT8FPyYLXb)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 3 * fem),
                      width: 77 * fem,
                      height: 38 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // cottage29f (25:2355)
                            left: 0 * fem,
                            top: 2 * fem,
                            child: Container(
                              width: 77 * fem,
                              height: 34 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xfff6f6f6),
                                borderRadius: BorderRadius.circular(10 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Cottage',
                                  style: SafeGoogleFont(
                                    'Raleway',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.175 * ffem / fem,
                                    color: Color(0xff828282),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // shadowgzu (25:2357)
                            left: 7 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 20 * fem,
                                height: 38 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(1, -0),
                                      end: Alignment(-1, 0),
                                      colors: <Color>[
                                        Color(0xffffffff),
                                        Color(0x00ffffff)
                                      ],
                                      stops: <double>[0, 1],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // autogroupuw7kxhX (PnP26fm3GTXpGkQMmruW7K)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 20 * fem, 24 * fem),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // nearfromyou6Yq (25:2231)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 173 * fem, 0 * fem),
                      child: Text(
                        'Near from you',
                        style: SafeGoogleFont(
                          'Raleway',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.175 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // seemore1fo (25:2241)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 2 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'See more',
                        style: SafeGoogleFont(
                          'Raleway',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.175 * ffem / fem,
                          color: Color(0xff848484),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // autogroupzqivv25 (PnP2FR1U4e8Va6f7hzZQiV)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
              width: double.infinity,
              height: 284 * fem,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupbiz5qeq (PnP2PQn9JhC2XjQSLEBiz5)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 24 * fem, 0 * fem),
                      width: 222 * fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // shadowN8y (25:2992)
                            left: 20 * fem,
                            top: 230 * fem,
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur(
                                sigmaX: 10 * fem,
                                sigmaY: 10 * fem,
                              ),
                              child: Align(
                                child: SizedBox(
                                  width: 182 * fem,
                                  height: 54 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                      color: Color(0x19000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // dreamsvilehousef85 (25:2957)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  20 * fem, 20 * fem, 16 * fem, 15 * fem),
                              width: 222 * fem,
                              height: 272 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * fem),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'images/image.png',
                                  ),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 1),
                                  colors: <Color>[
                                    Color(0x000c0c0c),
                                    Color(0xcc000000)
                                  ],
                                  stops: <double>[0.376, 1],
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // icnearGNm (25:2476)
                                    margin: EdgeInsets.fromLTRB(
                                        113 * fem, 0 * fem, 0 * fem, 171 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        11 * fem, 5 * fem, 10 * fem, 4 * fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0x3d000000),
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // iclocationmaR (25:2480)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 7 * fem, 1 * fem),
                                          width: 10 * fem,
                                          height: 12 * fem,
                                          child: Image.asset(
                                            'images/iclocation-QHP.png',
                                            width: 10 * fem,
                                            height: 12 * fem,
                                          ),
                                        ),
                                        Text(
                                          // kmstM (25:2482)
                                          '1.8 km',
                                          style: SafeGoogleFont(
                                            'Raleway',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.175 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // dreamsvillehouseRQ5 (25:2248)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 45 * fem, 8 * fem),
                                    child: Text(
                                      'Dreamsville House',
                                      style: SafeGoogleFont(
                                        'Raleway',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.175 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // jlsultaniskandarmudaLX3 (25:2249)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 51 * fem, 0 * fem),
                                    child: Text(
                                      'Jl. Sultan Iskandar Muda',
                                      style: SafeGoogleFont(
                                        'Raleway',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.175 * ffem / fem,
                                        color: Color(0xffd6d6d6),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // ascothouseFP7 (25:2988)
                      padding: EdgeInsets.fromLTRB(
                          20 * fem, 20 * fem, 14 * fem, 15 * fem),
                      width: 222 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * fem),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'images/image-NQy.png',
                          ),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[Color(0x000c0c0c), Color(0xcc000000)],
                          stops: <double>[0.376, 1],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // icnearhku (25:2976)
                            margin: EdgeInsets.fromLTRB(
                                113 * fem, 0 * fem, 0 * fem, 171 * fem),
                            padding: EdgeInsets.fromLTRB(
                                11 * fem, 5 * fem, 10 * fem, 4 * fem),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0x3d000000),
                              borderRadius: BorderRadius.circular(20 * fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // iclocationChf (25:2977)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 7 * fem, 1 * fem),
                                  width: 10 * fem,
                                  height: 12 * fem,
                                  child: Image.asset(
                                    'images/iclocation.png',
                                    width: 10 * fem,
                                    height: 12 * fem,
                                  ),
                                ),
                                Text(
                                  // km7pd (25:2979)
                                  '3.0 km',
                                  style: SafeGoogleFont(
                                    'Raleway',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.175 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // ascothouseepZ (25:2974)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 93 * fem, 8 * fem),
                            child: Text(
                              'Ascot House',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.175 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            // jlcilandaktengahMys (25:2975)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 81 * fem, 0 * fem),
                            child: Text(
                              'Jl. Cilandak Tengah',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.175 * ffem / fem,
                                color: Color(0xffd6d6d6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // autogroupufmjGqw (PnP2qQ2qqs91eYLEMzUFMj)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 20 * fem, 24 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // bestforyouCUh (25:2867)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 190 * fem, 0 * fem),
                    child: Text(
                      'Best for you',
                      style: SafeGoogleFont(
                        'Raleway',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.175 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    // seemoreiT3 (25:2868)
                    'See more',
                    style: SafeGoogleFont(
                      'Raleway',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.175 * ffem / fem,
                      color: Color(0xff848484),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // orchadhouse417 (25:2993)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 50 * fem, 24 * fem),
              width: double.infinity,
              height: 70 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // imageP3P (25:2887)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 20 * fem, 0 * fem),
                    width: 74 * fem,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffefefef),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0a000000),
                          offset: Offset(0 * fem, 0 * fem),
                          blurRadius: 0.5 * fem,
                        ),
                        BoxShadow(
                          color: Color(0x0a000000),
                          offset: Offset(0 * fem, 2 * fem),
                          blurRadius: 3 * fem,
                        ),
                        BoxShadow(
                          color: Color(0x0f000000),
                          offset: Offset(0 * fem, 16 * fem),
                          blurRadius: 12 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      // autogrouptxtz3Nq (PnNuBsGskK6wC7iPTatxtZ)
                      child: SizedBox(
                        width: 74 * fem,
                        height: 70 * fem,
                        child: Image.asset(
                          'images/auto-group-txtz.png',
                          width: 74 * fem,
                          height: 70 * fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupin6uxkh (PnP3whX2v861hG6743iN6u)
                    width: 211 * fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup11vz77o (PnP4BcHXJkq1nCx6Dv11vZ)
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 4 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // orchadhouseEy7 (25:2870)
                                margin: EdgeInsets.fromLTRB(
                                    4 * fem, 0 * fem, 0 * fem, 8 * fem),
                                child: Text(
                                  'Orchad House',
                                  style: SafeGoogleFont(
                                    'Raleway',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.175 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // rp2500000000yearN3j (25:2871)
                                'Rp. 2.500.000.000 / Year',
                                style: SafeGoogleFont(
                                  'Raleway',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175 * ffem / fem,
                                  color: Color(0xff0a8ed9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupek29Ji5 (PnP42hNhwezyJ2ogShEK29)
                          width: double.infinity,
                          height: 24 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bedroomdkM (25:2872)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 19 * fem, 0 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // icbeda9o (25:2873)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                      width: 24 * fem,
                                      height: 24 * fem,
                                      child: Image.asset(
                                        'images/icbed.png',
                                        width: 24 * fem,
                                        height: 24 * fem,
                                      ),
                                    ),
                                    Container(
                                      // bedroomGoK (25:2876)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        '6 Bedroom',
                                        style: SafeGoogleFont(
                                          'Raleway',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.175 * ffem / fem,
                                          color: Color(0xff848484),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // bathroomzUR (25:2877)
                                padding: EdgeInsets.fromLTRB(
                                    4 * fem, 4 * fem, 0 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // icbathvcy (25:2879)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 12 * fem, 0.57 * fem),
                                      width: 16 * fem,
                                      height: 15.43 * fem,
                                      child: Image.asset(
                                        'images/icbath-twb.png',
                                        width: 16 * fem,
                                        height: 15.43 * fem,
                                      ),
                                    ),
                                    Container(
                                      // bathroom3Sh (25:2878)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        '4 Bathroom',
                                        style: SafeGoogleFont(
                                          'Raleway',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.175 * ffem / fem,
                                          color: Color(0xff848484),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // thehollieshouseMTP (25:2994)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 50 * fem, 0 * fem),
              width: double.infinity,
              height: 70 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // imagesgd (25:2909)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 20 * fem, 0 * fem),
                    width: 74 * fem,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffefefef),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0a000000),
                          offset: Offset(0 * fem, 0 * fem),
                          blurRadius: 0.5 * fem,
                        ),
                        BoxShadow(
                          color: Color(0x0a000000),
                          offset: Offset(0 * fem, 2 * fem),
                          blurRadius: 3 * fem,
                        ),
                        BoxShadow(
                          color: Color(0x0f000000),
                          offset: Offset(0 * fem, 16 * fem),
                          blurRadius: 12 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      // autogroupzrqxwwP (PnNu2sXs6kfD7Xd9kpZrqX)
                      child: SizedBox(
                        width: 74 * fem,
                        height: 70 * fem,
                        child: Image.asset(
                          'images/auto-group-zrqx.png',
                          width: 74 * fem,
                          height: 70 * fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupyjehfsP (PnP4egLkXtmscPAdFkYjEH)
                    width: 211 * fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouponimoih (PnP4sqdVNPyjMcXB7ioniM)
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 4 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // thehollieshouseYRP (25:2892)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 8 * fem),
                                child: Text(
                                  'The Hollies House',
                                  style: SafeGoogleFont(
                                    'Raleway',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.175 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // rp2000000000year3sw (25:2893)
                                'Rp. 2.000.000.000 / Year',
                                style: SafeGoogleFont(
                                  'Raleway',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175 * ffem / fem,
                                  color: Color(0xff0a8ed9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupwgzuzYH (PnP4jbNEGy59cjwNirWGzu)
                          width: double.infinity,
                          height: 24 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bedroomYJu (25:2894)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // icbedUiM (25:2895)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                      width: 24 * fem,
                                      height: 24 * fem,
                                      child: Image.asset(
                                        'images/icbed-DK7.png',
                                        width: 24 * fem,
                                        height: 24 * fem,
                                      ),
                                    ),
                                    Container(
                                      // bedroomzgh (25:2898)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        '5 Bedroom',
                                        style: SafeGoogleFont(
                                          'Raleway',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.175 * ffem / fem,
                                          color: Color(0xff848484),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // bathroomWuw (25:2899)
                                padding: EdgeInsets.fromLTRB(
                                    4 * fem, 4 * fem, 0 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // icbathemF (25:2901)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 12 * fem, 0.57 * fem),
                                      width: 16 * fem,
                                      height: 15.43 * fem,
                                      child: Image.asset(
                                        'images/icbath.png',
                                        width: 16 * fem,
                                        height: 15.43 * fem,
                                      ),
                                    ),
                                    Container(
                                      // bathroomyYd (25:2900)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        '2 Bathroom',
                                        style: SafeGoogleFont(
                                          'Raleway',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.175 * ffem / fem,
                                          color: Color(0xff848484),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
