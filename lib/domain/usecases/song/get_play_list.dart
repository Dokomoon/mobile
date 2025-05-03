import 'package:dartz/dartz.dart';
import 'package:spotipyt/core/usecase/usecase.dart';
import 'package:spotipyt/data/repository/song/song_repository_impl.dart';
import 'package:spotipyt/service_locator.dart';

class GetPlayListUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<SongRepositoryImpl>().getPlayList();
  }
}
