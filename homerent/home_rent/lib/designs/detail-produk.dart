import 'package:flutter/material.dart';

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
        // detailprodukfQV (14:205)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfff9f9f9),
          borderRadius: BorderRadius.circular(20 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup7sev1DT (PnP6kHWnqrzXs9Gy6A7SEV)
              padding:
                  EdgeInsets.fromLTRB(20 * fem, 20 * fem, 19 * fem, 32 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // dreamsvillehouseLFj (25:2999)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 5 * fem),
                    width: 335 * fem,
                    height: 319 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // shadowFtV (25:2990)
                          left: 20 * fem,
                          top: 213 * fem,
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur(
                              sigmaX: 10 * fem,
                              sigmaY: 10 * fem,
                            ),
                            child: Align(
                              child: SizedBox(
                                width: 295 * fem,
                                height: 106 * fem,
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
                          // image9ys (14:206)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 335 * fem,
                              height: 304 * fem,
                              child: Image.asset(
                                'images/image-uY5.png',
                                width: 335 * fem,
                                height: 304 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // overlaysQ5 (14:209)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 335 * fem,
                              height: 304 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  gradient: LinearGradient(
                                    begin: Alignment(0, -1),
                                    end: Alignment(0, 1),
                                    colors: <Color>[
                                      Color(0x00000000),
                                      Color(0x99000000)
                                    ],
                                    stops: <double>[0.323, 0.76],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // icback8au (14:210)
                          left: 20 * fem,
                          top: 20 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 34 * fem,
                              height: 34 * fem,
                              child: Image.asset(
                                'images/icback.png',
                                width: 34 * fem,
                                height: 34 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // dreamsvillehouse3xm (14:215)
                          left: 20 * fem,
                          top: 191 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 179 * fem,
                              height: 24 * fem,
                              child: Text(
                                'Dreamsville House',
                                style: SafeGoogleFont(
                                  'Raleway',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.175 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // jlsultaniskandarmudajakartasel (14:216)
                          left: 20 * fem,
                          top: 222 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 223 * fem,
                              height: 15 * fem,
                              child: Text(
                                'Jl. Sultan Iskandar Muda, Jakarta selatan',
                                style: SafeGoogleFont(
                                  'Raleway',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175 * ffem / fem,
                                  color: Color(0xffd4d4d4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // icbookmarkzmX (14:217)
                          left: 281 * fem,
                          top: 20 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 34 * fem,
                              height: 34 * fem,
                              child: Image.asset(
                                'images/icbookmark-kBK.png',
                                width: 34 * fem,
                                height: 34 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // bathroomWUy (25:2998)
                          left: 155 * fem,
                          top: 256 * fem,
                          child: Container(
                            width: 105 * fem,
                            height: 28 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // icbathroomdpV (14:223)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                  width: 28 * fem,
                                  height: 28 * fem,
                                  child: Image.asset(
                                    'images/icbathroom.png',
                                    width: 28 * fem,
                                    height: 28 * fem,
                                  ),
                                ),
                                Container(
                                  // bathroomYwT (14:222)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    '4 Bathroom',
                                    style: SafeGoogleFont(
                                      'Raleway',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.175 * ffem / fem,
                                      color: Color(0xffd4d4d4),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // bedroomToX (25:2997)
                          left: 20 * fem,
                          top: 256 * fem,
                          child: Container(
                            width: 103 * fem,
                            height: 28 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // icbedroomnqo (14:234)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                  width: 28 * fem,
                                  height: 28 * fem,
                                  child: Image.asset(
                                    'images/icbedroom.png',
                                    width: 28 * fem,
                                    height: 28 * fem,
                                  ),
                                ),
                                Container(
                                  // bedroomK53 (14:233)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    '6 Bedroom',
                                    style: SafeGoogleFont(
                                      'Raleway',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.175 * ffem / fem,
                                      color: Color(0xffd4d4d4),
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
                    // descriptiondbX (63:206)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 24 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // descriptionNZ7 (14:290)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 20 * fem),
                          child: Text(
                            'Description',
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
                          // the3levelhousethathasamodernde (40:2)
                          constraints: BoxConstraints(
                            maxWidth: 336 * fem,
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff848484),
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... ',
                                ),
                                TextSpan(
                                  text: 'Show More',
                                  style: SafeGoogleFont(
                                    'Raleway',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff848484),
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
                    // contactY1f (14:288)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 5 * fem, 32 * fem),
                    width: double.infinity,
                    height: 40 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // images3w (14:276)
                          width: 40 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0x998198ac),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            // autogroupnbydoyB (PnNu8sMsXnxMqFgeDznbYD)
                            child: SizedBox(
                              width: 40 * fem,
                              height: 40 * fem,
                              child: Image.asset(
                                'images/auto-group-nbyd.png',
                                width: 40 * fem,
                                height: 40 * fem,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupgjn1w3o (PnP7EwMiTidMyATCfLGjN1)
                          padding: EdgeInsets.fromLTRB(
                              16 * fem, 2 * fem, 0 * fem, 0 * fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupwcn54eD (PnP78msKTm6r4cW4M4wCN5)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 119 * fem, 0 * fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // garryallenbPF (14:256)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                      child: Text(
                                        'Garry Allen',
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
                                      // ownerhhB (14:257)
                                      'Owner',
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
                                // icphoneDvR (14:258)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 16 * fem, 2 * fem),
                                width: 28 * fem,
                                height: 28 * fem,
                                child: Image.asset(
                                  'images/icphone.png',
                                  width: 28 * fem,
                                  height: 28 * fem,
                                ),
                              ),
                              Container(
                                // icmessageYC1 (14:263)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 2 * fem),
                                width: 28 * fem,
                                height: 28 * fem,
                                child: Image.asset(
                                  'images/icmessage.png',
                                  width: 28 * fem,
                                  height: 28 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // galleryT45 (14:239)
                    width: double.infinity,
                    height: 111 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // autogroupkxvfoNq (PnP7XGDr5fDAG5j9bykxVf)
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // galleryYrD (14:291)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 20 * fem),
                                child: Text(
                                  'Gallery',
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
                                // image132H (14:240)
                                width: 72 * fem,
                                height: 72 * fem,
                                child: Image.asset(
                                  'images/image-1.png',
                                  width: 72 * fem,
                                  height: 72 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16 * fem,
                        ),
                        Container(
                          // image2uKP (14:243)
                          width: 72 * fem,
                          height: 72 * fem,
                          child: Image.asset(
                            'images/image-2.png',
                            width: 72 * fem,
                            height: 72 * fem,
                          ),
                        ),
                        SizedBox(
                          width: 16 * fem,
                        ),
                        Container(
                          // image3ne5 (14:246)
                          width: 72 * fem,
                          height: 72 * fem,
                          child: Image.asset(
                            'images/image-3.png',
                            width: 72 * fem,
                            height: 72 * fem,
                          ),
                        ),
                        SizedBox(
                          width: 16 * fem,
                        ),
                        Container(
                          // image4overlay7RT (14:249)
                          width: 72 * fem,
                          height: 72 * fem,
                          decoration: BoxDecoration(
                            color: Color(0x4c000000),
                            borderRadius: BorderRadius.circular(10 * fem),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'images/mask-group.png',
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '+5',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.175 * ffem / fem,
                                color: Color(0xffffffff),
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
            Container(
              // mapZoF (14:268)
              width: double.infinity,
              height: 161 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // mapclipiRF (63:209)
                    left: 20 * fem,
                    top: 2 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 335 * fem,
                        height: 150 * fem,
                        child: Image.asset(
                          'images/map-clip.png',
                          width: 335 * fem,
                          height: 150 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // overlaypjB (14:281)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 375 * fem,
                        height: 161 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0, -1),
                              end: Alignment(-0, 1),
                              colors: <Color>[
                                Color(0x00ffffff),
                                Color(0xffffffff)
                              ],
                              stops: <double>[0.285, 0.62],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // shadowVaR (25:1717)
                    left: 250 * fem,
                    top: 111 * fem,
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX: 6 * fem,
                        sigmaY: 6 * fem,
                      ),
                      child: Align(
                        child: SizedBox(
                          width: 92 * fem,
                          height: 20 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10 * fem),
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
                    // btnrentKJZ (14:283)
                    left: 233 * fem,
                    top: 81 * fem,
                    child: Container(
                      width: 122 * fem,
                      height: 43 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10 * fem),
                        gradient: LinearGradient(
                          begin: Alignment(0, -1.962),
                          end: Alignment(-0, 1.628),
                          colors: <Color>[Color(0xff9fd9fa), Color(0xff098dd8)],
                          stops: <double>[0.14, 1],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Rent Now',
                          style: SafeGoogleFont(
                            'Raleway',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.175 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // priceMFF (14:285)
                    left: 20 * fem,
                    top: 82 * fem,
                    child: Container(
                      width: 185 * fem,
                      height: 41 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // priceU4y (14:287)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 7 * fem),
                            child: Text(
                              'Price',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.175 * ffem / fem,
                                color: Color(0xff848484),
                              ),
                            ),
                          ),
                          Text(
                            // rp2500000000yearath (14:286)
                            'Rp. 2.500.000.000 / Year',
                            style: SafeGoogleFont(
                              'Raleway',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.175 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
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
