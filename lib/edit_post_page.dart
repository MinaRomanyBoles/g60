import 'package:flutter/material.dart';
import 'package:untitled60/api_client.dart';
import 'package:untitled60/post_model.dart';

class EditPost extends StatefulWidget {
  const EditPost({super.key, required this.post});
  final Post post;

  @override
  State<EditPost> createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {
  var title = TextEditingController(),
      body = TextEditingController();

  @override
  void initState() {
    super.initState();
    title.text = widget.post.title;
    body.text = widget.post.body;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Edit Post Page'),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: title,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: body,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Body',
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text('Go Back')
                ),
                ElevatedButton(
                    onPressed: () async{
                      try{
                        var newPost = Post(
                            userId: widget.post.userId,
                            id: widget.post.id,
                            title: title.text,
                            body: body.text
                        );
                        var updatedPost = await ApiClient.updatePost(postId: widget.post.id, post: newPost);
                        print('✅✅✅ Post updated successfully with ID: ${updatedPost.toJson()}');
                      }catch (e){
                        print('❌❌❌ Error updating post: $e');
                      }
                    },
                    child: Text('Save')
                ),
              ],
            )
          ]
        ),
      ),
    );
  }
}
