import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}):super(key:key);
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final _suggestions = <WordPair>[];

  final _saved = new Set<WordPair>();

  final TextStyle _biggerFont = new TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Start Name Generator"),
      ),
      body: _buildSuggestions(),
    );
  }
  Widget _buildRow(WordPair pair){
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved? Colors.red : null,
      ),
      onTap: (){
        setState(() {
          if(alreadySaved){
            _saved.remove(pair);
          }else{
            _saved.add(pair);
          }
        });
      },
    );
  }

  Widget _buildSuggestions(){
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context,i){
        if(i.isOdd) return new Divider();
        final index = i~/2;
        if(index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }
}
