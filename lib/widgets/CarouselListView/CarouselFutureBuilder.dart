import 'package:evropebet/Model/json_model/SliderModel.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'CarouselListView.dart';
import 'model/CarouselItemModel.dart';

class CarouselFutureBuilder extends StatelessWidget {
  final Future<List<SliderBanners>> sliders;
  CarouselFutureBuilder({this.sliders});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: sliders,
      builder: (BuildContext context, AsyncSnapshot<List<SliderBanners>> snapshot) {
        if (snapshot.hasData) {
          var data = snapshot.data;
          List<CarouselItemModel> sliders =
              data.map((SliderBanners e) {
            return CarouselItemModel(
                image: e.translations[0].image.image,
                title: e.translations[0].description);
          }).toList();

          return CarouselListView(
            isLoading: false,
            carouselItems: sliders,
          );
        }
        return CarouselListView(
          carouselItems: [
            CarouselItemModel(image: ''),
            CarouselItemModel(image: ''),
          ],
          isLoading: true,
        );
      },
    );
  }
}
