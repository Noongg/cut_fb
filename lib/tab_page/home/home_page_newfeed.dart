import 'package:flutter/material.dart';
class HomePageNewFeed extends StatefulWidget {
  const HomePageNewFeed({Key? key}) : super(key: key);

  @override
  _HomePageNewFeedState createState() => _HomePageNewFeedState();
}

class _HomePageNewFeedState extends State<HomePageNewFeed> {
  String mark='https://hieumobile.com/wp-content/uploads/tich-xanh.png';
  String public='https://www.clipartkey.com/mpngs/m/5-54073_globe-clipart-grey-facebook-public-icon-png.png';
  String friend='https://cdn-icons-png.flaticon.com/128/880/880594.png';
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: fakedata.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (content,index){
          return Container(
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children:[
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Expanded(child: CircleAvatar(backgroundImage: NetworkImage('${fakedata[index]['img']}'),),flex: 1,),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(child:
                              Row(children: [
                              Text('${fakedata[index]['name']}',
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                              '${fakedata[index]['mark']}'=='yes'?
                              Image.network(mark,height: 15,width: 15,):Text(""),
                            ],),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.menu),
                                Icon(Icons.delete)
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text('${fakedata[index]['postingtime']} gi??? . '),
                            '${fakedata[index]['permission']}'=='public'?
                            Image.network(public,height: 18,width: 18,):
                            Image.network(friend,height: 18,width: 18,)
                          ],
                        )
                      ],
                    ),flex: 9,),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                  child: Text('${fakedata[index]['Content']}',
                    style: TextStyle(fontSize: 18,color: Colors.black),maxLines: 3,
                  overflow: TextOverflow.ellipsis),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10,bottom: 15),
                  child: FadeInImage.assetNetwork(placeholder: 'assets/images/loading.gif', image: '${fakedata[index]['banner']}'),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage('https://image.similarpng.com/very-thumbnail/2020/06/Thumb-up-icon-like-transparent-PNG.png'),
                        ),
                        Text('${fakedata[index]['emotions']}')
                      ],
                    ),
                    Expanded(child:
                      Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('${fakedata[index]['cmt']} b??nh lu???n . ${fakedata[index]['share']} l?????t chia s???'),
                      ],
                    )),
                    Padding(padding: EdgeInsets.only(right: 10)),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border:Border.all(width: 0.5,color: Colors.black12)
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.emoji_emotions_outlined),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Text('Th??ch'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.messenger_outline),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Text('B??nh lu???n'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.share),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Text('Chia s???'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
  List<Map<String,dynamic>> fakedata=[
    {
      'img':'https://vcdn1-dulich.vnecdn.net/2021/04/02/trantuanviet-bavi-hanoi-1617326198.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ktcT9Y2ol0GS9x2oIjJaRw',
      'name':'Li??n Minh Huy???n Tho???i',
      'mark':'no',
      'postingtime':'19',
      'permission':'public',
      'Content':'Cu???c thi ???nh qu???c t??? l???n th??? 18 c???a t???p ch?? Smithsonian nh???n h??n 45.000 t??c ph???m c???a c??c t??c gi??? kh???p th??? gi???i. Ban gi??m kh???o ch???n ra 60 ???nh chung k???t thu???c 6 h???ng m???c v?? cho ?????c gi??? b??nh ch???n ?????n h???t ng??y 30/3. K???t qu??? cu???c thi ???? ???????c c??ng b??? v???i m???t gi???i ?????c bi???t, m???t gi???i ?????c gi??? b??nh ch???n v?? 6 t??c ph???m xu???t s???c nh???t c???a 6 h???ng m???c (Th??? gi???i t??? nhi??n, Con ng?????i, Du l???ch, Tr???i nghi???m M???, Di ?????ng v?? Nh???ng h??nh ???nh thay th???).',
      'banner':'https://i1-dulich.vnecdn.net/2021/04/02/into-the-crowd-1617326221.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=N-UTGl4AYUaRnpBB_296-w',
      'emotions':'707',
      'cmt':'108',
      'share':'2'
    },
    {
      'img':'https://vcdn1-dulich.vnecdn.net/2021/04/02/trantuanviet-bavi-hanoi-1617326198.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ktcT9Y2ol0GS9x2oIjJaRw',
      'name':'Kh??ng s??? ch??',
      'mark':'no',
      'postingtime':'19',
      'permission':'friend',
      'Content':'Cu???c thi ???nh qu???c t??? l???n th??? 18 c???a t???p ch?? Smithsonian nh???n h??n 45.000 t??c ph???m c???a c??c t??c gi??? kh???p th??? gi???i. Ban gi??m kh???o ch???n ra 60 ???nh chung k???t thu???c 6 h???ng m???c v?? cho ?????c gi??? b??nh ch???n ?????n h???t ng??y 30/3. K???t qu??? cu???c thi ???? ???????c c??ng b??? v???i m???t gi???i ?????c bi???t, m???t gi???i ?????c gi??? b??nh ch???n v?? 6 t??c ph???m xu???t s???c nh???t c???a 6 h???ng m???c (Th??? gi???i t??? nhi??n, Con ng?????i, Du l???ch, Tr???i nghi???m M???, Di ?????ng v?? Nh???ng h??nh ???nh thay th???).',
      'banner':'https://i1-dulich.vnecdn.net/2021/04/02/into-the-crowd-1617326221.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=N-UTGl4AYUaRnpBB_296-w',
      'emotions':'707',
      'cmt':'108',
      'share':'2'
    },
    {
      'img':'https://vcdn1-dulich.vnecdn.net/2021/04/02/trantuanviet-bavi-hanoi-1617326198.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ktcT9Y2ol0GS9x2oIjJaRw',
      'name':'Li??n Minh Huy???n Tho???i',
      'mark':'yes',
      'postingtime':'19',
      'permission':'public',
      'Content':'Cu???c thi ???nh qu???c t??? l???n th??? 18 c???a t???p ch?? Smithsonian nh???n h??n 45.000 t??c ph???m c???a c??c t??c gi??? kh???p th??? gi???i. Ban gi??m kh???o ch???n ra 60 ???nh chung k???t thu???c 6 h???ng m???c v?? cho ?????c gi??? b??nh ch???n ?????n h???t ng??y 30/3. K???t qu??? cu???c thi ???? ???????c c??ng b??? v???i m???t gi???i ?????c bi???t, m???t gi???i ?????c gi??? b??nh ch???n v?? 6 t??c ph???m xu???t s???c nh???t c???a 6 h???ng m???c (Th??? gi???i t??? nhi??n, Con ng?????i, Du l???ch, Tr???i nghi???m M???, Di ?????ng v?? Nh???ng h??nh ???nh thay th???).',
      'banner':'https://i1-dulich.vnecdn.net/2021/04/02/into-the-crowd-1617326221.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=N-UTGl4AYUaRnpBB_296-w',
      'emotions':'707',
      'cmt':'108',
      'share':'2'
    },
    {
      'img':'https://vcdn1-dulich.vnecdn.net/2021/04/02/trantuanviet-bavi-hanoi-1617326198.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ktcT9Y2ol0GS9x2oIjJaRw',
      'name':'Li??n Minh Huy???n Tho???i',
      'mark':'yes',
      'postingtime':'19',
      'permission':'friend',
      'Content':'Cu???c thi ???nh qu???c t??? l???n th??? 18 c???a t???p ch?? Smithsonian nh???n h??n 45.000 t??c ph???m c???a c??c t??c gi??? kh???p th??? gi???i. Ban gi??m kh???o ch???n ra 60 ???nh chung k???t thu???c 6 h???ng m???c v?? cho ?????c gi??? b??nh ch???n ?????n h???t ng??y 30/3. K???t qu??? cu???c thi ???? ???????c c??ng b??? v???i m???t gi???i ?????c bi???t, m???t gi???i ?????c gi??? b??nh ch???n v?? 6 t??c ph???m xu???t s???c nh???t c???a 6 h???ng m???c (Th??? gi???i t??? nhi??n, Con ng?????i, Du l???ch, Tr???i nghi???m M???, Di ?????ng v?? Nh???ng h??nh ???nh thay th???).',
      'banner':'https://i1-dulich.vnecdn.net/2021/04/02/into-the-crowd-1617326221.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=N-UTGl4AYUaRnpBB_296-w',
      'emotions':'707',
      'cmt':'108',
      'share':'2'
    }
  ];
}
