import 'package:flutter/material.dart';
class HomePageStory extends StatefulWidget {
  const HomePageStory({Key? key}) : super(key: key);

  @override
  _HomePageStoryState createState() => _HomePageStoryState();
}

class _HomePageStoryState extends State<HomePageStory> {
  String img='https://scontent.fhan5-3.fna.fbcdn.net/v/t1.6435-9/123009199_1288794368122642_7219690245840446753_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=_kxpuYCPOXcAX-XnvLm&_nc_ht=scontent.fhan5-3.fna&oh=a9854f383c6ea6018f4cad3b0b3c4f71&oe=61A7ACDE';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 10),
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.greenAccent,
                    Colors.blue
                  ]
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(right: 8,left: 10),
            width: 120.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://png.pngtree.com/png-vector/20190927/ourlarge/pngtree-musical-note-icon-png-image_1748676.jpg'),),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text('Âm nhạc',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(right: 8),
            width: 120.0,
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(img),
                              fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),topRight: Radius.circular(15))
                      ),
                    ),flex: 7,),
                    Expanded(child: Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text('Tạo tin',style: TextStyle(fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.only(
                              bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                      ),
                    ),flex: 3,),
                  ],
                ),
                Positioned(top: 130,left: 40,child: CircleAvatar(backgroundColor: Colors.grey.shade100,backgroundImage: NetworkImage('https://icon-library.com/images/create-icon-png/create-icon-png-8.jpg'),),),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: dummyData.length,
            itemBuilder: (context,index){
              return Container(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(dummyData[index]['thumbnail']),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(13)
                  ),
                  margin: EdgeInsets.only(right: 8),
                  width: 120.0,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 10,
                          left: 10,
                          child: CircleAvatar(backgroundImage:NetworkImage('${dummyData[index]['avt']}'),))
                    ],
                  ),
                ),
              );
            },
            scrollDirection: Axis.horizontal,
          )
        ],
      )
    );
  }
  List<Map<String, dynamic>> dummyData = [
    {
      "avt":'https://cdn.nguyenkimmall.com/images/detailed/555/may-anh-cho-nguoi-moi.jpg',
      "thumbnail":"https://img.nhandan.com.vn/Files/Images/2020/07/26/nhat_cay-1595747664059.jpg",
    },{
      "avt":'https://1.bp.blogspot.com/-1F0txd6CTXk/XyjEn1_2atI/AAAAAAAAiX0/2X1yKYprbxEAPvrNA4VoX_nuv8nawCSuQCNcBGAsYHQ/d/a5a84b393a0778e047f87c79478481e7.jpg',
      "thumbnail":"https://d25tv1xepz39hi.cloudfront.net/2016-01-31/files/1045.jpg",
    },{
      "avt":'https://photographer.vn/wp-content/uploads/2016/10/goi-y-nhung-dia-diem-chup-anh-dep-vao-thang-10.jpg',
      "thumbnail":"https://cellphones.com.vn/sforum/wp-content/uploads/2018/11/3-8.png",
    },{
      "avt":'https://cdn.nguyenkimmall.com/images/detailed/555/may-anh-cho-nguoi-moi.jpg',
      "thumbnail":"https://img.nhandan.com.vn/Files/Images/2020/07/26/nhat_cay-1595747664059.jpg",
    },{
      "avt":'https://cdn.nguyenkimmall.com/images/detailed/555/may-anh-cho-nguoi-moi.jpg',
      "thumbnail":"https://img.nhandan.com.vn/Files/Images/2020/07/26/nhat_cay-1595747664059.jpg",
    },{
      "avt":'https://cdn.nguyenkimmall.com/images/detailed/555/may-anh-cho-nguoi-moi.jpg',
      "thumbnail":"https://img.nhandan.com.vn/Files/Images/2020/07/26/nhat_cay-1595747664059.jpg",
    }
  ];

}
