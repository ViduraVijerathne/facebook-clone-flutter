import 'package:facebook/components/add_new_post_component.dart';
import 'package:facebook/components/post_comp.dart';
import 'package:facebook/components/status_View_comp.dart';
import 'package:facebook/controller/post_controller.dart';
import 'package:facebook/controller/status_controller.dart';
import 'package:facebook/modals/post_modals.dart';
import 'package:flutter/material.dart';

class Tab_Home_Screen extends StatefulWidget {
  const Tab_Home_Screen({Key? key}) : super(key: key);

  @override
  State<Tab_Home_Screen> createState() => _Tab_Home_ScreenState();
}

class _Tab_Home_ScreenState extends State<Tab_Home_Screen> {
  PostController _posts = PostController();
  StatusController _statusController = StatusController();

  @override
  Widget build(BuildContext context) {
    // print(_posts.posts.);
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return ListTile(
            title: Column(
              children: [
                AddNewPostComp(),
                SizedBox(height: 30),
                StatusViewComp(status:_statusController.status),
                SizedBox(height: 30),
              ],
            ),
            subtitle: ListView.builder(
              itemCount: _posts.posts.length,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                PostModal post = _posts.posts[index];
                return Post(data: post);
              },
            ),
          );
        }

        // children: [

        // Column(
        //   children: [
        //     AddNewPostComp(),
        //     SizedBox(height: 30),
        //     StatusViewComp(),
        //     SizedBox(height: 30),
        //
        //   ],
        // ),

        //   Container(
        //     child: ListView.builder(
        //       itemCount: _posts.posts.length,
        //       itemBuilder: (context, index) {
        //         PostModal post = _posts.posts[index];
        //         return Post(data: post);
        //       },
        //     ),
        //   )
        // ],
        );

    //
    // );
    // return ListView(
    //   children: [
    //     // AddNewPostComp(),
    //     // SizedBox(height: 30),
    //     // StatusViewComp(),
    //     // SizedBox(height: 30),
    //
    //     ListView.builder(
    //       itemCount: _posts.posts.length,
    //       itemBuilder: (context,index){
    //         PostModal post  = _posts.posts[index];
    //         return Text(post.name);
    //       },
    //
    //     ),
    //
    //   ],
    // );
  }
}
