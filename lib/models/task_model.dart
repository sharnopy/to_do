class TaskModel{
  String title;
  String id;
  String description;
  bool isDone;
  int date;

  TaskModel({ required this.title,
    this.id="",
    required this.description,
    this.isDone=false,
   required this.date});

  TaskModel.fromJson(Map<String,dynamic>json):this(
    date: json['date'],
    isDone: json['isDone'],
    description: json['description'],
    title: json['title'],
    id: json['id'],


  );
  Map<String,dynamic>toJson(){
    return {
      "id":id,
      "title":title,
      "description":description,
      "isDone" : isDone,
      "date":date,
    };
  }

  }

