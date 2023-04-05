import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../BLOC/FAV_SONG_BLOC/fav_song_bloc.dart';
import '../../BLOC/SONG_BLOC/song_bloc.dart';
import '../../MODEL/song_model.dart';
import '../../REPOSITORY/song_repository.dart';

class FavSongPage extends StatelessWidget {
  const FavSongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
   return BlocProvider(
      create: (context) => FavSongBloc(songRepository: RepositoryProvider.of<SongRepository>(context))..add(FavSongLoadingEvent()),
      child: Scaffold(

        body: BlocBuilder<FavSongBloc, FavSongState>(
          builder: (context, state) {

            if(state is FavSongLoading){
              return Container(
                child: Center(child: CircularProgressIndicator(),),
              );
            }else if(state is FavSongError){
              return Container(
                child: Center(child: Text("${state.er_msg}"),),
              );
            }else if (state is FavSongLoaded){
              return StreamBuilder<List<SongModel>>(
                  stream: RepositoryProvider.of<SongRepository>(context).steamGetFavSong(),
                  builder: (context, snapshot) {


                    return snapshot.hasData ?Container(
                      height: h,
                      width: w,
                      child: snapshot.data?.length == 0 ?Center(child: Text("No Favorite Songs"),): ListView.builder(itemCount: snapshot.data?.length,itemBuilder: (BuildContext context, int index){

                        return Card(
                          child: Container(
                            height: h*0.1,
                            width: w,

                            // child: Text("${snapshot.data![index].songName}
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Container(
                                  height: h*0.1,
                                  alignment: Alignment.centerLeft,
                                  width: w*0.7,child: Text("Song title: ${snapshot.data![index].songName}",style: TextStyle(fontSize: 15),),),
                                // InkWell(
                                //   onTap: (){
                                //     RepositoryProvider.of<SongRepository>(context).upDateSong(
                                //         songId: snapshot.data![index].songId,
                                //         val: snapshot.data![index].fav == true? false: true
                                //     );
                                //   },
                                //   // child: Container(
                                //   //   height: h*0.1,
                                //   //   width: w*0.1,
                                //   //   child:snapshot.data![index].fav == true?Icon(Icons.favorite,color: Colors.green,): Icon(Icons.favorite_border),
                                //   // ),
                                // )
                              ],
                            ),
                          ),
                        );
                      }),
                    ):Center(child: CircularProgressIndicator(),);
                  }
              );
            }
            return Container(
              child: Text("i am in view"),
            );



          },
        ),
      ),
    );
  }
}
