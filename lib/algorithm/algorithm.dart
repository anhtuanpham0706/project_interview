

List<int> list1 = [1,3,5,7,9];

List<int> list2 = [2,3,6,8,10];

List<int> list3 = [11,20,25,15,40];


void findMinMax(List<int> list) {
  int min = 0;
  int max = 0;
  // Sorts array if not already sorted
  list.sort();

  // min is the sum of the first 4 elements
  min = list.sublist(0,4).reduce((a, b) => a +b);

  // max is the sum of the end 4 elements
  max = list.sublist(1,5).reduce((a, b) => a +b);

  print("min = ${min} \n max = ${max}");

}


//result if using list1
// min = 16
// max = 24


//result if using list2
// min = 19
// max = 27

//result if using list3
// min = 71
// max = 100