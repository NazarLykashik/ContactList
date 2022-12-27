//
//  ContactManagerTests.swift
//  ContactListTests
//
//  Created by Nazar Lykashik on 7.11.22.
//

import XCTest
@testable import ContactList

class ContactManagerTests: XCTestCase{
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    func testInitContactManagerWithEmptyList(){
        let contactManager = ContactManager()
        XCTAssertEqual(contactManager.contactaCount, 0)
    }
}
