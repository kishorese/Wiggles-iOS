//
//  WigglesiOSUITests.swift
//  WigglesiOSUITests
//
//  Created by Kishore Nuvvula on 01/12/2023.
//


import XCTest

final class WigglesiOSUITests: XCTestCase {
    
    func testHomeScreen() {
        let app = XCUIApplication()
        app.launch()
        
        let button = app.scrollViews.otherElements.buttons["Parkinson, 2 yrs | Playful, 341m away, Male, 12 min ago"].staticTexts["Parkinson"]
        
        //verify the cards exist
        XCTAssertTrue(button.exists, "The button with the specified accessibility label exists")
        
        //verify clicking on card takes you to details page
        if button.exists {
            button.tap()
        }
    }
    
    func testDetailsPageElements() {
        let elementsQuery = XCUIApplication().scrollViews.otherElements
        
        // Verify there is an image in the details page
        XCTAssertTrue(elementsQuery.images["dog_blue"].exists, "The image with the specified accessibility label exists")
        
        // Verify headings for each section in the details page
        
        XCTAssertTrue(elementsQuery.staticTexts["My Story"].exists, "The 'My Story' static text exists")
        
        XCTAssertTrue(elementsQuery.staticTexts["Quick Info"].exists, "The 'Quick Info' static text exists")
        
        XCTAssertTrue(elementsQuery.staticTexts["Owner info"].exists, "The 'Owner info' static text exists")
        
        XCTAssertTrue(elementsQuery.buttons["msg_icon"].exists, "The 'msg_icon' button exists")
        elementsQuery.buttons["msg_icon"].tap()
        
        XCTAssertTrue(elementsQuery.buttons["Adopt me"].exists, "The 'Adopt me' button exists")
        elementsQuery.buttons["Adopt me"].tap()
        
            }
        }
