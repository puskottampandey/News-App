import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/models/news_headline_model.dart';
import 'package:newsapp/view_model/news_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    NewsViewModel newsViewModel = NewsViewModel();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "images/category_icon.png",
            height: 30,
            width: 30,
          ),
        ),
        title: Center(
          child: Text(
            "News",
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
              height: height * 0.55,
              width: width,
              child: FutureBuilder<ModelforHeadLine>(
                  future: newsViewModel.fetchChannelHedlines(),
                  builder: (BuildContext context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: SpinKitCircle(
                          size: 40,
                          color: Colors.grey.shade700,
                        ),
                      );
                    } else {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.articles!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Stack(
                              children: [
                                Container(
                                  child: CachedNetworkImage(
                                    imageUrl: snapshot
                                        .data!.articles![index].urlToImage
                                        .toString(),
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    }
                  })),
        ],
      ),
    );
  }
}
