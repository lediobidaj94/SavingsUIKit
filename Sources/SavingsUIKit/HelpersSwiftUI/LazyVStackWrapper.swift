//
//  LazyVStackWrapper.swift
//  FinanceAppPracticeSwift
//
//  Created by Ledio Bidaj on 25.2.25.
//
import SwiftUI

public struct LazyVStackWrapper<Item: Identifiable, ItemView: View>: View {
    
    var content: (Item) -> ItemView
    var items: [Item]
    var selection: (Item) -> Void
    
    public init(content: @escaping (Item) -> ItemView, items: [Item], selection: @escaping (Item) -> Void) {
        self.content = content
        self.items = items
        self.selection = selection
    }
    
    public var body: some View {
        LazyVStack {
            ForEach(items) { item in
                content(item)
                    .onTapGesture { selection(item)}
            }
        }
        .padding(.horizontal, 8)
    }
}

