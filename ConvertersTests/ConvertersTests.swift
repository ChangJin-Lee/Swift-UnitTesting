//
//  ConvertersTests.swift
//  ConvertersTests
//
//  Created by CHANG JIN LEE on 2023/07/20.
//

import XCTest

final class ConvertersTests: XCTestCase {

    func test_convert10000_returns79() {
        // MARK 1: Given (Arrange)
        // sut: system under testing
        let sut = Converters()

        // MARK 2: When (Act)
        let actual = sut.convertKRWToUSD(KRW: "10000")
        let expected = "$7.90"

        // MARK 3: Then (Assert)
        XCTAssertEqual(actual, expected)
    }

}
