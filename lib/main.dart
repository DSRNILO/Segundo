import 'package:flutter/material.dart';
import 'aluno.dart';
import 'aluno_detalhe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Tropa do Gordão'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  Widget buildAlunoCard(Aluno aluno) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.network(aluno.urlImage),
            Text(aluno.nome,
                style: TextStyle(
                    fontFamily: 'ClimateCrisis',
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            Text(
              aluno.descricao,
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Aluno.exemplos.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Text("detalhes Aluno");
                      },
                    ),
                  );
                },
                child: buildAlunoCard(Aluno.exemplos[index]));
          },
        ),
      ),
    );
  }
}

/*class MyHomePageState extends State<MyHomePage>{
  @override
  Widget Build(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
          MaterialPageRoute(
            builder:(context){
            return Text("detalhes Aluno");
            }, 
          ),
        );
        
      },
      return buildAlunoCard(Aluno.exemplos[index]);
    );
  }
}*/
