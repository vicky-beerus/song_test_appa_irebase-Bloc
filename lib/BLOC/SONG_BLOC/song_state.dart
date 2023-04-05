part of 'song_bloc.dart';

abstract class SongState extends Equatable {
  const SongState();
}

class SongInitial extends SongState {
  @override
  List<Object> get props => [];
}

class SongLoding extends SongState{
  @override

  List<Object?> get props => [];
}


class SongLoaded extends SongState{

  Stream<List<SongModel>> songData ;

  SongLoaded({required this.songData});

  @override

  List<Object?> get props => [songData];
}


class SongError extends SongState{

  String er_msg;


  SongError({required this.er_msg});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();



}

