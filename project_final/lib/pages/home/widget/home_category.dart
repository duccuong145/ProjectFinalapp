import 'package:flutter/material.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/providers/category_provider.dart';
import 'package:provider/provider.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({super.key});

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  late Future categoryrFuture;
  @override
  void didChangeDependencies() {
    categoryrFuture = Provider.of<CategoryProvider>(context).getCategoryr();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: categoryrFuture,
      initialData: [],
      builder: (context, snapshot) {
        var categoryData = [];
        if (snapshot.hasData) {
          categoryData = snapshot.data! as List;
        } else {
          return Container(
            child: Text(snapshot.error.toString()),
          );
        }
        return SizedBox(
          height: getHeight(context, height: 0.2),
          child: ListView.separated(
              padding: EdgeInsets.symmetric(
                horizontal: getHeight(context, height: 0.02),
                vertical: getWidth(context, width: 0.02),
              ),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: getWidth(context, width: 0.05),
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                      vertical: getHeight(context, height: 0.02)),
                  width: getWidth(context, width: 0.3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: NetworkImage(categoryData[index].image),
                          )),
                        ),
                      ),
                      Text(categoryData[index].name),
                    ],
                  ),
                );
              },
              itemCount: categoryData.length),
        );
      },
    );
  }
}
