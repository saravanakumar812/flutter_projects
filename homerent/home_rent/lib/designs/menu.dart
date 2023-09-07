import 'package:flutter/material.dart';
import 'package:home_rent/utlis.dart';

class Scene extends StatefulWidget {
  const Scene({super.key});

  @override
  State<Scene> createState() => _SceneState();
}

class _SceneState extends State<Scene> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
          padding: EdgeInsets.fromLTRB(0 * fem, 130 * fem, 0 * fem, 130 * fem),
          width: double.infinity,
          //height: 812 * fem,
          decoration: BoxDecoration(
            color: Color(0xff0a8ed9),
            borderRadius: BorderRadius.circular(20 * fem),
          ),
          child: SizedBox(
            width: 192 * fem,
            height: double.infinity,
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(
                          51 * fem, 8 * fem, 55 * fem, 8 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ichomepYR (19:2)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 16 * fem, 0 * fem),
                            width: 24 * fem,
                            height: 24 * fem,
                            child: Image.asset(
                              'images/ichome.png',
                              width: 24 * fem,
                              height: 24 * fem,
                            ),
                          ),
                          Container(
                            // homeKk5 (19:5)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'Home',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.175 * ffem / fem,
                                color: Color(0xff0a8ed9),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupz7nz1cu (PnP5e9gzLXGu1FQkFBz7nZ)
                      padding: EdgeInsets.fromLTRB(
                          28 * fem, 32 * fem, 0 * fem, 0 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // profileKNh (19:32)
                            margin: EdgeInsets.fromLTRB(
                                23 * fem, 0 * fem, 54 * fem, 0 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // icprofileFXF (19:34)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 16 * fem, 0 * fem),
                                  width: 24 * fem,
                                  height: 24 * fem,
                                  child: Image.asset(
                                    'images/icprofile.png',
                                    width: 24 * fem,
                                    height: 24 * fem,
                                  ),
                                ),
                                Container(
                                  // profilexRf (19:33)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    'Profile',
                                    style: SafeGoogleFont(
                                      'Raleway',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.175 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 32 * fem,
                                ),
                                Expanded(
                                  child: Container(
                                    // nearbyepH (19:17)
                                    margin: EdgeInsets.fromLTRB(
                                        23 * fem, 0 * fem, 46 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        5 * fem, 2 * fem, 0 * fem, 3 * fem),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // iclocationZwF (19:19)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1.9 * fem, 21 * fem, 0 * fem),
                                          width: 14 * fem,
                                          height: 16.9 * fem,
                                          child: Image.asset(
                                            'images/iclocation-7mK.png',
                                            width: 14 * fem,
                                            height: 16.9 * fem,
                                          ),
                                        ),
                                        Text(
                                          // nearbygky (19:18)
                                          'Nearby',
                                          style: SafeGoogleFont(
                                            'Raleway',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.175 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 32 * fem,
                                ),
                                SizedBox(
                                  height: 32 * fem,
                                ),
                                Expanded(
                                  child: Container(
                                    // bookmarknJD (19:6)
                                    margin: EdgeInsets.fromLTRB(
                                        23 * fem, 0 * fem, 25 * fem, 0 * fem),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // icbookmarkv9X (19:8)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 16 * fem, 0 * fem),
                                          width: 24 * fem,
                                          height: 24 * fem,
                                          child: Image.asset(
                                            'images/icbookmark.png',
                                            width: 24 * fem,
                                            height: 24 * fem,
                                          ),
                                        ),
                                        Container(
                                          // bookmark2yF (19:7)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1 * fem, 0 * fem, 0 * fem),
                                          child: Text(
                                            'Bookmark',
                                            style: SafeGoogleFont(
                                              'Raleway',
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.175 * ffem / fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 32 * fem,
                                ),
                                Container(
                                  // notificationwaR (19:11)
                                  margin: EdgeInsets.fromLTRB(
                                      23 * fem, 0 * fem, 17 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // icnotificationGsb (19:13)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 16 * fem, 0 * fem),
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'images/icnotification-11s.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                      Container(
                                        // notificationatH (19:12)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                        child: Text(
                                          'Notification',
                                          style: SafeGoogleFont(
                                            'Raleway',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.175 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 32 * fem,
                                ),
                                Container(
                                  // messagefPw (19:21)
                                  margin: EdgeInsets.fromLTRB(
                                      23 * fem, 0 * fem, 34 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // icmessagezx1 (19:22)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 16 * fem, 0 * fem),
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'images/icmessage-L1o.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                      Container(
                                        // message7mj (19:26)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          'Message',
                                          style: SafeGoogleFont(
                                            'Raleway',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.175 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 32 * fem,
                                ),
                                SizedBox(
                                  height: 32 * fem,
                                ),
                                Container(
                                  // setting1cD (19:27)
                                  margin: EdgeInsets.fromLTRB(
                                      23 * fem, 0 * fem, 48 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // icsettingYMF (19:28)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 16 * fem, 0 * fem),
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'images/icsetting.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                      Container(
                                        // setting4aV (19:31)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          'Setting',
                                          style: SafeGoogleFont(
                                            'Raleway',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.175 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 32 * fem,
                                ),
                                Container(
                                  // helpxA5 (19:37)
                                  margin: EdgeInsets.fromLTRB(
                                      23 * fem, 0 * fem, 65 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // ichelpVQu (19:38)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 16 * fem, 0 * fem),
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'images/ichelp.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                      Container(
                                        // helpogV (19:41)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          'Help',
                                          style: SafeGoogleFont(
                                            'Raleway',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.175 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 32 * fem,
                                ),
                                Container(
                                  // logoutiHf (19:42)
                                  margin: EdgeInsets.fromLTRB(
                                      23 * fem, 0 * fem, 48 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // iclogoutSjT (19:43)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 16 * fem, 0 * fem),
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'images/iclogout.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                      Container(
                                        // logoutmFw (19:46)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                        child: Text(
                                          'Logout',
                                          style: SafeGoogleFont(
                                            'Raleway',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.175 * ffem / fem,
                                            color: Color(0xffffffff),
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
                  ]),
            ),
          )),
    );
  }
}
