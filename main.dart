import 'dart:math';

void main() {
  print('---------------------------------------');
  print('필수 문제 1번');

  int myScore = 84;
  String grade; // (= '') 생략

  if (myScore >= 90) {
    grade = 'A등급';
  } else if (myScore >= 80) {
    grade = 'B등급';
  } else {
    grade = 'C등급';
  }

  print('이 학생의 점수는 $myScore점 이며, 등급은 $grade입니다!');

  print('---------------------------------------');

  print('필수 문제 2번');

  List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

  Map<String, int> prices = {'티셔츠': 10000, '바지': 8000, '모자': 4000};

  int howMuch = 0;
  for (String item in cart) {
    howMuch += prices[item] ?? 0;
  }
  print('장바구니에 ${howMuch}원 어치를 담으셨네요!');

  int discount = 0;
  if (howMuch >= 20000) {
    discount = (howMuch * 0.1).toInt();
    print('할인금액 : ${discount}원');
  }

  int total = howMuch - discount;
  print('최종 결제 금액은 ${total}원입니다!');

  print('---------------------------------------');

  print('도전문제');

  List<int> myNum = ranNum(); // 무작위 로또 번호를 함수로 분리
  print('발급한 로또 번호 : $myNum');

  List<int> lottoNum = [9, 19, 29, 35, 37, 38]; // 당첨 번호
  int check = checks(myNum, lottoNum); // 무작위 내 번호와 당첨 번호를 확인

  String result; // 확인 결과에 따른 당첨 결과
  if (check >= 5) {
    result = '1등';
  } else if (check == 4) {
    result = '2등';
  } else if (check == 3) {
    result = '3등';
  } else {
    result = '당첨 실패!';
  }

  print('당첨 여부 : $result');

  myNum.clear(); // 당첨 결과 확인 후 무작위 내 번호 초기화

  print('현재 발급된 로또 번호 : $myNum');
  print('---------------------------------------');
}

// myNum = ranNum()
// 리스트 형태의 랜덤 번호
// dart:math 라이브러리 이용, Random().nextInt(int nubmer)
List<int> ranNum() {
  Random random = Random();
  // 랜던번호가 중복되면 안되기 때문에 Set이용
  Set<int> lotto = {};

  // 6자리 뽑을때 까지, 1~45중 무작위로 하나씩 골라옴
  while (lotto.length < 6) {
    lotto.add(random.nextInt(45) + 1);
  }
  //뽑은 번호를 List로 변환
  List<int> result = lotto.toList();
  return result;
}

// check = checks()
// 마이넘버와 당첨번호 비교하여 일치하는 개수를 셈
int checks(List<int> myNum, List<int> lottoNum) {
  int count = 0;
  // ranNum에서 lottoNum과 일치할 경우 일치 개수 1씩 증가
  for (int num in myNum) {
    if (lottoNum.contains(num)) {
      count++;
    }
  }
  return count;
}
