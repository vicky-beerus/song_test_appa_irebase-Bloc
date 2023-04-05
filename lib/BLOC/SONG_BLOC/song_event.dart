part of 'song_bloc.dart';

abstract class SongEvent extends Equatable {
  const SongEvent();
}


// class AddSongEvent extends SongEvent{
// final String song_name;
// final String artist_name;
//
// AddSongEvent({required this.song_name, required this.artist_name});
//
//   @override
//   // TODO: implement props
//   List<Object?> get props => [song_name,artist_name];
//
//
// }


class GetSongEvent extends SongEvent{
  List songData;

  GetSongEvent({required this.songData});

  @override
  // TODO: implement props
  List<Object?> get props => [songData];


}



class SongLoadingEvent extends SongEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}