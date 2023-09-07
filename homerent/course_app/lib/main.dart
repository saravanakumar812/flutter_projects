import 'package:course_app/App_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Homepage(),
        ));
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("All Inboxes",
                            style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w800,
                                fontSize: 25,
                                height: 1.2)),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Icon(
                            CupertinoIcons.chevron_down,
                            size: 20,
                            color: Colors.grey[500],
                          ),
                        )
                      ],
                    ),
                    Text(
                      " Total 2500 messages, 3 unRead",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ],
                ),
                CircleAvatar(
                  maxRadius: 26,
                  backgroundColor: Colors.white,
                  foregroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3X3FfoCDFSlZwdThvLXHENwYHPFva_rP40minpw0&s"),
                )
              ],
            ),
          ),
          Container(
            child: SizedBox(
              height: 98,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (Context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                          left: index == 10 ? 24 : 1,
                          right: index == 10 - 1 ? 24 : 8),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                maxRadius: 36,
                                backgroundColor: Colors.white,
                                foregroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzX1hgfyzyzsRPx94B_-lhGFtoJdLg1zeO4IancOY&s"),
                              ),
                              Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    width: 25,
                                    height: 20,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          20,
                                        ),
                                        color: Colors.blue),
                                    child: IntrinsicWidth(
                                      child: Center(
                                          child: Text(
                                        "12",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      )),
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            child: Text(
                              "Google",
                              style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                  height: 1.3,
                                  color: Colors.grey[300]),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
          Container(
            height: 48,
            color: Color(0xffF3F4F8),
          ),
          Container(
            height: 30,
            transform: Matrix4.translationValues(0, -24, 0),
            padding: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
                color: Color(0xffffffff)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            transform: Matrix4.translationValues(0, -36, 0),
            height: 30,
            child: Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.topLeft,
                  child: DefaultTabController(
                    length: 3,
                    child: TabBar(
                        indicatorWeight: 6,
                        labelColor: Colors.purple,
                        labelStyle: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            height: 1.3,
                            fontSize: 15),
                        indicatorPadding: EdgeInsets.only(top: 12),
                        indicatorSize: TabBarIndicatorSize.label,
                        unselectedLabelColor: Colors.black,
                        splashFactory: NoSplash.splashFactory,
                        overlayColor: MaterialStateProperty.resolveWith(
                            (Set<MaterialState> states) {
                          return states.contains(MaterialState.focused)
                              ? null
                              : Colors.transparent;
                        }),
                        labelPadding: EdgeInsets.only(right: 24),
                        isScrollable: true,
                        tabs: [
                          Tab(
                            text: "Profile",
                          ),
                          Tab(
                            text: "Social",
                          ),
                          Tab(
                            text: "Forums",
                          )
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 19.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey[500],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Edit",
                      style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          height: 1.3,
                          fontSize: 15),
                    )
                  ],
                ),
              )
            ]),
          ),
          Container(
            padding: const EdgeInsets.only(top: 16),
            transform: Matrix4.translationValues(0, -36, 0),
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              itemCount: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  height: 116,
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(
                    bottom: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: kBackgroundColor,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: kPrimaryColor,
                        foregroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSysgFEPZeMkRB_Qc1B5BaMKYgqznSlIStZDA&usqp=CAU',
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sara',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kJakartaBodyMedium.copyWith(
                                  color: kParagraphColor, fontSize: 15),
                            ),
                            Text(
                              'Congratulations!',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kJakartaHeading4.copyWith(
                                  color: kDarkColor, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'You just win the Email client challenge 2022.',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: kJakartaBodyMedium.copyWith(
                                  color: kParagraphColor, fontSize: 1 ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SizedBox( 
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '57 m',
                              style: kJakartaBodyBold.copyWith(
                                  color: kDark40Color, fontSize: 15),
                            ),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: const BoxDecoration(
                                color: kSecondaryColor,
                                shape: BoxShape.circle,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
