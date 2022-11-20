import 'package:flutter/material.dart';

List<Map<String, dynamic>> values = [
  {
    "text":
        "Aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis",
    "name": "Mallory Gillespie",
  },
  {
    "text": "Conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien",
    "name": "Anika Benson",
  },
  {
    "text": "Donec non justo. Proin non massa non ante bibendum",
    "name": "Boris Cardenas",
  },
  {
    "text": "Lpsum primis in faucibus orci luctus et ultrices posuere cubilia",
    "name": "Amanda Duffy",
  },
  {
    "text": "Ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non,",
    "name": "Silas Puckett",
    "email": "lorem@yahoo.org"
  }
];

class blogui extends StatelessWidget {
  const blogui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'Categories',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.category,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: TabBar(
                labelPadding: EdgeInsets.all(10),
                unselectedLabelColor: Colors.black,
                labelColor: Colors.red,
                isScrollable: true,
                tabs: [
                  Text('for you'),
                  Text('Dedign'),
                  Text('Beauty'),
                  Text('Education'),
                  Text('Enertinment')
                ]),
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
                itemBuilder: (context, int index) {
                  return bloglist(
                    ind: index,
                  );
                },
                separatorBuilder: (context, int index) {
                  return Divider(
                    height: 30,
                  );
                },
                itemCount: 5),
            Text('Tab 2'),
            Text('Tab 3'),
            Text('Tab 4'),
            Text('Tab 5')
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.folder_copy,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: '')
          ],
        ),
      ),
    );
  }
}

class bloglist extends StatelessWidget {
  var ind;

  bloglist({required this.ind});

  @override
  Widget build(BuildContext context) {
    var data = values[ind];
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 140,
              width: 100,
              color: Colors.yellow,
            ),
            Positioned(
              left: 20,
              top: 20,
              child: Container(
                height: 140,
                width: 400,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 120,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://as1.ftcdn.net/v2/jpg/01/11/52/74/1000_F_111527426_9LVSGbjcl2Vo74Q8UNX2iuPBR5tAm3Gm.jpg'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 250,
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['text'],
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w900),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                            SizedBox(height: 10,),
                            Text.rich(TextSpan(children: [
                              WidgetSpan(
                                  child: CircleAvatar(
                                backgroundColor: Colors.yellow,
                                radius: 12,
                              )),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 5,
                              )),
                              TextSpan(text: data['name']),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 25,
                              )),
                              TextSpan(text: '4 minutes ago')
                            ])),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
