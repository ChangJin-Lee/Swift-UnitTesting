# iOS Test code
iOS에서는 테스트 코드를 어떻게 작성할까요? 
궁금증을 해결하기 위해 Unit Test에 대해 알아볼게요!

다음의 코드를 참고하시면 좋아요.


# Unit Test

### Arrange

- ***Arrange*** inputs and targets. *Arrange* steps should set up the test case. Does the test require any objects or special settings? Does it need to prep a database? Does it need to log into a web app? Handle all of these operations at the start of the test.
- 요약 : 앱에 들어오는 input 값

### Act

- ***Act*** on the target behavior. *Act* steps should cover the main thing to be tested. This could be calling a function or method, calling a REST API, or interacting with a web page. Keep actions focused on the target behavior.
- 요약 : 실제로 행위를 하는 것. function call.

### Assert

- ***Assert*** expected outcomes. *Act* steps should elicit some sort of response. *Assert* steps verify the goodness or badness of that response. Sometimes, assertions are as simple as checking numeric or string values. Other times, they may require checking multiple facets of a system. Assertions will ultimately determine if the test passes or fails.
- 요약 : Act 단계에서 받은 반응들이 올바른지 판단하는 단계

</br>

> target struct, function
> 

```swift
struct Calculation {
    func calculateTip(of enteredAmount: Double, with tip: Double) -> Double? {
        guard enteredAmount >= 0 && tip >= 0 else { return nil }
        let tipPercentage = tip / 100
        return enteredAmount * tipPercentage
        
    }
}
```
</br>
calculationTip 안에 enteredAmount와 tip이 파라미터로 들어와요. 
우리는 이 두 값이 변할 때 문제가 될만한 경우를 파악해서 test code를 작성할거에요. 


</br>

> TestCode
> 

```swift
//
//  CalculationTests.swift
//  unitTestingTests
//
//  Created by CHANG JIN LEE on 2023/07/07.
//

import XCTest
@testable import unitTesting

final class CalculationTests: XCTestCase {

    func testSuccessfulTipCalculation(){
        // Given (Arrange)

        let enteredAmount = 100.00
        let tipSlider = 25.0
        let calculation = Calculation()

        // When (Act)
        let tip = calculation.calculateTip(of: enteredAmount, with: tipSlider)

        // Then (Assert)
        XCTAssertEqual(tip, 25)
    }

    func testNegativeEnteredAmountTipCalculation(){
        // Given (Arrange)

        let enteredAmount = -100.00
        let tipSlider = 25.0
        let calculation = Calculation()

        // When (Act)
        let tip = calculation.calculateTip(of: enteredAmount, with: tipSlider)

        // Then (Assert)
        XCTAssertNil(tip)
    }
}
```

func testSuccessfulTipCalculation() 에서는 계산된 팁이 25인지 아닌지 판단해요. 
만약 25라면 테스트를 통활 것이고, 아니라면 통과하지 못해요. 

그런데 코딩을 하다가 누군가 Calculation struct 안에 있는 calculationTip 함수 내부에 guard enteredAmount >= 0 && tip >= 0 else { return nil } 부분을 주석처리 했다고 생각해보아요.

```swift
struct Calculation {
    func calculateTip(of enteredAmount: Double, with tip: Double) -> Double? {
        //guard enteredAmount >= 0 && tip >= 0 else { return nil }
        let tipPercentage = tip / 100
        return enteredAmount * tipPercentage
        
    }
}
```
그렇다면 func testNegativeEnteredAmountTipCalculation() 에서 테스트를 통과하지 못해요. 
왜냐하면 tip은 nil이 아닌 값을 반환하기 때문이에요.


###  참고자료
---

https://www.youtube.com/watch?v=opkU2UuPk0A
