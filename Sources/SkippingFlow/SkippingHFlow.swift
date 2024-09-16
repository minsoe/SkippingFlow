// This is free software: you can redistribute and/or modify it
// under the terms of the GNU General Public License 3.0
// as published by the Free Software Foundation https://fsf.org
//
//  SkippingHFlow.swift
//
//
//  Created by Min Soe Zan on 13/9/24.

import Foundation

import SwiftUI

#if !SKIP
import Flow
#endif

#if SKIP
import com.google.accompanist.flowlayout.FlowRow
import com.google.accompanist.flowlayout.MainAxisAlignment
import androidx.compose.ui.unit.dp
#endif


public struct SkippingHFlow<V: View>: View {
    private let view: () -> V
    private let itemSpacing: CGFloat
    private let rowSpacing: CGFloat
    private let alignment: VerticalAlignment
    
    public init(
        alignment: VerticalAlignment = .center,
        itemSpacing: CGFloat = 10,
        rowSpacing: CGFloat = 10,
        view: @escaping () -> V) {
            self.alignment = alignment
            self.itemSpacing = itemSpacing
            self.rowSpacing = rowSpacing
            self.view = view
    }
    
    public var body: some View {
        #if SKIP
        ComposeView { context in
            FlowRow(
                mainAxisSpacing: itemSpacing.dp,
                crossAxisSpacing: rowSpacing.dp,
                mainAxisAlignment: alignment.asAxisAlignment
            ) {
                view().Compose(context: context.content())
            }
        }
        #else
        HFlow(
            alignment: alignment,
            itemSpacing: itemSpacing,
            rowSpacing: rowSpacing) {
            view()
        }
        #endif
    }
    
}


#if SKIP
extension VerticalAlignment {
    
    var asAxisAlignment: MainAxisAlignment {
        switch self {
        case .top:
            MainAxisAlignment.Start
        case .bottom:
            MainAxisAlignment.End
        default:
            MainAxisAlignment.Center
        }
    }
}
#endif
