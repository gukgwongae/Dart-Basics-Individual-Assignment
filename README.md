# 프로젝트 이름

[Dart 기초] 개인 과제

## 사용법

flutter main.dart

## 내용

1. 필수 과제 (점수에 따른 등급 출력하기)
2. 필수 과제 (쇼핑몰 결제 금액 계산하기)
3. 도전 과제 (가상 복권 프로그램 만들기)

## 트러블슈팅
1. 필수 문제 2번 풀이중 List형태의 cart에서 Map형태의 item value값을 가져오는데,
   널이 발생할 수 있다는 것을 모르고 있었음 널 값이 올 경우의 디폴트 값을 넣어주어 오류를 해결함
   기존) howMuch += prices[item]  변경) howMuch += prices[item] ?? 0;
2. 필수 문제 2번 풀이중 10% 할인을 진행하는데 int였던 값에서 0.1을 곱하니 double값으로 바뀌게됨
   할인금액을 int로 바꿔주는 작업이 필요했음
   기존) discount = (howMuch * 0.1);  변경) discount = (howMuch * 0.1).toInt();
3. 도전 문제 풀이중 dart:math 라이브러리의 Random().nextInt(int nubmer) 를 사용하라고 했는데,
   어떻게 진행할지 감도 잡히지 않아 chat gpt로 기본 예제를 확인했음
   Random random = Random(); 라는 새 객체를 만들어줬고
   Set<int> lotto = {}; 라는 중복이 불가능한 로또 컬렉션을 만들어줌
   다음으로는 1~45중 랜덤하게 6자리를 뽑을 수 있게 한 다음(Set으로 정의해서 중복 불가능)
   결과를 List로 바꿔줬음
   많은 시간이 걸린 문제였음
4. 도전 문제 풀이중 checks함수에서 myNum 대신 ranNum()을 넣으면 안되나 라는 의문을 가짐
   결과적으로는 안된다는 내용이고
   이유는 함수는 호출 할 때 마다 다시 작동을 하기 때문임 checks() 함수에 ranNum()을 넣을경우
   처음 ranNum()에서 myNum으로 넘겨준 값과 checks() 함수에서 ranNum()을 다시 호출한 값이 다름

## 예외처리
1. howMuch += prices[item] ?? 0;
   - 없는 상품일 경우 null이 반환됨 ?? 0 으로 예외처리함
3. Set<int> lotto = {}; while (lotto.length < 6) {lotto.add(random.nextInt(45) + 1);
   - 중복된 로또 번호를 방지하기 위해 Set<int> lotto = {} 으로 예외처리함
