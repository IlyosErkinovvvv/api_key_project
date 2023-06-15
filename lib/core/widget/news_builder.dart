import 'package:api_key_project/core/extensions/build_context.dart';
import 'package:api_key_project/data/models/apple/apple_model.dart';
import 'package:api_key_project/view/info_page.dart';
import 'package:flutter/material.dart';

class NewsBuilder extends StatelessWidget {
  final List<Articles> list;
  const NewsBuilder({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: context.height * 0.01),
          child: InkWell(
            onTap: () {
              MaterialPageRoute(
                builder: (context) => InfoPage(data: list[index]),
              );
            },
            child: SizedBox(
              width: context.width,
              height: context.height * 0.4,
              child: Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage(list[index].urlToImage.toString()),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(list[index].title.toString()),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
