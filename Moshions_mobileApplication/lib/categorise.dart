import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Categorise extends StatefulWidget {
  @override
  _CategoriseState createState() => _CategoriseState();
}

class _CategoriseState extends State<Categorise> {

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorise'),
      ),
      body: SafeArea(
          top: false,
          left: false,
          right: false,
          child: Container(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 8, left: 6, right: 6, bottom: 8),
              children: List.generate(6, (index) {
                return Container(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 180,
                            width: double.infinity,
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: imgList[index],
                              placeholder: (context, url) => Center(
                                  child: CircularProgressIndicator()
                              ),
                              errorWidget: (context, url, error) => new Icon(Icons.error),
                            ),
                          ),
                          ListTile(
                              title: Text(
                                'Umwenda',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          )),
    );
  }
}
