import 'package:astropocket/backend/global_variables.dart';
import 'package:astropocket/backend/url_launcher.dart';
import 'package:astropocket/style/custom_icons/youtube_icons.dart';
import 'package:astropocket/style/specific_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class VideoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    youtubeThumbnail = "https://img.youtube.com/vi/" +
        apodObject.hdurl
            .replaceAll("https://www.youtube.com/embed/", "")
            .replaceAll("?rel=0", "") +
        "/0.jpg";

    return Column(
      children: [
        // VIDEO THUMBNAIL AND URL LAUNCHER
        GestureDetector(
          onTap: () {
            launchURL(apodObject.hdurl);
          },
          child: Hero(
            tag: 'apodHero',
            child: Stack(
              children: [
                Container(
                  height: getHeight(context) / 4,
                  width: MediaQuery.of(context).size.width,

                  //Use Card for the elevation
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(getWidth(context) / 36)),
                    child: CachedNetworkImage(
                      imageUrl: (youtubeThumbnail),
                      placeholder: (context, url) {
                        return SkeletonAnimation(
                            shimmerColor: SpecificColors(context).shimmerColor,
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 200));
                      },
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Center(
                      child: Icon(
                    Youtube.youtube,
                    size: 46,
                    color: SpecificColors(context).shimmerColor,
                  )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
