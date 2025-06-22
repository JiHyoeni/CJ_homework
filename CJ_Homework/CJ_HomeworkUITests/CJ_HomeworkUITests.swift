//
//  CJ_HomeworkUITests.swift
//  CJ_HomeworkUITests
//
//  Created by 박지현 on 6/22/25.
//

import XCTest

final class CJ_HomeworkUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let firstCell = app.cells.element(boundBy: 0)   //상품리스트 첫번제 셀 확인
        XCTAssertTrue(firstCell.exists, "첫 번째 셀을 찾을 수 없습니다.") //첫번째 셀이 존재하는지 확인
        firstCell.tap() //첫번째 셀 탭하여 상세로 이동

        let webView = app.webViews.firstMatch   //상세화면에 웹뷰가 뜨는지 확인
        XCTAssertTrue(webView.waitForExistence(timeout: 1), "WebView가 로드되지 않았습니다.") //웹뷰 로드 확인
        
        let backButton = app.buttons["뒤로가기"]    //
        XCTAssertTrue(backButton.exists, "뒤로가기 버튼이 표시되지 않습니다.")
    }

    @MainActor
    func testLaunchPerformance() throws {
        // This measures how long it takes to launch your application.
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            XCUIApplication().launch()
        }
    }
}
