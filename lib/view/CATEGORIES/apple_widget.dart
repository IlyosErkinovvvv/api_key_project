import 'package:api_key_project/core/constants/constant_urls.dart';
import 'package:api_key_project/core/widget/news_builder.dart';
import 'package:api_key_project/data/models/apple/apple_model.dart';
import 'package:api_key_project/data/service/apple/apple_service.dart';
import 'package:flutter/material.dart';

class AppleWidget extends StatefulWidget {
  const AppleWidget({super.key});

  @override
  State<AppleWidget> createState() => _AppleWidgetState();
}

class _AppleWidgetState extends State<AppleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: AppleService().getApple(url: ConstantUrls.appleUrl),
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            AppleModel data = snapshot.data as AppleModel;
            return NewsBuilder(list: data.articles!);
          }
        },
      ),
    );
  }
}
