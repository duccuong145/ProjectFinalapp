import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_final/config/widget/bottombar_config.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/pages/category/category_popular.dart';
import 'package:project_final/providers/category_provider.dart';
import 'package:project_final/routes/roures.dart';
import 'package:provider/provider.dart';

class CategoryHome extends StatefulWidget {
  const CategoryHome({super.key});

  @override
  State<CategoryHome> createState() => _CategoryHomeState();
}

class _CategoryHomeState extends State<CategoryHome> {
  late Future categoryrFuture;
  @override
  void didChangeDependencies() {
    categoryrFuture = Provider.of<CategoryProvider>(context).getSlider();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Good Morning'),
              Row(
                children: [
                  Text(
                    'Hello Cường',
                    style: largeTextStyle(context),
                  ),
                  const Icon(
                    Icons.facebook_outlined,
                    size: 30,
                    color: Colors.blue,
                  ),
                ],
              )
            ],
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 40,
                color: Colors.red,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: FutureBuilder(
            future: categoryrFuture,
            initialData: const [],
            builder: (context, snapshot) {
              final sliderData = snapshot.data! as List;
              return snapshot.hasData
                  ? Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getHeight(context),
                        vertical: getWidth(context),
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onDoubleTap: () {
                              Navigator.pushNamed(context, Routes.productPage);
                            },
                            child: const TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Tìm kiếm',
                                border: OutlineInputBorder(),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 8.0),
                              ),
                            ),
                          ),
                          spaceHeight(context),
                          CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                            ),
                            items: sliderData.map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.symmetric(
                                        horizontal:
                                            getHeight(context, height: 0.01)),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(i.image))),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                          spaceHeight(context),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Categories',
                                style: mediumTextStyle(context),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.productCategoryPage);
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                          spaceHeight(context),
                          SizedBox(
                            height: getHeight(context, height: 0.16),
                            child: ListView.separated(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: getWidth(context, width: 0.08),
                                );
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  width: getWidth(context, width: 0.32),
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.primaries[index],
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/ic_Fruit.png'),
                                          fit: BoxFit.scaleDown)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Fruits',
                                          style: mediumTextStyle(context,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          '45 Items',
                                          style: smallTextStyle(context,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          spaceHeight(context),
                          const CategoryPopular(),
                        ],
                      ),
                    )
                  : const Text('nodata');
            },
          ),
        ),
      ),
    );
  }
}
