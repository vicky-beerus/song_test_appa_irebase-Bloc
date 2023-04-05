import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


import '../../MODEL/song_model.dart';
import '../../REPOSITORY/song_repository.dart';

part 'song_event.dart';
part 'song_state.dart';

class SongBloc extends Bloc<SongEvent, SongState> {

  final SongRepository songRepository;

  SongBloc({required this.songRepository}) : super(SongLoding()) {
on(_onGetSong);
  }


 _onGetSong(event,emit)async{
emit(SongLoding());

try{
  print("on Get song in bloc");
  final songs =  await songRepository.steamGetSong();
  emit(SongLoaded(songData: songs));
}catch(e){
  // throw Exception("from onget bloc song \n er :$e");
  emit(SongError(er_msg: "from onget bloc song \n er :$e"));
}


  }
}
