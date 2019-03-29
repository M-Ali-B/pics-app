import 'package:flutter/material.dart';
import '../models/image_modal.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);
  
  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }


  Widget buildImage(ImageModel images){
    return new Container(
          decoration: BoxDecoration(
            border: Border.all(color:Colors.grey)
          ),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom:8.0),
                child:Image.network(images.url),
                ),
              
              Text(images.title)
            ],
            ),

        );
  }



}
