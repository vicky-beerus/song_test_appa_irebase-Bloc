part of 'fav_song_bloc.dart';

abstract class FavSongState extends Equatable {
  const FavSongState();
}

class FavSongInitial extends FavSongState {
  @override
  List<Object> get props => [];
}


class FavSongLoading extends FavSongState{

  @override

  List<Object?> get props =>[];
}

class FavSongLoaded extends FavSongState{

 Stream <List<SongModel>> favSongLIst;

 FavSongLoaded({required this.favSongLIst});

  @override

  List<Object?> get props => [favSongLIst];
}


class FavSongError extends FavSongState{

  String er_msg;
  FavSongError({required this.er_msg});


  @override

  List<Object?> get props =>[er_msg] ;
}
