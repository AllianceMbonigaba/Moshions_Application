import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeSlider extends StatefulWidget {
  @override
  _HomeSliderState createState() => _HomeSliderState();

}



class _HomeSliderState extends State<HomeSlider> {

  final List<String> imgList = [
    'https://moshions.rw/wp-content/uploads/elementor/thumbs/Screen-Shot-2020-02-11-at-17.09.26-olotd5ef9f4v5y4t66e9rrmv5rdjjbw3ybo58ostim.png',
    'https://moshions.rw/wp-content/uploads/elementor/thumbs/F14A9980-ol1dxajpxnaxxdbvrqeiuhbmtoynjahfn6obn7ldv2.jpg',
    'https://www.slanted.de/wp-content/uploads/2019/12/ds19_Slanted_Rwanda_Moshions12941.jpg',
    'https://moshions.rw/wp-content/uploads/2017/11/DSC6550.jpg',
    'https://www.newtimes.co.rw/sites/default/files/2_65.jpg',
    'https://moshions.rw/wp-content/uploads/2017/11/DSC6550.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          Center(
            child: CarouselSlider(
              autoPlay: true,
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              height: 350.0,
              viewportFraction: 1.0,
              items: imgList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: i,
                          placeholder: (context, url) => Center(
                              child: CircularProgressIndicator()
                          ),
                          errorWidget: (context, url, error) => new Icon(Icons.error),
                        )
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
