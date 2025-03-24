//
//  Helpers.swift
//  FinanceAppPracticeSwift
//
//  Created by Ledio Bidaj on 25.2.25.
//
import SwiftUI

public struct ListViewWrapper<HeaderData: Identifiable, Item: Identifiable, ItemViewHeader: View, ItemView: View>: View {

    public struct ListWrapperModel: Identifiable {
        public var id: UUID
        var header: HeaderData
        var items: [Item]
        
        public init(id: UUID, header: HeaderData, items: [Item]) {
            self.id = id
            self.header = header
            self.items = items
        }
    }
    
    public init(header: @escaping (HeaderData) -> ItemViewHeader, cell: @escaping (Item) -> ItemView, sections: [ListWrapperModel], selection: @escaping (Item) -> Void, scrollDisabled: Bool = true) {
        self.header = header
        self.cell = cell
        self.sections = sections
        self.selection = selection
        self.scrollDisabled = scrollDisabled
    }
    
    var header: (HeaderData) -> ItemViewHeader
    var cell: (Item) -> ItemView
    var sections: [ListWrapperModel]
    var selection: (Item) -> Void
    var scrollDisabled: Bool = false
    
    public var body: some View {
        List {
            ForEach(sections) { section in
                SwiftUI.Section(
                    header: header(section.header),
                    content: {
                        ForEach(section.items) { item in
                            cell(item)
                                .onTapGesture { selection(item) }
                                .listRowInsets(.none)
                                .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                                .listRowSeparator(.visible)
                        }
                    }
                )
            }
        }
        .frame(maxWidth: .infinity)
//        .scrollDisabled(scrollDisabled)
        .listStyle(.plain)
    }
    
}

