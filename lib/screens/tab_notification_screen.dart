import 'package:facebook/modals/notification_modals.dart';
import 'package:flutter/material.dart';

import '../components/notification_comp.dart';
import '../controller/notification_controller.dart';
import 'package:provider/provider.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // NotificationController notificationController = NotificationController();
    final controller = NotificationController();
    print(controller.getNofitication());
    return FutureBuilder<List<NotificationModal>>(
      future: controller.getNofitication(),
      builder: (context, snapshot) {
        if (snapshot.hasData){
          final notification = snapshot.data!;

          return ListView.builder(
            itemCount: notification.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              print(notification.length);
              return
                index == 0 ? Column(
                  children: [
                    SizedBox(height:20,),
                    Text("Notifications",style: TextStyle(fontWeight: FontWeight.w900,fontSize:30)),
                    NotificationComponent(notification: notification[index],)
                  ],

                ) : NotificationComponent(notification: notification[index],)
              ;

            },
          );

        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        } else {
          return CircularProgressIndicator();
        }
      },


    );

    //
    // return ListView.builder(
    //   itemCount: notificationController.notifications.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return
    //       index == 0 ? Column(
    //         children: [
    //           SizedBox(height:20,),
    //           Text("Notifications",style: TextStyle(fontWeight: FontWeight.w900,fontSize:30)),
    //           NotificationComponent(notification: notificationController.notifications[index],)
    //         ],
    //
    //       ) : NotificationComponent(notification: notificationController.notifications[index])
    //       ;
    //
    //   },
    // );

    // return ListView(
    //   children: [

    //
    //
    //
    //     // ListView(
    //     //   shrinkWrap: true,
    //     //   children: [
    //     //     NotificationComponent(),
    //     //     NotificationComponent(),
    //     //     NotificationComponent(),
    //     //     NotificationComponent(),
    //     //     NotificationComponent(),
    //     //   ],
    //     // )
    //   ],
    // );
  }
}
