import 'package:facebook/constans/my_colors.dart';
import 'package:facebook/modals/post_modals.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final PostModal data;
  const Post({Key? key, required this.data}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    void like(id) {
      setState(() {
        widget.data.isLike = 1;
      });
    }

    void unLike(id) {
      setState(() {
        widget.data.isLike = 0;
      });
    }

    return Container(
      // padding:EdgeInsets.all(10),
      // margin:EdgeInsets.all(10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 10),
        ),
      ]),
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColors.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.network(
                    widget.data.profile,
                    width: 60,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.data.name,
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Text(widget.data.time)
                  ],
                )
              ],
            ),
            Text(
              widget.data.caption,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.data.image,
                  ),
                )),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      widget.data.isLike == 0
                          ? InkWell(
                              onTap: () {
                                like(widget.data.id);
                              },
                              child: Icon(
                                Icons.thumb_up_outlined,
                                size: 30,
                              ),
                            )
                          : InkWell(
                              onTap: () {
                                unLike(widget.data.id);
                              },
                              child: Icon(
                                Icons.thumb_up,
                                size: 30,
                                color: MyColors.lightBlue,
                              ),
                            ),
                      Text(
                        widget.data.likeCount,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.messenger_outline,
                    size: 30,
                  ),
                  Icon(
                    Icons.share,
                    size: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
