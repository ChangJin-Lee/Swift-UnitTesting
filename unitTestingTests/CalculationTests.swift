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
