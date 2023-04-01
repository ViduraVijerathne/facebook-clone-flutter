import 'package:facebook/constans/my_colors.dart';
import 'package:facebook/modals/notification_modals.dart';
import 'package:flutter/material.dart';

class NotificationComponent extends StatelessWidget {
  final NotificationModal notification;
  const NotificationComponent({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
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
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: notification.isNew == 1 ? MyColors.gray : MyColors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: 75,
                width: 75,
                padding: EdgeInsets.only(top: 40, left: 20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(notification.profile))),
                child: notification.mode == "LIKE"
                    ? Icon(Icons.thumb_up, size: 30, color: MyColors.lightBlue)
                    : Icon(Icons.messenger,
                        size: 30, color: Colors.lightGreenAccent),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '${notification.name}',
                      maxLines: 2,
                      softWrap: true,
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Text(
                      " ${notification.notification}",
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ],
                ),
                Text('${notification.time}')
              ],
            ),
            Icon(Icons.more_horiz_sharp)
          ],
        ),
      ),
    );
  }
}
