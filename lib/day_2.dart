import 'package:flutter/material.dart';

class Day2 extends StatefulWidget {
  const Day2({super.key});

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  PageController? _controller;
  int totalpage = 4;
  _onscroll() {
 
  }

  @override
  void initState() {
    _controller = PageController(initialPage: 1)..addListener(_onscroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(

        controller: _controller,
        children: [
          makeImage(
              page: 1,
              title: "Incididunt do sint veniam ",
              description:
                  "Dolore duis id commodo incididunt mollit culpa id culpa. Eiusmod ex in reprehenderit quis eiusmod esse deserunt qui ullamco dolore et consectetur. Occaecat mollit ex incididunt ea nisi fugiat veniam aliquip sint. Proident voluptate laborum adipisicing esse dolor ut ex excepteur velit. Ex do veniam commodo fugiat fugiat cupidatat reprehenderit sint Lorem Lorem dolor nisi occaecat incididunt. Aute ea laboris enim eiusmod laboris minim cupidatat nisi culpa sit in. Ea adipisicing labore incididunt tempor ea laborum velit non voluptate qui et.",
              image: 'assets/images/1.jpg'),
          makeImage(
              page: 2,
              title: "aliqua amet culpa duis aliqua officia proident.",
              description:
                  "In amet id sit aliquip aliqua aliquip deserunt. Qui velit nulla sit commodo qui laboris consequat. Eu nostrud nulla duis nostrud et nulla occaecat dolor eiusmod cupidatat commodo enim. Dolore duis veniam dolore fugiat fugiat commodo. Nisi id tempor eiusmod excepteur dolore labore reprehenderit nisi sunt eiusmod ea sit ipsum.",
              image: 'assets/images/2.jpg'),
          makeImage(
              page: 3,
              title: "Amet magna eiusmod nulla ",
              description:
                  "Excepteur anim ex aute magna. Ipsum sunt ipsum laborum est ex eu amet reprehenderit reprehenderit culpa. Officia ea anim ex id ex incididunt laborum in quis nostrud ut est. Lorem ullamco adipisicing occaecat fugiat qui aliqua laboris irure id dolor elit incididunt ex.",
              image: 'assets/images/3.jpg'),
          makeImage(
              page: 4,
              title: "Enim ut ut consectetur eu labore minim. ",
              description:
                  "Excepteur anim ex aute magna. Ipsum sunt ipsum laborum est ex eu amet reprehenderit reprehenderit culpa. Officia ea anim ex id ex incididunt laborum in quis nostrud ut est. Lorem ullamco adipisicing occaecat fugiat qui aliqua laboris irure id dolor elit incididunt ex.",
              image: 'assets/images/4.jpg'),
        ],
      ),
    );
  }

  Widget makeImage({title, image, description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(begin: Alignment.bottomRight, stops: const [
          0.1,
          0.9
        ], colors: [
          Colors.black.withOpacity(0.8),
          Colors.black.withOpacity(0.1),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    page.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "/" + totalpage.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        Text(
                          "4.0",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          "(2400)",
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        description,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white.withOpacity(.7),
                            height: 1.9),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Read More",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
