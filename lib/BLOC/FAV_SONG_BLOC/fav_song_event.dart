part of 'fav_song_bloc.dart';

abstract class FavSongEvent extends Equatable {
  const FavSongEvent();
}


class FavSongLoadingEvent extends FavSongEvent{
  @override

  List<Object?> get props => [];
}


class FavSongLoadedEvent extends FavSongEvent{

  List favSongList;
  FavSongLoadedEvent({required this.favSongList});

  @override
  // TODO: implement props
  List<Object?> get props => [favSongList];
}