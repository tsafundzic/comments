import 'package:data/comments/remote/comment_remote_data_source.dart';
import 'package:data/comments/remote/model/comment_dto.dart';
import 'package:data/common/dio_error.dart';
import 'package:dio/dio.dart';

class CommentRemoteDataSourceImpl extends CommentRemoteDataSource {
  final Dio _dio;

  CommentRemoteDataSourceImpl(this._dio);

  @override
  Future<List<CommentDTO>> fetchComments(int start, int limit) {
    return _dio.get('/comments?_start=$start&_limit=$limit').then((response) {
      List<CommentDTO> list = List<CommentDTO>.from(response.data.map((commentDTO) => CommentDTO.fromJson(commentDTO)));
      return list;
    }).catchError((onError) {
      if (onError is DioError) {
        resolveDioError(onError);
      }
      throw onError;
    });
  }
}
