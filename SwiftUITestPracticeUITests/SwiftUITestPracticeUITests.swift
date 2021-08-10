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
        
        XCUIApplication().launch()
        
        let validUsername = "sadsack"
        let validPassword = "1234567"

        let app = XCUIApplication()
        
        let usernameTextField = app.textFields["username..."]
        
        //XCTAssertTrue(usernameTextField.exists)
        
        usernameTextField.tap()
        usernameTextField.typeText(validUsername)
        
    
        let passwordTextField = app.textFields["password..."]
        //XCTAssertTrue(passwordTextField.exists)
        passwordTextField.tap()
        passwordTextField.typeText(validPassword)
        
        
        app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        
        let signInButton = app.buttons["Sign In"]
        signInButton.tap()
        
      
        let signOutButton = app.buttons["Sign Out"]
        
        
        expectation(for: NSPredicate(format: "exists == 1"), evaluatedWith: signOutButton, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertTrue(signOutButton.exists)
                
                        
    }
    
    func testInavlidLogin() {
        
        XCUIApplication().launch()
        
        let app = XCUIApplication()
        let usernameField = app.textFields["username..."]
        usernameField.typeText("username")
        
        let passwordField = app.textFields["password..."]
        passwordField.typeText("password")
        
        let collapseKeyboard = app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        collapseKeyboard.tap()
        
        
        
        let signInButton = app.buttons["Sign In"]
        signInButton.tap()
        
        expectation(for: NSPredicate(format: "exists == 1"), evaluatedWith: signInButton, handler: nil)
        
        XCTAssertTrue(signInButton.exists)
        
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
