import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';

  // form create krne ke liye 
  // ek key use krte h 

  final _formKey = GlobalKey<FormState>();

  // functions 
  trysubmit(){
    final isvalid = _formKey.currentState!.validate();
    if(isvalid){
      _formKey.currentState!.save();
      submitform();
    }
    else{
      print("Error");
    }
  }

  submitform(){
    print('firstname');
    print('lastname');
    print('email');
    print('password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('form banega'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    
                    hintText: 'Enter First Name',
                  ),
                  key: const ValueKey('firstname'),
                  validator: (value){
                    if(value.toString().isEmpty){
                      return 'First Name cant be empty';
                    }
                    else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    firstName = value.toString();
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter Last Name',
                  ),
                  // key: const ValueKey('lastname'),
                  // validator: (value){
                  //   if(value.toString().isEmpty){
                  //     return 'Last Name cant be empty';
                  //   }
                  //   else{
                  //     return null;
                  //   }
                  // },
                  onSaved: (value){
                    lastName = value.toString();
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter E-mail',
                  ),
                  key: const ValueKey('email'),
                  validator: (value){
                    if(value.toString().isEmpty){
                      return 'E-mail cant be empty';
                    }
                    else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    email = value.toString();
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter password',
                  ),
                  key: const ValueKey('password'),
                  validator: (value){
                    if(value.toString().length<=5){
                      return 'not a strong password';
                    }
                    else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    password = value.toString();
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(onPressed: (){
                  trysubmit();
                }, child: Text('Submit Form')),
              ],
          )),
        ),
      ),
    );
  }
}

