class SongModel{
  String? songName;
  bool? fav;
  String? songId;

  SongModel({this.songName, this.fav,this.songId});


  factory SongModel.fromJson(Map<String,dynamic> json){
    return SongModel(
      fav: json["fav"],
      songName: json["song_name"],
      songId: json["song_id"]

    );

  }

}