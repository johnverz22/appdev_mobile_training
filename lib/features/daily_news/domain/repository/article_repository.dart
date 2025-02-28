import 'package:flutter_training/core/resources/data_state.dart';
import 'package:flutter_training/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
