import 'package:flutter/material.dart';
import 'api_client.dart';
import 'edit_post_page.dart';
import 'post_model.dart';
class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      appBar: AppBar(
        title: Text('Posts Page'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
            future: ApiClient.getAllPosts(),
            builder: (context, snapshot){
              if (snapshot.connectionState == ConnectionState.waiting){
                return CircularProgressIndicator();
              }else{
                if(snapshot.hasData){
                  var posts = snapshot.data ?? <Post>[];
                  return DisplayPosts(posts: posts,);
                }else{
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(snapshot.hasError.toString(),style: Theme.of(context).textTheme.headlineMedium,),
                      Icon(Icons.error, size: 200, color: Colors.red,),
                    ],
                  );
                }
              }
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          try{
            var newPost = Post(
                userId: 1,
                id: 10,
                title: 'title 101',
                body: 'body'
            );

            var post = await ApiClient.createPost(post: newPost);
            print('✅✅✅ Post created successfully with ID: ${post.title}');
          }catch(e){
            print('❌❌❌ Error creating post: $e');
          }

        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class DisplayPosts extends StatelessWidget {
  const DisplayPosts({super.key, required this.posts});
  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context,index){
          return Card(
            elevation: 3,
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                ListTile(
                  leading: Text(posts[index].userId.toString(),),
                  title: Text(posts[index].title,style: Theme.of(context).textTheme.bodyLarge,),
                  subtitle: Text(posts[index].body,style: Theme.of(context).textTheme.bodyMedium,),
                  trailing: Text(posts[index].id.toString()),
                ),
                Divider(height: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditPost(post: posts[index])));
                      },
                      label: Text('Edit'),
                      icon: Icon(Icons.edit),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.amber,)
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: (){
                        try{
                          ApiClient.deletePost(postId: posts[index].id);
                          print('✅✅✅ Post deleted successfully with ID: ${posts[index].id}');
                        } catch(e){
                          print('❌❌❌ Error deleting post: $e');
                        }

                      },
                      label: Text('Delete'),
                      icon: Icon(Icons.delete),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.redAccent,)
                    ),
                    ),
                  ]
                )
              ],
            ),
          );
        }

    );
  }
}
