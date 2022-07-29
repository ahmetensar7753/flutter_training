import 'package:flutter/material.dart';

class DrawerKullanimi extends StatelessWidget {
  const DrawerKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://bilimvegelecek.com.tr/wp-content/uploads/2018/01/yazilim-bilisim-kodlama-1.jpg'),
                ),
              ),
              accountName: Text('Ahmet Ensar Beşir'),
              accountEmail: Text('ensarbesir7753@gmail.com'),
              /* currentAccountPicture: Image.network(
                  'https://bilimvegelecek.com.tr/wp-content/uploads/2018/01/yazilim-bilisim-kodlama-1.jpg'), //bu kısımda hesap resmi ekleniyor */
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text(
                    'AE',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.yellow,
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(
                    'B',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  const ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Ana Sayfa'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  const Divider(
                    color: Colors.black,
                    indent: 5,
                    endIndent: 5,
                    thickness: 2,
                  ),
                  const ListTile(
                    leading: Icon(Icons.call),
                    title: Text('Ara'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  const Divider(
                    color: Colors.black,
                    indent: 5,
                    endIndent: 5,
                    thickness: 2,
                  ),
                  const ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text('Profil'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  const Divider(
                    color: Colors.black,
                    indent: 5,
                    endIndent: 5,
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.cyan,
                    splashFactory: InkRipple.splashFactory,
                    child: const ListTile(
                      leading: Icon(Icons.account_box),
                      title: Text('deneme'),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  const AboutListTile(
                    applicationName: 'Drawer Kullanımı',
                    applicationIcon: Icon(Icons.list),
                    applicationVersion: '1.0',
                    applicationLegalese: 'BURASI',
                    icon: Icon(Icons.info),
                    aboutBoxChildren: [
                      Text('box Children-1'),
                      Text('box Children-2'),
                      Text('box Children-3'),
                    ],
                    child: Text('Child kısmı ABOUT US'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Drawer Kullanimi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text('Drawer Kullanımı Deneme'),
          ),
        ],
      ),
    );
  }
}
