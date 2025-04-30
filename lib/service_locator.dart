import 'package:get_it/get_it.dart';
import 'package:spotipyt/data/repository/auth/auth_repository_impl.dart';
import 'package:spotipyt/data/sources/auth/auth_firebase_service.dart';
import 'package:spotipyt/domain/repository/auth/auth.dart';
import 'package:spotipyt/domain/usecases/auth/signup.dart';
import 'package:spotipyt/domain/usecases/song/get_news_songs.dart';

import 'data/repository/song/song_repository_impl.dart';
import 'data/sources/song/song_firebase_service.dart';
import 'domain/repository/song/song.dart';
import 'domain/usecases/auth/sigin.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  sl.registerSingleton<SongFireBaseService>(SongFirebaseServiceImpl());

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<SongsRepository>(SongRepositoryImpl());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());

  sl.registerSingleton<SigninUseCase>(SigninUseCase());

  sl.registerSingleton<GetNewsSongsUseCase>(GetNewsSongsUseCase());
}
