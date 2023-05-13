import 'dart:math';

import 'package:animal_biography/heplers/database%20helper.dart';
import 'package:animal_biography/heplers/images_api_helper.dart';
import 'package:animal_biography/model/animal_model_class_page.dart';
import 'package:animal_biography/widgets/next%20page%20icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../global.dart';
import '../widgets/appbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int index = 0;
  Random random = Random();

  @override
  void initState() {
    super.initState();
    Future<List<DBData>> details = DBHelper.dbHelper
        .fetchAllRecord(tableName: "Splash", data: Global.detailsOfData);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextStyle titleStyle = GoogleFonts.poppins(
      fontSize: 45,
      color: Colors.white.withOpacity(0.8),
      fontWeight: FontWeight.w600,
    );
    TextStyle titleStyle2 = GoogleFonts.poppins(
      fontSize: 30,
      color: Colors.white.withOpacity(0.8),
      fontWeight: FontWeight.w600,
    );

    TextStyle textStyle = GoogleFonts.poppins(
      fontSize: 20,
      color: Colors.white.withOpacity(0.8),
      fontWeight: FontWeight.w600,
    );
    return Scaffold(
      body: SafeArea(
          child: IndexedStack(
        index: index,
        children: [
          //-----------------------1 sp
          /* Stack(
            children: [
              FutureBuilder(
                future: ImageApi.imageApi.getImage(search: "wild animal"),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Image.memory(
                      snapshot.data!,
                      width: width,
                      height: height,
                      color: const Color(0xffC19E82),
                      colorBlendMode: BlendMode.modulate,
                      fit: BoxFit.cover,
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text("${snapshot.error}"),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.brown,
                      ),
                    );
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    App_Bar(),
                    const Spacer(),
                    Text(
                      "Ready to\nWatch ?",
                      style: titleStyle,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Aplanet is a global leader in real life entertainment, serving a passionate audience that inspires, informs and entertains.",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Start Enjoying",
                      style: textStyle,
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: NextPageIconButton(),
                ),
              )
            ],
          ),*/

          Stack(
            children: [
              FutureBuilder(
                future: DBHelper.dbHelper.fetchAllRecord(
                    tableName: "ManEater", data: Global.detailsOfData),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<DBData>? res = snapshot.data;
                    int? randomIndex = random.nextInt(res!.length);
                    DBData randomImage = res[randomIndex];

                    return Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                          color: const Color(0xffC19E82),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              opacity: 0.4,
                              image: MemoryImage(
                                randomImage.image,
                              ))),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text("${snapshot.error}"),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.brown,
                      ),
                    );
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    App_Bar(),
                    const Spacer(),
                    Text(
                      "Ready to\nWatch ?",
                      style: titleStyle,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Aplanet is a global leader in real life entertainment, serving a passionate audience that inspires, informs and entertains.",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Start Enjoying",
                      style: textStyle,
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: NextPageIconButton(),
                ),
              )
            ],
          ),
          //-----------------------2 sp
          Stack(
            children: [
              Container(
                color: const Color(0xffC19E82),
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    App_Bar(),
                    const SizedBox(height: 20),
                    Text(
                      "Choose a plan",
                      style: titleStyle2,
                    ),
                    const SizedBox(height: 15),
                    (index == 1)
                        ? Expanded(
                            child: FutureBuilder(
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                List<DBData>? res = snapshot.data;
                                return ListView.builder(
                                  itemBuilder: (context, i) {
                                    return Container(
                                      margin: EdgeInsets.all(10),
                                      height: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        image: DecorationImage(
                                          image: MemoryImage(res[i].image),
                                          fit: BoxFit.cover,
                                          colorFilter: const ColorFilter.mode(
                                              Color(0xffC19E82),
                                              BlendMode.modulate),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          const SizedBox(width: 15),
                                          Text(
                                            "${res[i].time}\nSubscription",
                                            style: GoogleFonts.poppins(
                                              fontSize: 24,
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const Spacer(),
                                          SizedBox(
                                            width: width / 3,
                                            child: Text(
                                              "\$ ${res[i].price}",
                                              style: GoogleFonts.poppins(
                                                fontSize: 33,
                                                color: Colors.white
                                                    .withOpacity(0.8),
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  itemCount: res!.length,
                                );
                              } else if (snapshot.hasError) {
                                return Center(child: Text("${snapshot.error}"));
                              } else {
                                return const Center(
                                  child: CircularProgressIndicator(
                                      color: Colors.brown),
                                );
                              }
                            },
                            future: DBHelper.dbHelper.fetchAllRecord(
                                tableName: "splash",
                                data: Global.detailsOfData),
                          ))
                        : Container(),
                    const SizedBox(height: 20),
                    Text(
                      "Last Step to enjoy",
                      style: textStyle,
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("/home_page");
                  },
                  child: NextPageIconButton(),
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
