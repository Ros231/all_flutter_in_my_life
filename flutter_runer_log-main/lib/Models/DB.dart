
class RunLog {

  String? id;
  String runWhere;
  String runPerson;
  int runDistance;

  RunLog({
    this.id,
    required this.runWhere,
    required this.runPerson,
    required this.runDistance,
  });

  factory RunLog.fromJson(Map<String, dynamic> json) {
    return RunLog(
      id: json['id'],
      runWhere: json['runWhere'],
      runPerson: json['runPerson'],
      runDistance: (json['runDistance']as num).toInt(),  
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'runWhere': runWhere,
      'runPerson': runPerson,
      'runDistance': runDistance,
    };
  }

}