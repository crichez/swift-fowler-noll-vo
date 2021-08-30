//
//  FNV64aTests.swift
//  FNV64aTests
//
//  Created by Christopher Richez on 8/30/21.
//

import FowlerNollVo
import FNV64a
import XCTest

class FNV64aTests: XCTestCase {
    func hash<T: FNVHashable>(_ data: T) -> UInt64 {
        var hasher = FNV64a()
        hasher.combine(data)
        return hasher.digest
    }
    
    func testDoubleHashStability() {
        let value: Double = .random(in: .leastNonzeroMagnitude ... .greatestFiniteMagnitude)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    func testFloatHashStability() {
        let value: Float = .random(in: .leastNonzeroMagnitude ... .greatestFiniteMagnitude)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    #if arch(arm)
    @available(macOS 11, *)
    @available(macCatalyst 14, *)
    @available(macOSApplicationExtension 11, *)
    @available(macCatalystApplicationExtension 14, *)
    @available(iOS 14, *)
    @available(watchOS 7, *)
    @available(tvOS 14, *)
    func testFloat16HashStability() {
        let value: Float16 = .random(in: .leastNonzeroMagnitude ... .greatestFiniteMagnitude)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    #endif
    
    func testBoolHashStability() {
        let value: Bool = .random()
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    func testStringHashStability() {
        let value: String = "this is a test string"
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    func testUIntHashStability() {
        let value: UInt = .random(in: .min ... .max)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    func testUInt8HashStability() {
        let value: UInt8 = .random(in: .min ... .max)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    func testUInt16HashStability() {
        let value: UInt16 = .random(in: .min ... .max)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    func testUInt32HashStability() {
        let value: UInt32 = .random(in: .min ... .max)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    func testUInt64HashStability() {
        let value: UInt64 = .random(in: .min ... .max)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    func testIntHashStability() {
        let value: Int = .random(in: .min ... .max)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    func testInt8HashStability() {
        let value: Int8 = .random(in: .min ... .max)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    func testInt16HashStability() {
        let value: Int16 = .random(in: .min ... .max)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    func testInt32HashStability() {
        let value: Int32 = .random(in: .min ... .max)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
    
    func testInt64HashStability() {
        let value: Int64 = .random(in: .min ... .max)
        let hashedValue = hash(value)
        print(hashedValue)
        for _ in 1 ... 10 {
            XCTAssertEqual(hashedValue, hash(value))
        }
    }
}
