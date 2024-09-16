// This is free software: you can redistribute and/or modify it
// under the terms of the GNU General Public License 3.0
// as published by the Free Software Foundation https://fsf.org

import SwiftUI

import XCTest

#if SKIP
import com.google.accompanist.flowlayout.MainAxisAlignment
#endif

@testable import SkippingFlow

final class SkippingFlowTests: XCTestCase {
    
    func testVerticalAlignmentBottomIsEnd() throws {
        #if SKIP
        XCTAssertEqual(VerticalAlignment.bottom.asAxisAlignment, MainAxisAlignment.End)
        XCTAssertNotEqual(VerticalAlignment.bottom.asAxisAlignment, MainAxisAlignment.Start)
        XCTAssertNotEqual(VerticalAlignment.bottom.asAxisAlignment, MainAxisAlignment.Center)
        #endif
    }
    
    func testVerticalAlignmentTopIsStart() throws {
        #if SKIP
        XCTAssertEqual(VerticalAlignment.top.asAxisAlignment, MainAxisAlignment.Start)
        XCTAssertNotEqual(VerticalAlignment.top.asAxisAlignment, MainAxisAlignment.End)
        XCTAssertNotEqual(VerticalAlignment.top.asAxisAlignment, MainAxisAlignment.Center)
        #endif
    }
    
    func testVerticalAlignmentCenterIsCenter() throws {
        #if SKIP
        XCTAssertEqual(VerticalAlignment.center.asAxisAlignment, MainAxisAlignment.Center)
        XCTAssertNotEqual(VerticalAlignment.center.asAxisAlignment, MainAxisAlignment.End)
        XCTAssertNotEqual(VerticalAlignment.center.asAxisAlignment, MainAxisAlignment.Start)
        #endif
    }
    
    func testHorizontalAlignmentLeadingIsStart() throws {
        #if SKIP
        XCTAssertEqual(HorizontalAlignment.leading.asAxisAlignment, MainAxisAlignment.Start)
        XCTAssertNotEqual(HorizontalAlignment.leading.asAxisAlignment, MainAxisAlignment.End)
        XCTAssertNotEqual(HorizontalAlignment.leading.asAxisAlignment, MainAxisAlignment.Center)
        #endif
    }
    
    func testHorizontalAlignmentTrailingIsEnd() throws {
        #if SKIP
        XCTAssertEqual(HorizontalAlignment.trailing.asAxisAlignment, MainAxisAlignment.End)
        XCTAssertNotEqual(HorizontalAlignment.trailing.asAxisAlignment, MainAxisAlignment.Start)
        XCTAssertNotEqual(HorizontalAlignment.trailing.asAxisAlignment, MainAxisAlignment.Center)
        #endif
    }
    
    func testHorizontalAlignmentCenterIsCenter() throws {
        #if SKIP
        XCTAssertEqual(HorizontalAlignment.center.asAxisAlignment, MainAxisAlignment.Center)
        XCTAssertNotEqual(HorizontalAlignment.center.asAxisAlignment, MainAxisAlignment.End)
        XCTAssertNotEqual(HorizontalAlignment.center.asAxisAlignment, MainAxisAlignment.Start)
        #endif
    }
}
