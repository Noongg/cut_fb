import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter2/page/status_page.dart';
import 'package:test_flutter2/page/profile_page.dart';
class HomePageStatus extends StatelessWidget {
  const HomePageStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, ProfilePage.routeName);
                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://scontent.fhan5-3.fna.fbcdn.net/v/t1.6435-9/123009199_1288794368122642_7219690245840446753_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=_kxpuYCPOXcAX-XnvLm&_nc_ht=scontent.fhan5-3.fna&oh=a9854f383c6ea6018f4cad3b0b3c4f71&oe=61A7ACDE'),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 10),),
                    Expanded(child:
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, StatusPage.routeName);
                        },
                        child: Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black45),
                          ),
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Bạn đang nghĩ gì?',style: TextStyle(fontSize: 16),),
                          height: 35,
                        ),
                      ),),
                  ],
                ),
              )),
            ],
          ),
          Row(
            children: [
              Expanded(child: Container(
                decoration: const BoxDecoration(
                    border: Border(top: BorderSide(
                      width: 1,
                      color: Colors.black45,
                    ))
                ),
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: const [
                          Icon(Icons.accessible),
                          Padding(padding: EdgeInsets.only(right:10)),
                          Text("Phát trực\ntiếp",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),
                            textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(decoration: BoxDecoration(
                        border: Border(right: BorderSide(width: 1,color: Colors.black45))
                    ),child: Text(''),),
                    Container(
                      child: Row(
                        children: const [
                          Icon(Icons.accessible_forward),
                          Padding(padding: EdgeInsets.only(right:5)),
                          Text("Ảnh",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),
                            textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(decoration: BoxDecoration(
                        border: Border(right: BorderSide(width: 1,color: Colors.black45))
                    ),child: Text(''),),
                    Container(
                      child: Row(
                        children: const [
                          Icon(Icons.account_balance),
                          Padding(padding: EdgeInsets.only(right:10)),
                          Text("Phòng họp\nmặt",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),
                          textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ],
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}

