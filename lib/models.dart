class Meals {
  final String mealImage;
  final String mealName;
  final String mealID;

  Meals(this.mealID, this.mealName, this.mealImage);

  @override
  String toString(){
    return 'Meal {id:$mealID name:$mealName image:$mealImage}';
  }
}