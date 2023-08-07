//
//  ConvertersTests.swift
//  ConvertersTests
//
//  Created by CHANG JIN LEE on 2023/07/20.
//

import XCTest

final class ConvertersTests: XCTestCase {
    private var sut: Converters!

    // MARK 1: Given (Arrange)
    // sut: system under testing

    // 테스트가 시작될 때 실행될 함수
    override func setUpWithError() throws {
        sut = Converters()
    }

    // 테스트가 끝날 때 실행 될 함수
    override func tearDownWithError() throws {
        sut = nil
    }

    func test_convert10000_returns79() {

        // MARK 2: When (Act)
        let actual = sut.convertKRWToUSD(KRW: "10000")
        let expected = "$7.90"

        // MARK 3: Then (Assert)
        XCTAssertEqual(actual, expected)
    }

    func test_convertNeg10000_returnErrorMessage() {
        let actual = sut.convertKRWToUSD(KRW: "-10000")
        let expected = "양수를 입력해주세요."

        XCTAssertEqual(actual, expected)
    }

    func test_convertHugeNumber_returnErrorMessage() {
        let actual = sut.convertKRWToUSD(KRW: "1000000000")
        let expected = "너무 큰 수를 입력했어요!"

        XCTAssertEqual(actual, expected)
    }

    func test_convert1055_returnErrorMessage() {
        let actual = sut.convertKRWToUSD(KRW: "1055")
        let expected = "$0.83"

        XCTAssertEqual(actual, expected)
    }

    func test_invalidInput_returnErrorMessage() {
        let actual = sut.convertKRWToUSD(KRW: "hello~")
        let expected = "양수를 입력해주세요."

        XCTAssertEqual(actual, expected)
    }

    func test_sampleTest(){
        XCTAssertTrue(true)
    }

}
