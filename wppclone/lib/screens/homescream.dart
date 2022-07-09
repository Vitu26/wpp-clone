import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<String> url = [
      'https://www.abola.pt//img/fotos/abola2015/FOTOSAP/ESPANHA/2018/Messi12.jpg',
      'https://www.abola.pt//img/fotos/abola2015/FOTOSAP/ESPANHA/2018/Messi12.jpg',
      'https://www.abola.pt//img/fotos/abola2015/FOTOSAP/ESPANHA/2018/Messi12.jpg',
  ];
  static List<String> dados = [
    'Carimbó',
    'Thor',
    'brogo',
    'Lombrigo',
  ];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: buildBody(),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      elevation: 8,
      backgroundColor: Color(0xFF1D5d51),
      title: Text("WhatsApp Clone"),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.message)),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      ],
      bottom: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.white,
        tabs: [
          Container(
            child: Tab(
              icon: Icon(
                Icons.camera_alt,
                size: 18,
              ),
            ),
          ),
          Container(
            child: Tab(
              text: "Conversas".toUpperCase(),
            ),
          ),
          Container(
            child: Tab(
              text: "Status".toUpperCase(),
            ),
          ),
          Container(
            child: Tab(
              text: "Chamadas".toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }

  buildBody() {
    return TabBarView(
      children: [
      Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.white,
      child: ListView.builder(
          itemCount: dados.length,
          itemBuilder: (context, index) {
            var title = dados.elementAt(index);

            return Container(
              height: 98,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 50, 
                        height: 50, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        child:CircleAvatar(
                          backgroundImage: AssetImage('images/IMG_20220513_172209.jpg'),
                        radius: 110,
                      ), 
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text(title,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), Text('Me leva pra passear!',style: TextStyle(
                                            fontSize: 14
                                          ),)],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "11:45",
                            style: TextStyle(color: Colors.green),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(Radius.circular(100))),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ]),
                    Container(
                      margin: EdgeInsets.only(left: 60),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.red,
    ),
      ],
    );
  }
}
