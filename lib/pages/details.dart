import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff4b98d9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: const Text('Offer Details'),
        elevation: 0,
      ),
      body: _body(context),
    ));
  }

  Column _body(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          width: width,
          height: height * 0.87,
          decoration: const BoxDecoration(
              color: Color(0xfffefeff),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.01, vertical: width * 0.04),
                height: height * 0.2,
                width: width * 0.97,
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://logos-download.com/wp-content/uploads/2016/06/Kotak_Mahindra_Bank_logo.png',
                      height: height * 0.15,
                      width: height * 0.15,
                    ),
                  ),
                  SizedBox(width: width * 0.03),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Application Name',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                                'Discover best Audio books, Podcasts, Talk shows, Stories at Kuku FM. An App Made with love in India. Listen content in Hindi, Marathi & more!',
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.04,
                              height: height * 0.038,
                              child: SvgPicture.asset('assets/svgs/star.svg'),
                            ),
                            SizedBox(
                              width: width * 0.04,
                              height: height * 0.038,
                              child: SvgPicture.asset('assets/svgs/star.svg'),
                            ),
                            SizedBox(
                              width: width * 0.04,
                              height: height * 0.038,
                              child: SvgPicture.asset('assets/svgs/star.svg'),
                            ),
                            SizedBox(
                              width: width * 0.04,
                              height: height * 0.038,
                              child: SvgPicture.asset('assets/svgs/star.svg'),
                            ),
                            SizedBox(
                              width: width * 0.04,
                              height: height * 0.038,
                              child: SvgPicture.asset('assets/svgs/star.svg'),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ),
              const Divider(
                  color: Color.fromARGB(255, 124, 124, 124),
                  thickness: 1,
                  indent: 10,
                  endIndent: 10),
              const Text('Steps (1/4)',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))
            ],
          ),
        ),
      ],
    );
  }
}
