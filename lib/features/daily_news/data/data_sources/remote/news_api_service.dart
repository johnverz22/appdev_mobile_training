import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_training/core/constants/constants.dart';
import 'package:flutter_training/features/daily_news/data/models/article.dart';
import 'package:retrofit/http.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseURL)
class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;
  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query('apiKey') String? apiKey,
    @Query('country') String? country,
    @Query('category') String? category,
  }) {}
}

//to generate code run
//flutter pub run build_runner build --delete-conflicting-outputs
