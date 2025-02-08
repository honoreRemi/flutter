import 'package:flutter/material.dart';

/*class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _listdata = [];

  @override
  void initState() {
    super.initState();
    //TODO _getdata();
    print(_listdata);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accueil"),
      ),
      body: ListView.builder(
        itemCount: _listdata.length,
        itemBuilder: (context, index) {
          // TODO: retourner un widget pour chaque élément de la liste
          return Card(
            child: inkwell(
              onTap: (){
                Navigator.push(
                    context, 
                    MaterialPageRoute(
                        builder: (context) => EditDataPage(
                         ListData: {
                           "id":  _listdata[index]['id'],
                           "matricule":  _listdata[index]['matricule'],
                           "nom":  _listdata[index]['nom'],
                           "adresse":  _listdata[index]['adresse'],
                         },
                        ),
                ),
                );
              },
              child: listTitle(
                title: Text(_listdata[index]['nom']),
                subtitle: Text(_listdata[index]['adresse']),
                trailing: IconButton(
                    onPressed: (){
                      showDialog(
                          context: context,
                          builder: ((context){
                            return AlertDialog(
                              content: Text("Etes-vous sur de vouloir supprimer les données ${_listdata[index]['nom']} ?"),
                              actions: [
                                ElevatedButton(
                                    onPressed: (){
                                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: ((context) =>HomePage())), (route) => false);
                                    },
                                  child: Text("Oui")),
                                ElevatedButton(
                                    onPressed: (){
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("Non")),

                              ]
                            );
                          })
                      );
                    },
                  icon: const Icon(Icons.delete),
                )
              )
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddData()));
        },
        child: const Icon(Icons.add),
      )
    );
  }

  inkwell({required Null Function() onTap, required child}) {}

  listTitle({required Text title, required Text subtitle, required IconButton trailing}) {}
}

class AddData extends StatefulWidget{
  const AddData({Key? key});

  @override
  State<AddData> createState() => _AddDataSate();
}

class _AddDataSate extends State<AddData>{
  final formkey = GlobalKey<FormState>();
  TextEditingController matricule = TextEditingController();
  TextEditingController nom = TextEditingController();
  TextEditingController adresse = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajout des données"),
      ),
      body: Form(
        key: formkey,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            TextFormField(
              controller: matricule,
              decoration: const InputDecoration(
                labelText: "Matricule",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                )
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Le matricule ne peut pas etre vide";
                }
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: nom,
              decoration: const InputDecoration(
                labelText: "Nom",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                )
              ),
              validator: (value){
                if(value ==null || value.isEmpty){
                  return "Le nom ne peut pas etre vide";
                }
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: adresse,
              decoration: const InputDecoration(
                labelText: "adresse",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                )),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "L'adress ne peut pas etre vide";
                }
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
                onPressed:  (){
                  Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(builder: ((context)=>HomePage())), (route) => false);
                }, child: const Text("Ebregistrer"),
            )
          ],
          ),
        ),
      ),
    );
  }
}

class EditDataPage extends StatefulWidget{
  final Map ListData;
  const EditDataPage({Key? key, required this.ListData}) : super(key: key);

  @override
  State<EditDataPage> createState() => _EditDataPageState();
}

class _EditDataPageState extends  State<EditDataPage>{
  final formkey = GlobalKey<FormState>();
  TextEditingController id = TextEditingController();
  TextEditingController matricule = TextEditingController();
  TextEditingController nom = TextEditingController();
  TextEditingController adress = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mettre à jour"),
      ),
      body: Form(
        key: formkey,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            TextFormField(
              controller: matricule,
              decoration: const InputDecoration(
                labelText: "Matricule",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                )),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Le Matricule ne peut pas etre vide";
                }
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: adress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                )),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "L'adresse ne peut pas etre vide ";
                }
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(builder: ((context)=>HomePage())), (route) => false);
                }, child: const Text("Mettre a jour"),
            )
          ]),
        )),
    );
  }
}

class RegistrationPage extends StatefulWidget{
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage>{
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext, context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
      ),
      body: padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'MMot de passe'
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(builder: ((context)=>LoginPage())), (route) => false);
                }, child: const Text('S\'inscrire'),
            ),
          ],
        ),
      ),  //padding
    );
  }
}
*/