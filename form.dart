import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './lista.dart';
import './data.dart';
import 'package:image_picker/image_picker.dart';

class FormComponent extends StatefulWidget {
  @override

  _FormComponentState createState() => _FormComponentState();
}

class _FormComponentState extends State<FormComponent> {

  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();

  final _registrationController = TextEditingController();

  final _schoolController = TextEditingController();

  final _periodController = TextEditingController();

  File? _selectedImage;

  @override

  void dispose() {
    _nameController.dispose();
    _registrationController.dispose();
    _schoolController.dispose();
    _periodController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {

    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _selectedImage = File(pickedImage.path);
      }
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
        title: Text('Usuário:'),
      ),

      body: Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
            
        children: [
          TextFormField(

            controller: _nameController,
            decoration: InputDecoration(labelText: 'Nome:'),
            validator: (value) {

              if (value == null || value.isEmpty) {

                return 'Digite um nome:';
                }
                return null;
                },
              ),

           TextFormField(
              controller: _registrationController,
              decoration: InputDecoration(labelText: 'Matrícula:'),
              keyboardType: TextInputType.number,
              inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ],

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite uma matrícula';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _schoolController,
                decoration: InputDecoration(labelText: 'Instituição:'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite sua instituição:';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _periodController,
                decoration: InputDecoration(labelText: 'Período'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, digite o período';
                  }
                  return null;
                },
              ),
          
              ElevatedButton(
                onPressed: _pickImage,
                child: Text('Selecionar Imagem'),
              ),

              if (_selectedImage != null) ...[
                SizedBox(height: 13.0),
                Image.network(
                  _selectedImage!.path,
                  height: 160,
                ),
              ],
            
              ElevatedButton(
                child: Text('Cadastro'),
                onPressed: () {

               if (_formKey.currentState!.validate()) {
                  final userData =
                      Provider.of<UserData>(context, listen: false);

                final user = {
                    'name': _nameController.text,
                    'registration': int.parse(_registrationController.text),
                    'school': _schoolController.text,
                    'period': _periodController.text,
                    'imagePath':
                          _selectedImage != null ? _selectedImage!.path : null,
                    };

                    data.addUser(user);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserListComponent(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
