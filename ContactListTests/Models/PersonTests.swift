//
//  PersonTests.swift
//  ContactListTests
//
//  Created by Nazar Lykashik on 1.11.22.
//

import XCTest
@testable import ContactList

final class PersonTests: XCTestCase {
    
    var image: UIImage?
    var imageData: Data?

    override func setUp() {
        super.setUp()
        
        image = #imageLiteral(resourceName: "pngtree-cartoon-contact-icon-download-image_1251409")
        guard let image = image else { return }
        imageData = image.pngData()
        
    }

    override func tearDown() {
        super.tearDown()
        
        image = nil
        imageData = nil
    }
    func testInitPersonWithNameAndPhone(){
        let person = Person(name: "Foo", phone: "Bar")
        XCTAssertNotNil(person)
    }
    func testInitPersonWithFullNameAndPhone(){
        let person = Person(name: "Foo", surname: "Bar", phone: "Buz")
        XCTAssertNotNil(person)
    }
    func testWhenGivenNameAndPhoneSetsNameAndPhone(){
        let person = Person(name: "Foo", phone: "Bar")
        XCTAssertEqual(person.name, "Foo")
        XCTAssertEqual(person.phone, "Bar")
    }
    func testWhenGivenSurnameSetsSurname(){
        let person = Person(name: "Foo", surname: "Bar", phone: "Buz")
        XCTAssertTrue(person.surname == "Bar")
    }
    func testInitPersonWithDate(){
        let person = Person(name: "Foo", phone: "Bar")
        XCTAssertNotNil(person.date)
    }
    func testInitPersonWithFullNameAndDate(){
        let person = Person(name: "Foo", surname: "Bar", phone: "Buz")
        XCTAssertNotNil(person.date)
    }
    func testInitPersonWithImage(){
        
        let person = Person(name: "Foo", phone: "Bar", imageData: imageData)
        XCTAssertNotNil(person.imageData)
    }
    func testInitPersonWithFullNameAndImage(){
        
        let person = Person(name: "Foo", surname: "Bar", phone: "Buz", imageData: imageData)
        XCTAssertNotNil(person.imageData)
    }
}
