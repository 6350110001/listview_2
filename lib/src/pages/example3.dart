import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  Example3({Key? key}) : super(key: key);

  final titles = [
    'Figure 1',
    'Figure 2',
    'Figure 3',
    'Figure 4',
    'Figure 5',
    'Figure 6',
    'Figure 7',
    'Figure 8',
    'Figure 9'
  ];

  final image = [
    NetworkImage(
        'https://media.istockphoto.com/photos/drone-photo-of-the-early-summer-of-mt-shiude-famous-for-its-cherry-picture-id1316641330?k=20&m=1316641330&s=612x612&w=0&h=lVsQ7eELt889Be5BLwFQVDJMkFHLEaABax9iKq_Eukc='),
    NetworkImage(
        'https://upload.wikimedia.org/wikipedia/th/thumb/7/7a/Manchester_United_FC_crest.svg/640px-Manchester_United_FC_crest.svg.png'),
    NetworkImage(
        "https://cdn.pixabay.com/photo/2021/08/25/07/21/cat-6572630__340.jpg"),
    NetworkImage(
        "https://cdn.pixabay.com/photo/2019/11/11/04/33/elephant-4617134__340.jpg"),
    NetworkImage(
        "https://cdn.pixabay.com/photo/2022/07/31/20/32/volkswagen-7356817_960_720.jpg"),
    NetworkImage(
        "https://cdn.pixabay.com/photo/2015/05/07/11/02/guitar-756326_960_720.jpg"),
    NetworkImage(
        "https://cdn.pixabay.com/photo/2015/01/20/12/51/mobile-605422_960_720.jpg"),
    NetworkImage(
        "https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324_960_720.jpg"),
    NetworkImage(
        "https://cdn.pixabay.com/photo/2017/09/23/11/22/uss-harry-s-2778528_960_720.jpg"),
  ];
  final subtitle = [
    'Mountain',
    'Manchester United',
    'Cat',
    'Elephant',
    'Van',
    'Meadow',
    'Earphones',
    'Phone',
    'Aircraft carrier'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView3'),
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading:
                    CircleAvatar(backgroundImage: image[index], radius: 30),
                title: Text(
                  '${titles[index]}',
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(
                  Icons.notifications_none,
                  size: 25,
                ),
                subtitle: Text(
                  '${subtitle[index]}',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: (){
                  BuildContext dialogContext;
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        dialogContext=context;
                        return AlertDialog(
                          title: Text('สวัสดีจ้า!!!'),
                          content: Text(' ${subtitle[index]}'),
                          actions: [
                            ElevatedButton(
                              onPressed:() {
                                Navigator.pop(context);
                              },
                              child: Text('CANCEL'),
                            ),
                            ElevatedButton(
                              onPressed:() {
                                Navigator.pop(context);
                              },
                              child: Text('ACCEPT'),
                            ),
                          ],
                        );
                  });
                },
              ),
              Divider(
                thickness: 1,
              ),
            ],
          );
        },
      ),
    );
  }
}
