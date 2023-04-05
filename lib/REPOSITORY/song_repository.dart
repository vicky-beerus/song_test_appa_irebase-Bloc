import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../MODEL/song_model.dart';



class SongRepository{

  int index = 0;

  final fireCloud = FirebaseFirestore.instance.collection('songs').doc();


  Future addSong({givenSongName})async{
    final docSongs = FirebaseFirestore.instance.collection('songs').doc();
    try{
      await docSongs.set({"song_name":givenSongName,"artis_name":false ,"song_id":"${docSongs.id}"});
    }on FirebaseException catch(e){
      if(kDebugMode){
        print("failed with error { er:${e.code} ,msg:${e.message} }");
      }
    }catch (e){
      throw Exception(e.toString());
    }

  }

  chagneIndex({tabIndex}){
    index = tabIndex;
    return index;
  }



 getSongs()async{


//     List<SongModel> sList = [];
// print("get songs");
//     var getData = await FirebaseFirestore.instance.collection("songs").get();
//
//     print("get Data");
//     print(getData);
//
//     getData.docs.forEach((element) {
//       return sList.add(SongModel.fromJson(element.data()));
//     });
//     print(sList);
//     sList.forEach((element) { print(element);});

    try{

      // return [
      //   SongModel(songName: "s1",artistName: "a1")
      // ];
// return sList;
      return  FirebaseFirestore.instance.collection("songs").snapshots().map((snapshot) => snapshot.docs.map((e) => SongModel.fromJson(e.data()))).toList();
    }catch(e){

      throw Exception("er from getsongs ${e}");

    }

   }



  Stream<List<SongModel>> steamGetSong() {
    return FirebaseFirestore.instance.collection("songs").snapshots().map(
            (snapshots) =>
            snapshots.docs
                .map((e) => (SongModel.fromJson(e.data())))
                .toList());
  }
  Stream<List<SongModel>> steamGetFavSong() {
    return FirebaseFirestore.instance.collection("songs").where("fav",isEqualTo: true).snapshots().map(
            (snapshots) =>
            snapshots.docs
                .map((e) => (SongModel.fromJson(e.data())))
                .toList());
  }

upDateSong({songId,val}){
    return FirebaseFirestore.instance.collection("songs").doc(songId).update({
      "fav":val
    });
}


}
