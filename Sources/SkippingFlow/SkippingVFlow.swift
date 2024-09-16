// This is free software: you can redistribute and/or modify it
// under the terms of the GNU General Public License 3.0
// as published by the Free Software Foundation https://fsf.org
//
//  SkippingVFlow.swift
//
//
//  Created by Min Soe Zan on 12/9/24.
//

import SwiftUI

#if !SKIP
import Flow
#endif

#if SKIP
import com.google.accompanist.flowlayout.FlowColumn
import com.google.accompanist.flowlayout.MainAxisAlignment
import androidx.compose.ui.unit.dp
#endif

public struct SkippingVFlow<V: View>: View {
    private let view: () -> V
    private let itemSpacing: CGFloat
    private let columnSpacing: CGFloat
    private let alignment: HorizontalAlignment
    
    public init(
        alignment: HorizontalAlignment = .center,
        itemSpacing: CGFloat = 10,
        rowSpacing: CGFloat = 10,
        view: @escaping () -> V) {
            self.alignment = alignment
            self.itemSpacing = itemSpacing
            self.columnSpacing = rowSpacing
            self.view = view
    }
    
    public var body: some View {
        #if SKIP
        ComposeView { context in
            FlowColumn(
                mainAxisSpacing: itemSpacing.dp,
                crossAxisSpacing: columnSpacing.dp,
                mainAxisAlignment: alignment.asAxisAlignment
            ) {
                view().Compose(context: context.content())
            }
        }
        #else
        VFlow(
            alignment: alignment,
            itemSpacing: itemSpacing,
            columnSpacing: columnSpacing) {
            view()
        }
        #endif
    }
    
}

#if SKIP

extension HorizontalAlignment {
    
    var asAxisAlignment: MainAxisAlignment {
        switch self {
        case .leading:
            MainAxisAlignment.Start
        case .trailing:
            MainAxisAlignment.End
        default:
            MainAxisAlignment.Center
        }
    }
}

#endif
