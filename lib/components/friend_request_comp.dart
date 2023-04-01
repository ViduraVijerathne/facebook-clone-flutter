import 'package:facebook/constans/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modals/friend_request_modal.dart';

class FriendRequest extends StatelessWidget {
  final FriendRequestModal friendRequestModal;
  const FriendRequest({Key? key, required this.friendRequestModal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColors.white,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(friendRequestModal.profile, height: 75),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        friendRequestModal.name,
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      SizedBox(width: 150),
                      Text(friendRequestModal.time),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(friendRequestModal.mutualFriends),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(
                          left: 30, top: 10, bottom: 10, right: 30),
                      decoration: BoxDecoration(
                        color: MyColors.lightBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                            color: MyColors.white, fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(
                          left: 30, top: 10, bottom: 10, right: 30),
                      decoration: BoxDecoration(
                        color: MyColors.gray,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Delete",
                        style: TextStyle(
                            color: MyColors.white, fontWeight: FontWeight.w900),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
