import 'package:facebook/constans/my_colors.dart';
import 'package:facebook/controller/status_controller.dart';
import 'package:facebook/modals/status_modal.dart';
import 'package:flutter/material.dart';

class StatusViewComp extends StatelessWidget {
  final List<StatusModal> status;
  const StatusViewComp({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 10),
        ),
      ]),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: status.length,
        itemBuilder: (context, index) {
          StatusModal oneStatus = status[index];
          return index == 0 ?
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 100,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://randomuser.me/api/portraits/women/20.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            color: MyColors.lightBlue,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add,
                            color: MyColors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 100,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 100,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                oneStatus.status[0].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  color: MyColors.white,
                                  padding: EdgeInsets.all(3),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              oneStatus.profile),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                oneStatus.name,

                                style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.w900,

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ):
            Container(
            padding: EdgeInsets.only(left: 10),
            width: 100,
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 100,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        oneStatus.status[0].image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          color: MyColors.white,
                          padding: EdgeInsets.all(3),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      oneStatus.profile),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        oneStatus.name,

                        style: TextStyle(
                          color: MyColors.white,
                          fontWeight: FontWeight.w900,

                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ) ;
        },
      ),
      // child: ListView(
      //
      //   scrollDirection: Axis.horizontal,
      //   children: [


      //     Container(
      //       padding: EdgeInsets.only(left: 10),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(10),
      //         child: Container(
      //           width: 100,
      //           height: 200,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(
      //                   'https://randomuser.me/api/portraits/women/21.jpg'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           child: Container(
      //             margin: EdgeInsets.all(2),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(100),
      //
      //                   child: Container(
      //                     color: MyColors.white,
      //                     padding: EdgeInsets.all(3),
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(100),
      //                       child: Container(
      //                         width: 50,
      //                         height: 50,
      //                         decoration: BoxDecoration(
      //                           image: DecorationImage(
      //                             image: NetworkImage(
      //                                 'https://randomuser.me/api/portraits/women/22.jpg'),
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 Text(
      //                   "Malithi Liverea",
      //                   style: TextStyle(
      //                     color: MyColors.white,
      //                     fontWeight: FontWeight.w900,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       padding: EdgeInsets.only(left: 10),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(10),
      //         child: Container(
      //           width: 100,
      //           height: 200,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(
      //                   'https://randomuser.me/api/portraits/women/21.jpg'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           child: Container(
      //             margin: EdgeInsets.all(2),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(100),
      //
      //                   child: Container(
      //                     color: MyColors.white,
      //                     padding: EdgeInsets.all(3),
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(100),
      //                       child: Container(
      //                         width: 50,
      //                         height: 50,
      //                         decoration: BoxDecoration(
      //                           image: DecorationImage(
      //                             image: NetworkImage(
      //                                 'https://randomuser.me/api/portraits/women/22.jpg'),
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 Text(
      //                   "Malithi Liverea",
      //                   style: TextStyle(
      //                     color: MyColors.white,
      //                     fontWeight: FontWeight.w900,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       padding: EdgeInsets.only(left: 10),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(10),
      //         child: Container(
      //           width: 100,
      //           height: 200,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(
      //                   'https://randomuser.me/api/portraits/women/21.jpg'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           child: Container(
      //             margin: EdgeInsets.all(2),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(100),
      //
      //                   child: Container(
      //                     color: MyColors.white,
      //                     padding: EdgeInsets.all(3),
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(100),
      //                       child: Container(
      //                         width: 50,
      //                         height: 50,
      //                         decoration: BoxDecoration(
      //                           image: DecorationImage(
      //                             image: NetworkImage(
      //                                 'https://randomuser.me/api/portraits/women/22.jpg'),
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 Text(
      //                   "Malithi Liverea",
      //                   style: TextStyle(
      //                     color: MyColors.white,
      //                     fontWeight: FontWeight.w900,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       padding: EdgeInsets.only(left: 10),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(10),
      //         child: Container(
      //           width: 100,
      //           height: 200,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(
      //                   'https://randomuser.me/api/portraits/women/21.jpg'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           child: Container(
      //             margin: EdgeInsets.all(2),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(100),
      //
      //                   child: Container(
      //                     color: MyColors.white,
      //                     padding: EdgeInsets.all(3),
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(100),
      //                       child: Container(
      //                         width: 50,
      //                         height: 50,
      //                         decoration: BoxDecoration(
      //                           image: DecorationImage(
      //                             image: NetworkImage(
      //                                 'https://randomuser.me/api/portraits/women/22.jpg'),
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 Text(
      //                   "Malithi Liverea",
      //                   style: TextStyle(
      //                     color: MyColors.white,
      //                     fontWeight: FontWeight.w900,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       padding: EdgeInsets.only(left: 10),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(10),
      //         child: Container(
      //           width: 100,
      //           height: 200,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(
      //                   'https://randomuser.me/api/portraits/women/21.jpg'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           child: Container(
      //             margin: EdgeInsets.all(2),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(100),
      //
      //                   child: Container(
      //                     color: MyColors.white,
      //                     padding: EdgeInsets.all(3),
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(100),
      //                       child: Container(
      //                         width: 50,
      //                         height: 50,
      //                         decoration: BoxDecoration(
      //                           image: DecorationImage(
      //                             image: NetworkImage(
      //                                 'https://randomuser.me/api/portraits/women/22.jpg'),
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 Text(
      //                   "Malithi Liverea",
      //                   style: TextStyle(
      //                     color: MyColors.white,
      //                     fontWeight: FontWeight.w900,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       padding: EdgeInsets.only(left: 10),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(10),
      //         child: Container(
      //           width: 100,
      //           height: 200,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(
      //                   'https://randomuser.me/api/portraits/women/21.jpg'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           child: Container(
      //             margin: EdgeInsets.all(2),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(100),
      //
      //                   child: Container(
      //                     color: MyColors.white,
      //                     padding: EdgeInsets.all(3),
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(100),
      //                       child: Container(
      //                         width: 50,
      //                         height: 50,
      //                         decoration: BoxDecoration(
      //                           image: DecorationImage(
      //                             image: NetworkImage(
      //                                 'https://randomuser.me/api/portraits/women/22.jpg'),
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 Text(
      //                   "Malithi Liverea",
      //                   style: TextStyle(
      //                     color: MyColors.white,
      //                     fontWeight: FontWeight.w900,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       padding: EdgeInsets.only(left: 10),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(10),
      //         child: Container(
      //           width: 100,
      //           height: 200,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(
      //                   'https://randomuser.me/api/portraits/women/21.jpg'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           child: Container(
      //             margin: EdgeInsets.all(2),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(100),
      //
      //                   child: Container(
      //                     color: MyColors.white,
      //                     padding: EdgeInsets.all(3),
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(100),
      //                       child: Container(
      //                         width: 50,
      //                         height: 50,
      //                         decoration: BoxDecoration(
      //                           image: DecorationImage(
      //                             image: NetworkImage(
      //                                 'https://randomuser.me/api/portraits/women/22.jpg'),
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 Text(
      //                   "Malithi Liverea",
      //                   style: TextStyle(
      //                     color: MyColors.white,
      //                     fontWeight: FontWeight.w900,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       padding: EdgeInsets.only(left: 10),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(10),
      //         child: Container(
      //           width: 100,
      //           height: 200,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(
      //                   'https://randomuser.me/api/portraits/women/21.jpg'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           child: Container(
      //             margin: EdgeInsets.all(2),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(100),
      //
      //                   child: Container(
      //                     color: MyColors.white,
      //                     padding: EdgeInsets.all(3),
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(100),
      //                       child: Container(
      //                         width: 50,
      //                         height: 50,
      //                         decoration: BoxDecoration(
      //                           image: DecorationImage(
      //                             image: NetworkImage(
      //                                 'https://randomuser.me/api/portraits/women/22.jpg'),
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 Text(
      //                   "Malithi Liverea",
      //                   style: TextStyle(
      //                     color: MyColors.white,
      //                     fontWeight: FontWeight.w900,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       padding: EdgeInsets.only(left: 10),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(10),
      //         child: Container(
      //           width: 100,
      //           height: 200,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(
      //                   'https://randomuser.me/api/portraits/women/21.jpg'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           child: Container(
      //             margin: EdgeInsets.all(2),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(100),
      //
      //                   child: Container(
      //                     color: MyColors.white,
      //                     padding: EdgeInsets.all(3),
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(100),
      //                       child: Container(
      //                         width: 50,
      //                         height: 50,
      //                         decoration: BoxDecoration(
      //                           image: DecorationImage(
      //                             image: NetworkImage(
      //                                 'https://randomuser.me/api/portraits/women/22.jpg'),
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 Text(
      //                   "Malithi Liverea",
      //                   style: TextStyle(
      //                     color: MyColors.white,
      //                     fontWeight: FontWeight.w900,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       padding: EdgeInsets.only(left: 10),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(10),
      //         child: Container(
      //           width: 100,
      //           height: 200,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(
      //                   'https://randomuser.me/api/portraits/women/21.jpg'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           child: Container(
      //             margin: EdgeInsets.all(2),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(100),
      //
      //                   child: Container(
      //                     color: MyColors.white,
      //                     padding: EdgeInsets.all(3),
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(100),
      //                       child: Container(
      //                         width: 50,
      //                         height: 50,
      //                         decoration: BoxDecoration(
      //                           image: DecorationImage(
      //                             image: NetworkImage(
      //                                 'https://randomuser.me/api/portraits/women/22.jpg'),
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 Text(
      //                   "Malithi Liverea",
      //                   style: TextStyle(
      //                     color: MyColors.white,
      //                     fontWeight: FontWeight.w900,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // )
    );
  }
}
