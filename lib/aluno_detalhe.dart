import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "aluno.dart";

Class AlunoDetalhe extends StatefulWidget {
  final Aluno aluno;

  const AlunoDetalhe({
    Key? key,
    required this.aluno,

  }): super(key:key);



@override 
AlunoDetalheState createState(){
  return AlunoDetalheState();
}

}

Class AlunoDetalheState extends State<AlunoDetalhe>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.aluno.nome),
      ),
      body: SafeArea(child: Column(children:<Widget> [Text(widget.aluno.descricao),])),
    )
  }
}