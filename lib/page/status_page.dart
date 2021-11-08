import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);
  static const String routeName='/StatusPage';


  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  late TextEditingController textEditingController;
  bool isButtonActive =false;
  late ScrollController scrollController;
  final panelController = PanelController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.offset >=
          scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        panelController.show();
      } else if (scrollController.offset <=
          scrollController.position.minScrollExtent &&
          !scrollController.position.outOfRange) {
        panelController.close();
      } else {}
    });
    textEditingController=TextEditingController();
    textEditingController.addListener(() {
      final isButtonActive=textEditingController.text.isNotEmpty;
      setState(()=>this.isButtonActive=isButtonActive);
    });
    WidgetsBinding.instance
        ?.addPostFrameCallback((_){
      panelController.open();
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textEditingController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Text('Tạo bài viết',style: TextStyle(color: Colors.black),),
          backgroundColor:Colors.white,
          actions: [
            ElevatedButton(
                onPressed: isButtonActive?(){
                  setState(() =>isButtonActive=false);
                  textEditingController.clear();
                }:null,
                style: ElevatedButton.styleFrom(
                  onSurface: Colors.black,
                ),
                child: Text('ĐĂNG'))
          ],
        ),
        body: SlidingUpPanel(
          boxShadow: [],
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                Expanded(child: Container(
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundImage:
                        NetworkImage('https://scontent.fhan5-3.fna.fbcdn.net/v/t1.6435-9/123009199_1288794368122642_7219690245840446753_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=_kxpuYCPOXcAX-XnvLm&_nc_ht=scontent.fhan5-3.fna&oh=a9854f383c6ea6018f4cad3b0b3c4f71&oe=61A7ACDE'),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Long Long',
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Padding(padding: EdgeInsets.only(bottom: 6)),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54,width: 0.8),
                                    borderRadius: BorderRadius.circular(6)
                                ),
                                width: 120,
                                height: 30,
                                child: Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 5)),
                                    Icon(Icons.lock,color: Colors.black54,size: 16,),
                                    Padding(padding: EdgeInsets.only(left: 5)),
                                    Text('Công khai',
                                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
                                    Icon(Icons.arrow_drop_down,color: Colors.black54,),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54,width: 0.8),
                                    borderRadius: BorderRadius.circular(6)
                                ),
                                width: 100,
                                height: 30,
                                child: Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 5)),
                                    Icon(Icons.exposure_plus_1,color: Colors.black54,size: 16,),
                                    Padding(padding: EdgeInsets.only(left: 5)),
                                    Text('Album',
                                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
                                    Icon(Icons.arrow_drop_down,color: Colors.black54,),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),flex: 0,),
                Padding(padding: EdgeInsets.only(top: 10)),
                Expanded(child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    onTap: (){
                      panelController.close();
                    },
                    controller: textEditingController,
                    decoration: new InputDecoration.collapsed(
                        hintText: 'Bạn đang nghĩ gì',
                        hintStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w300)
                    ),
                    style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w300),
                    cursorColor: Colors.black,

                  ),
                ),flex: 6,),
                Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.image),),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.people),),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.emoji_emotions),),
                    IconButton(
                      onPressed: (){
                      },
                      icon: Icon(Icons.my_location),),
                    IconButton(
                      onPressed: ()=>panelController.open(),
                      icon: Icon(Icons.menu),),
                  ],
                ),flex: 3,),
                Padding(padding: EdgeInsets.only(bottom: 10)),
              ],
            ),
          ),
          panel: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(-4,-4),
                    )
                  ]
                ),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.image),),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.people),),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.emoji_emotions),),
                      IconButton(
                        onPressed: (){
                        },
                        icon: Icon(Icons.my_location),),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.menu),),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.image),),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.people),),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.emoji_emotions),),
                      IconButton(
                        onPressed: (){
                        },
                        icon: Icon(Icons.my_location),),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.menu),),
                    ],
                  ),
                ),
              )
            ],
          ),
          controller: panelController,
          backdropEnabled: false,
          minHeight: 10,
        ),
      ),
    );
  }

}


