import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:oreflame/repository/authentication/login.dart';
import 'package:provider/provider.dart';

import '../../models/post.dart';
import '../../repository/test repo/fake_repo.dart';
import '../../repository/test repo/post_change_provider.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  /*init() async {
    print('help');
    postFuture = postService.getOnePost();
  }*/

  //Future<Post?> postFuture =await postService.getOnePost();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Error Handling',
          //style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: Column(
        children: [
        /*  Consumer<PostChangeNotifier>(
            builder: (_, notifier, __) {
              if (notifier.state == NotifierState.initial) {
                return const Text('Press the button 👇');
              } else if (notifier.state == NotifierState.loading) {
                return const CircularProgressIndicator();
              } else {
                return notifier.post.fold(
                  (failure) => Text(failure.toString()),
                  (post) => Text(post.toString()),
                );
                *//* if (notifier.failure != null) {
                  return Text(notifier.failure.toString());
                } else {
                  return Text(notifier.post.toString());
                }*//*
              }
            },
          ),*/
          ElevatedButton(
            child: const Text('Get Post'),
            onPressed: () async {


             /* try {
                final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: 'asdfg@hotmail.com',
                  password: 'password1234',
                );
                print('aaaaaaaaaa successs ');
              } on FirebaseAuthException catch (e) {
                if (e.code == 'weak-password') {
                  print('The password provided is too weak.');
                } else if (e.code == 'email-already-in-use') {
                  print('The account already exists for that email.');
                }
              } catch (e) {
                print(e);
              }*/

              AuthFire.signup();
              //  Provider.of<PostChangeNotifier>(context,listen: false).getOnePost();
            },
          ),
        ],
      ),
    );
  }
}
