// void main(){
//   var student={};
//   student['name']='Macharani R';
//   student['age']=20;
//   print(student);

//   print(student['name']);
//    print(student['age']);
// }

void main(){
  var student={
    'name': 'Macharani R',
    'age': 20,
    };
    print(student);

    for(var key in student.keys){
      print(student[key]);
    }
}