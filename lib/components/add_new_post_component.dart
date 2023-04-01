import 'package:facebook/constans/my_colors.dart';
import 'package:flutter/material.dart';

class AddNewPostComp extends StatelessWidget {
  const AddNewPostComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(

        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 10),
          ),
        ]
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'https://randomuser.me/api/portraits/women/20.jpg',
                width:  MediaQuery.of(context).size.width / 10,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width/10*6,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    border: InputBorder.none,
                    hintText: 'Enter your text here',
                  ),
                ),
              ),
            ),
            Icon(
              Icons.image,
              size: 50,
              color: MyColors.lightBlue,
            )
          ],
        ),
      ),
    );
  }
}
