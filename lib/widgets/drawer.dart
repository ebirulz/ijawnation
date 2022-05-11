import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wordpress_app/blocs/settings_bloc.dart';
import 'package:wordpress_app/config/config.dart';
import 'package:wordpress_app/config/wp_config.dart';
import 'package:wordpress_app/pages/category_based_articles.dart';
import 'package:wordpress_app/services/app_service.dart';
import 'package:wordpress_app/utils/next_screen.dart';
import '../blocs/category_bloc.dart';
import '../models/category.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final d = context.watch<CategoryBloc>().categoryData;
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 3),
                    child: Image(
                      //height: 40,
                      width: 180,
                      fit: BoxFit.contain,
                      image: AssetImage(Config.drawerIcon)),
                  ),
                  
                ],
              )
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(top: 10, bottom: 30),
                itemCount: d.length,
                itemBuilder: (BuildContext context, int index) {

                  final String _thumbnail = WpConfig.categoryThumbnails.keys.contains(d[index].id)
                    ? WpConfig.categoryThumbnails[d[index].id]
                    : WpConfig.randomCategoryThumbnail;


                  //subcategories removed from the category list
                  if(d[index].parent != 0){
                    return Container();
                  }

                  return ExpansionTile(
                      tilePadding: EdgeInsets.only(left: 80, right: 15),
                      /*leading: CircleAvatar(
                        radius: 15,
                        backgroundImage: CachedNetworkImageProvider(_thumbnail),
                      ),*/
                      title: InkWell(
                        child: Text(d[index].name!.toUpperCase(), style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary
                        ),),
                        onTap: () {
                          Navigator.pop(context);
                          nextScreen(
                              context,
                              CategoryBasedArticles(
                                  categoryName: d[index].name,
                                  categoryId: d[index].id));
                        },
                      ),
                      initiallyExpanded: false,
                      childrenPadding: EdgeInsets.only(left: 20, right: 15),
                      children: <Widget>[
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: d.length,
                          padding: EdgeInsets.all(0),
                          itemBuilder: (BuildContext context1, int index1) {
                            Category subCategory = d[index1];
                            if (subCategory.parent == d[index].id) {
                              return ListTile(
                                title: Text(subCategory.name!),
                                horizontalTitleGap: 0,
                                leading: Icon(Feather.chevron_right),
                                onTap: () {
                                  Navigator.pop(context);
                                  nextScreen(
                                      context,
                                      CategoryBasedArticles(
                                          categoryName: subCategory.name,
                                          categoryId: subCategory.id));
                                },
                              );
                            }

                            return Container();
                          },
                        ),
                      ]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
