import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../REPOSITORY/song_repository.dart';
import '../home_main_view.dart';



class AddSongPage extends StatefulWidget {
  const AddSongPage({Key? key}) : super(key: key);

  @override
  State<AddSongPage> createState() => _AddSongPageState();
}

class _AddSongPageState extends State<AddSongPage> {
  TextEditingController songTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {




    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeMainPage()));
        return Future.value(false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text("Add songs"),backgroundColor: Colors.black),
        body: Container(
          height: h,
          width: w,
          child: Column(
            children: [
              Container(
                height: h*0.1,
                width: w,
                alignment: Alignment.center,
                child: Container(
                  height: h*0.06,
                  width: w*0.9,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextFormField(
controller: songTitleController,
                    decoration: InputDecoration(
                      hintText: "Enter Song Title",
                      contentPadding: EdgeInsets.only(left: 10),
                      border: InputBorder.none
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomSheet: Container(
          height: h*0.1,
          width: w,
          color: Colors.transparent,
          alignment: Alignment.center,
          child: InkWell(
            onTap: ()async{
              RepositoryProvider.of<SongRepository>(context).addSong(givenSongName: "${songTitleController.text}");
              await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeMainPage()));
            },
            child: Container(
              height: h*0.06,
              width: w*0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black
              ),
              alignment: Alignment.center,
              child: Text("ADD",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600),),
            ),
          ),
        ),
      ),
    );
  }
}
