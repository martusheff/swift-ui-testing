//
//  SwiftUITestPracticeUITests.swift
//  SwiftUITestPracticeUITests
//
//  Created by andronick martusheff on 8/9/21.
//

import XCTest

class SwiftUITestPracticeUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testValidLoginSuccess() {
        
        let validUsername = "sadsack"
        let validPassword = "1234567"

        let app = XCUIApplication()
        
        let usernameTextField = app.textFields["username..."]
        
        //XCTAssertFalse(usernameTextField.exists)
        
        usernameTextField.tap()
        usernameTextField.typeText(validUsername)
        
    
        let passwordTextField = app.textFields["password..."]
        //XCTAssertTrue(passwordTextField.exists)
        passwordTextField.tap()
        passwordTextField.typeText(validPassword)
        
        app.buttons["Sign In"].tap()
        
        
      
        let signOutButton = app.buttons["Sign Out"]
        
        
        expectation(for: NSPredicate(format: "exists == 1"), evaluatedWith: signOutButton, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertTrue(signOutButton.exists)
                
                        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
