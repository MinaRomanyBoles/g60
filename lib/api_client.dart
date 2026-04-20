import 'package:dio/dio.dart';
import 'package:untitled60/post_model.dart';

abstract class ApiClient {
  static final _dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      connectTimeout: Duration(seconds: 3),
      receiveTimeout: Duration(seconds: 3),
    ),
  );

  static Future<List<Post>> getAllPosts() async{
    try{
     var response = await _dio.get('/posts');
     List<dynamic> data =response.data;
     return data.map<Post>((postData) => Post.fromJson(postData)).toList();
    }catch(e){
      throw Exception('Error fetching posts: $e');
    }
  }
  static Future<Post> getAppPostById({required int postId}) async{
    try{
      var response = await _dio.get('/posts/$postId');
      return Post.fromJson(response.data);
    }catch(e){
      throw Exception('Error fetching post: $e');
    }


  }
  static Future<Post> createPost({required Post post}) async{
    try{
      var response = await _dio.post('/posts', data: post.toJson());
      return Post.fromJson(response.data);
    } catch(e){
      throw Exception('Error creating post: $e');
    }

  }
  static Future<Post> updatePost({required int postId, required Post post}) async{
    try{
      var response = await _dio.put('/posts/$postId', data: post.toJson());
      return Post.fromJson(response.data);
    }catch(e){
      throw Exception('Error updating post: $e');
    }
  }
  static Future<void> deletePost({required int postId}) async{
    try{
      await _dio.delete('/posts/$postId');
    }catch(e){
      throw Exception('Error deleting post: $e');
    }
  }
}
  // patchPost();
