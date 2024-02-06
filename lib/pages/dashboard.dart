// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../bloc/bloc_main.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff4b98d9),
        appBar: _appBar(context),
        body: BlocProvider(
          create: (context) => TaskBloc()..add(LoadTasks()),
          child: BlocBuilder<TaskBloc, TaskState>(
            builder: (context, state) {
              if (state is TaskLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is TaskLoaded) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: width,
                      height: height * 0.87,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 242, 252, 254),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Column(
                        children: [
                          Container(
                            height: height * 0.10,
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.05),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 254, 254, 255),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0xff101617)
                                        .withOpacity(0.11),
                                    blurRadius: 40,
                                    spreadRadius: 0.0),
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: width * 0.22,
                                  height: height * 0.10,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 241, 246, 254),
                                      border: Border(
                                          bottom: BorderSide(
                                              color: const Color(0xff4b98d9),
                                              width: width * 0.005))),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: width * 0.03),
                                        width: width * 0.1,
                                        height: height * 0.05,
                                        child: SvgPicture.asset(
                                          'assets/svgs/shape.svg',
                                          color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text('All Offers')
                                    ],
                                  ),
                                ),
                                Container(
                                  width: width * 0.22,
                                  height: height * 0.10,
                                  // decoration: BoxDecoration(
                                  //     color: const Color.fromARGB(255, 241, 246, 254),
                                  //     border: Border(
                                  //         bottom: BorderSide(
                                  //             color: const Color(0xff4b98d9),
                                  //             width: width * 0.005))),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: width * 0.03),
                                        width: width * 0.1,
                                        height: height * 0.05,
                                        // decoration: BoxDecoration(color: Colors.black),
                                        child: SvgPicture.asset(
                                          'assets/svgs/gift.svg',
                                          // color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text('Gift')
                                    ],
                                  ),
                                ),
                                Container(
                                  width: width * 0.22,
                                  height: height * 0.10,
                                  // decoration: BoxDecoration(
                                  //     color: const Color.fromARGB(255, 241, 246, 254),
                                  //     border: Border(
                                  //         bottom: BorderSide(
                                  //             color: const Color(0xff4b98d9),
                                  //             width: width * 0.005))),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: width * 0.03),
                                        width: width * 0.1,
                                        height: height * 0.05,
                                        // decoration: BoxDecoration(color: Colors.black),
                                        child: SvgPicture.asset(
                                          'assets/svgs/upcoming.svg',
                                          // color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text('Upcoming')
                                    ],
                                  ),
                                ),
                                Container(
                                  width: width * 0.22,
                                  height: height * 0.10,
                                  // decoration: BoxDecoration(
                                  //     color: const Color.fromARGB(255, 241, 246, 254),
                                  //     border: Border(
                                  //         bottom: BorderSide(
                                  //             color: const Color(0xff4b98d9),
                                  //             width: width * 0.005))),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: width * 0.03),
                                        width: width * 0.1,
                                        height: height * 0.05,
                                        // decoration: BoxDecoration(color: Colors.black),
                                        child: SvgPicture.asset(
                                          'assets/svgs/myOffer.svg',
                                          // color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text('My Offers')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.02),
                            width: width,
                            height: height * 0.03,
                            color: const Color(0xffe7eef1),
                            child: Text(
                                'Live update will be broadcast here ......'),
                          ),
                          SizedBox(height: height * 0.02),
                          Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.02),
                            height: height * 0.04,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: width * 0.1,
                                    child: SvgPicture.asset(
                                        'assets/svgs/trending.svg')),
                                SizedBox(width: width * 0.02),
                                const Text(
                                  'Trending Offers',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          SizedBox(
                            height: height * 0.22,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return const SizedBox(width: 15);
                                },
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Container(
                                    width: width * 0.42,
                                    decoration: BoxDecoration(
                                        color: Color(0xfffe5636),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
                                          child: Image.network(
                                            'https://play-lh.googleusercontent.com/6RaM9kTS9df5e1n4JBS-gVHK4DoyuPUw0P2tyytCI2H50-k2a1GPgpQBpl9IupvT8A=w526-h296-rw',
                                            fit: BoxFit.fill,
                                            height: height * 0.13,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Application Name',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                'Get Rs. 230',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: width * 0.04,
                                                    height: height * 0.038,
                                                    child: SvgPicture.asset(
                                                        'assets/svgs/lightning.svg'),
                                                  ),
                                                  Text(
                                                    '4567 users',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          SizedBox(height: height * 0.01),
                          Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.02),
                            height: height * 0.04,
                            child: Row(
                              children: [
                                SizedBox(
                                    width: width * 0.1,
                                    child: SvgPicture.asset(
                                        'assets/svgs/grid.svg')),
                                SizedBox(width: width * 0.02),
                                const Text(
                                  'More Offers',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          SizedBox(
                            height: height * 0.37,
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin:
                                        EdgeInsets.only(bottom: height * 0.01),
                                    height: height * 0.12,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            top: BorderSide(
                                                color: const Color(0xff573c05),
                                                width: width * 0.006),
                                            bottom: BorderSide(
                                                color: const Color(0xff573c05),
                                                width: width * 0.006),
                                            right: BorderSide(
                                                color: const Color(0xff573c05),
                                                width: width * 0.006),
                                            left: BorderSide(
                                                color: const Color(0xff573c05),
                                                width: width * 0.006)),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.network(
                                                'https://cdn.shopify.com/s/files/1/0062/9587/9780/files/Rage_Coffee_New_Logo_x200_2x-edited_x200@2x.png?v=1652100850',
                                                width: height * 0.1,
                                                height: height * 0.1,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Application Name',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 18),
                                                ),
                                                Container(
                                                  height: height * 0.045,
                                                  width: width * 0.23,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border(
                                                          top: BorderSide(
                                                              color: Color(
                                                                  0xff4b98d9),
                                                              width: width *
                                                                  0.006),
                                                          bottom: BorderSide(
                                                              color: Color(
                                                                  0xff4b98d9),
                                                              width: width *
                                                                  0.006),
                                                          right: BorderSide(
                                                              color: Color(
                                                                  0xff4b98d9),
                                                              width: width *
                                                                  0.006),
                                                          left: BorderSide(
                                                              color:
                                                                  Color(0xff4b98d9),
                                                              width: width * 0.006))),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            6.0),
                                                    child: Text(
                                                      'Get Rs.230',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff4b98d9),
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    width: width * 0.04,
                                                    height: height * 0.038,
                                                    child: SvgPicture.asset(
                                                        'assets/svgs/lightning.svg'),
                                                  ),
                                                  Text(
                                                    '4567',
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                        ]),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else if (state is TaskLoadError) {
                return Center(
                  child: Text(state.errorMessage),
                );
              } else {
                return Center(
                  child: Text('Unknown state'),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  // Column _body(BuildContext context) {
  //   double width = MediaQuery.of(context).size.width;
  //   double height = MediaQuery.of(context).size.height;
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.end,
  //     children: [
  //       Container(
  //         width: width,
  //         height: height * 0.87,
  //         decoration: const BoxDecoration(
  //             color: Color.fromARGB(255, 242, 252, 254),
  //             borderRadius: BorderRadius.only(
  //                 topLeft: Radius.circular(10), topRight: Radius.circular(10))),
  //         child: Column(
  //           children: [
  //             Container(
  //               height: height * 0.10,
  //               padding: EdgeInsets.symmetric(horizontal: width * 0.05),
  //               decoration: BoxDecoration(
  //                 color: const Color.fromARGB(255, 254, 254, 255),
  //                 borderRadius: BorderRadius.circular(10),
  //                 boxShadow: [
  //                   BoxShadow(
  //                       color: const Color(0xff101617).withOpacity(0.11),
  //                       blurRadius: 40,
  //                       spreadRadius: 0.0),
  //                 ],
  //               ),
  //               child: Row(
  //                 children: [
  //                   Container(
  //                     width: width * 0.22,
  //                     height: height * 0.10,
  //                     decoration: BoxDecoration(
  //                         color: const Color.fromARGB(255, 241, 246, 254),
  //                         border: Border(
  //                             bottom: BorderSide(
  //                                 color: const Color(0xff4b98d9),
  //                                 width: width * 0.005))),
  //                     child: Column(
  //                       children: [
  //                         Container(
  //                           padding: EdgeInsets.only(top: width * 0.03),
  //                           width: width * 0.1,
  //                           height: height * 0.05,
  //                           child: SvgPicture.asset(
  //                             'assets/svgs/shape.svg',
  //                             color: Colors.blue,
  //                           ),
  //                         ),
  //                         SizedBox(
  //                           height: height * 0.01,
  //                         ),
  //                         Text('All Offers')
  //                       ],
  //                     ),
  //                   ),
  //                   Container(
  //                     width: width * 0.22,
  //                     height: height * 0.10,
  //                     // decoration: BoxDecoration(
  //                     //     color: const Color.fromARGB(255, 241, 246, 254),
  //                     //     border: Border(
  //                     //         bottom: BorderSide(
  //                     //             color: const Color(0xff4b98d9),
  //                     //             width: width * 0.005))),
  //                     child: Column(
  //                       children: [
  //                         Container(
  //                           padding: EdgeInsets.only(top: width * 0.03),
  //                           width: width * 0.1,
  //                           height: height * 0.05,
  //                           // decoration: BoxDecoration(color: Colors.black),
  //                           child: SvgPicture.asset(
  //                             'assets/svgs/gift.svg',
  //                             // color: Colors.blue,
  //                           ),
  //                         ),
  //                         SizedBox(
  //                           height: height * 0.01,
  //                         ),
  //                         Text('Gift')
  //                       ],
  //                     ),
  //                   ),
  //                   Container(
  //                     width: width * 0.22,
  //                     height: height * 0.10,
  //                     // decoration: BoxDecoration(
  //                     //     color: const Color.fromARGB(255, 241, 246, 254),
  //                     //     border: Border(
  //                     //         bottom: BorderSide(
  //                     //             color: const Color(0xff4b98d9),
  //                     //             width: width * 0.005))),
  //                     child: Column(
  //                       children: [
  //                         Container(
  //                           padding: EdgeInsets.only(top: width * 0.03),
  //                           width: width * 0.1,
  //                           height: height * 0.05,
  //                           // decoration: BoxDecoration(color: Colors.black),
  //                           child: SvgPicture.asset(
  //                             'assets/svgs/upcoming.svg',
  //                             // color: Colors.blue,
  //                           ),
  //                         ),
  //                         SizedBox(
  //                           height: height * 0.01,
  //                         ),
  //                         Text('Upcoming')
  //                       ],
  //                     ),
  //                   ),
  //                   Container(
  //                     width: width * 0.22,
  //                     height: height * 0.10,
  //                     // decoration: BoxDecoration(
  //                     //     color: const Color.fromARGB(255, 241, 246, 254),
  //                     //     border: Border(
  //                     //         bottom: BorderSide(
  //                     //             color: const Color(0xff4b98d9),
  //                     //             width: width * 0.005))),
  //                     child: Column(
  //                       children: [
  //                         Container(
  //                           padding: EdgeInsets.only(top: width * 0.03),
  //                           width: width * 0.1,
  //                           height: height * 0.05,
  //                           // decoration: BoxDecoration(color: Colors.black),
  //                           child: SvgPicture.asset(
  //                             'assets/svgs/myOffer.svg',
  //                             // color: Colors.blue,
  //                           ),
  //                         ),
  //                         SizedBox(
  //                           height: height * 0.01,
  //                         ),
  //                         Text('My Offers')
  //                       ],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             SizedBox(height: height * 0.02),
  //             Container(
  //               padding: EdgeInsets.symmetric(horizontal: width * 0.02),
  //               width: width,
  //               height: height * 0.03,
  //               color: const Color(0xffe7eef1),
  //               child: Text('Live update will be broadcast here ......'),
  //             ),
  //             SizedBox(height: height * 0.02),
  //             Container(
  //               padding: EdgeInsets.symmetric(horizontal: width * 0.02),
  //               height: height * 0.04,
  //               child: Row(
  //                 children: [
  //                   SizedBox(
  //                       width: width * 0.1,
  //                       child: SvgPicture.asset('assets/svgs/trending.svg')),
  //                   SizedBox(width: width * 0.02),
  //                   const Text(
  //                     'Trending Offers',
  //                     style:
  //                         TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
  //                   )
  //                 ],
  //               ),
  //             ),
  //             SizedBox(height: height * 0.01),
  //             SizedBox(
  //               height: height * 0.22,
  //               child: ListView.separated(
  //                   scrollDirection: Axis.horizontal,
  //                   separatorBuilder: (context, index) {
  //                     return const SizedBox(width: 15);
  //                   },
  //                   padding: const EdgeInsets.symmetric(horizontal: 20),
  //                   itemCount: 3,
  //                   itemBuilder: (context, index) {
  //                     return Container(
  //                       width: width * 0.42,
  //                       decoration: BoxDecoration(
  //                           color: Color(0xfffe5636),
  //                           borderRadius: BorderRadius.circular(20)),
  //                       child: Column(
  //                         children: [
  //                           ClipRRect(
  //                             borderRadius: BorderRadius.only(
  //                                 topLeft: Radius.circular(20),
  //                                 topRight: Radius.circular(20)),
  //                             child: Image.network(
  //                               'https://play-lh.googleusercontent.com/6RaM9kTS9df5e1n4JBS-gVHK4DoyuPUw0P2tyytCI2H50-k2a1GPgpQBpl9IupvT8A=w526-h296-rw',
  //                               fit: BoxFit.fill,
  //                               height: height * 0.13,
  //                             ),
  //                           ),
  //                           Padding(
  //                             padding:
  //                                 const EdgeInsets.symmetric(horizontal: 8),
  //                             child: Column(
  //                               mainAxisAlignment:
  //                                   MainAxisAlignment.spaceEvenly,
  //                               crossAxisAlignment: CrossAxisAlignment.start,
  //                               children: [
  //                                 Text(
  //                                   'Application Name',
  //                                   style: TextStyle(
  //                                       color: Colors.white,
  //                                       fontSize: 15,
  //                                       fontWeight: FontWeight.w600),
  //                                 ),
  //                                 Text(
  //                                   'Get Rs. 230',
  //                                   style: TextStyle(
  //                                       color: Colors.white,
  //                                       fontSize: 15,
  //                                       fontWeight: FontWeight.bold),
  //                                 ),
  //                                 Row(
  //                                   children: [
  //                                     Container(
  //                                       width: width * 0.04,
  //                                       height: height * 0.038,
  //                                       child: SvgPicture.asset(
  //                                           'assets/svgs/lightning.svg'),
  //                                     ),
  //                                     Text(
  //                                       '4567 users',
  //                                       style: TextStyle(color: Colors.white),
  //                                     )
  //                                   ],
  //                                 )
  //                               ],
  //                             ),
  //                           )
  //                         ],
  //                       ),
  //                     );
  //                   }),
  //             ),
  //             SizedBox(height: height * 0.01),
  //             Container(
  //               padding: EdgeInsets.symmetric(horizontal: width * 0.02),
  //               height: height * 0.04,
  //               child: Row(
  //                 children: [
  //                   SizedBox(
  //                       width: width * 0.1,
  //                       child: SvgPicture.asset('assets/svgs/grid.svg')),
  //                   SizedBox(width: width * 0.02),
  //                   const Text(
  //                     'More Offers',
  //                     style:
  //                         TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
  //                   )
  //                 ],
  //               ),
  //             ),
  //             SizedBox(height: height * 0.01),
  //             SizedBox(
  //               height: height * 0.37,
  //               child: ListView.builder(
  //                   scrollDirection: Axis.vertical,
  //                   padding: const EdgeInsets.symmetric(horizontal: 20),
  //                   itemCount: 3,
  //                   itemBuilder: (context, index) {
  //                     return Container(
  //                       margin: EdgeInsets.only(bottom: height * 0.01),
  //                       height: height * 0.12,
  //                       decoration: BoxDecoration(
  //                           border: Border(
  //                               top: BorderSide(
  //                                   color: const Color(0xff573c05),
  //                                   width: width * 0.006),
  //                               bottom: BorderSide(
  //                                   color: const Color(0xff573c05),
  //                                   width: width * 0.006),
  //                               right: BorderSide(
  //                                   color: const Color(0xff573c05),
  //                                   width: width * 0.006),
  //                               left: BorderSide(
  //                                   color: const Color(0xff573c05),
  //                                   width: width * 0.006)),
  //                           borderRadius: BorderRadius.circular(10)),
  //                       child: Row(
  //                           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                           children: [
  //                             Padding(
  //                               padding: const EdgeInsets.all(5.0),
  //                               child: ClipRRect(
  //                                 borderRadius: BorderRadius.circular(20),
  //                                 child: Image.network(
  //                                   'https://cdn.shopify.com/s/files/1/0062/9587/9780/files/Rage_Coffee_New_Logo_x200_2x-edited_x200@2x.png?v=1652100850',
  //                                   width: height * 0.1,
  //                                   height: height * 0.1,
  //                                 ),
  //                               ),
  //                             ),
  //                             Padding(
  //                               padding: const EdgeInsets.all(8.0),
  //                               child: Column(
  //                                 mainAxisAlignment:
  //                                     MainAxisAlignment.spaceEvenly,
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 children: [
  //                                   Text(
  //                                     'Application Name',
  //                                     style: TextStyle(
  //                                         fontWeight: FontWeight.w700,
  //                                         fontSize: 18),
  //                                   ),
  //                                   Container(
  //                                     height: height * 0.045,
  //                                     width: width * 0.23,
  //                                     decoration: BoxDecoration(
  //                                         borderRadius:
  //                                             BorderRadius.circular(10),
  //                                         border: Border(
  //                                             top: BorderSide(
  //                                                 color: Color(0xff4b98d9),
  //                                                 width: width * 0.006),
  //                                             bottom: BorderSide(
  //                                                 color: Color(0xff4b98d9),
  //                                                 width: width * 0.006),
  //                                             right: BorderSide(
  //                                                 color: Color(0xff4b98d9),
  //                                                 width: width * 0.006),
  //                                             left: BorderSide(
  //                                                 color: Color(0xff4b98d9),
  //                                                 width: width * 0.006))),
  //                                     child: Padding(
  //                                       padding: const EdgeInsets.all(6.0),
  //                                       child: Text(
  //                                         'Get Rs.230',
  //                                         style: TextStyle(
  //                                             color: Color(0xff4b98d9),
  //                                             fontWeight: FontWeight.w600),
  //                                       ),
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //                             Column(
  //                               mainAxisAlignment: MainAxisAlignment.end,
  //                               crossAxisAlignment: CrossAxisAlignment.end,
  //                               children: [
  //                                 Row(
  //                                   children: [
  //                                     Container(
  //                                       width: width * 0.04,
  //                                       height: height * 0.038,
  //                                       child: SvgPicture.asset(
  //                                           'assets/svgs/lightning.svg'),
  //                                     ),
  //                                     Text(
  //                                       '4567',
  //                                       style: TextStyle(color: Colors.black),
  //                                     )
  //                                   ],
  //                                 )
  //                               ],
  //                             )
  //                           ]),
  //                     );
  //                   }),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }

  AppBar _appBar(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return AppBar(
      primary: false,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          'assets/svgs/menu.svg',
          color: Colors.white,
        ),
      ),
      title: const Text(
        'Hey Lalit',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Container(
            width: width * 0.25,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  width: width * 0.1,
                  decoration: BoxDecoration(
                      color: const Color(0xff4b98d9),
                      borderRadius: BorderRadius.circular(50)),
                  child: SvgPicture.asset('assets/svgs/wallet.svg'),
                ),
              ),
              const Text(
                "452",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            ]),
          ),
        )
      ],
    );
  }
}
