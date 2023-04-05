import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../MODEL/song_model.dart';
import '../../REPOSITORY/song_repository.dart';

part 'fav_song_event.dart';
part 'fav_song_state.dart';

class FavSongBloc extends Bloc<FavSongEvent, FavSongState> {
  final SongRepository songRepository;

  FavSongBloc({required this.songRepository}) : super(FavSongInitial()) {
    on(onGetFavsong);
  }

  onGetFavsong(event, emit) {
    emit(FavSongLoading());
    try {
      final favSong = songRepository.steamGetFavSong();
      emit(FavSongLoaded(favSongLIst: favSong));
    } catch (e) {
      emit(FavSongError(er_msg: "er from bloc $e"));
    }
  }
}
