import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/useCase/base_usecase.dart';
import 'package:movies_app/movies/domain/Repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/entities/movies.dart';

class GetPopularMoviesUseCase extends BaseUsecase<List<Movies>, NoParameters>{
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  Future<Either<Failure, List<Movies>>> call(NoParameters parameters)async{
    return await baseMoviesRepository.getPopularMovies();
  }
}