//
//  CallsTabScreen.swift
//  DYchat
//
//  Created by Romesh Singhabahu on 28/06/24.
//

import SwiftUI

struct CallsTabScreen: View {
    // MARK: - Properities
    @State private var searchText = ""
    @State private var callHistory = CallHistory.all
    
    var body: some View {
        NavigationStack {
            List {
                
                Section {
                    CreateCallListSection()
                }
                
                Section {
                    ForEach(0..<12) { _ in
                        RecentCallItemView()
                    }
                } header: {
                    Text("Recenti")
                        .bold()
                        .font(.custom(
                            VT323.regular.rawValue,
                            size: Font.TextStyle.title3.size,
                            relativeTo: .title3)
                        )
                        .textCase(nil)
                        .foregroundStyle(.whatsAppBlack)
                }
          
            }
            .navigationTitle("Chiamate")
            .searchable(text: $searchText)
            .toolbar {
                leadingNavItems()
                trailingNavItems()
                principleNavItem()
            }
        }
    }
}

// MARK: - TAB BAR ITEMS
extension CallsTabScreen {
    
    @ToolbarContentBuilder
    private func trailingNavItems() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                
            } label: {
                Image(systemName: "phone.arrow.up.right")
                    .foregroundStyle(.accent)
            }

        }
    }
    
    @ToolbarContentBuilder
    private func leadingNavItems() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button("Modifica") { 
                
            }
            .tint(.accent)
        }
    }
    
    @ToolbarContentBuilder
    private func principleNavItem() -> some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Picker("", selection: $callHistory) {
                ForEach(CallHistory.allCases) { item in
                    Text(item.rawValue.capitalized)
                        .tag(item)
                }
            }
            .pickerStyle(.segmented)
            .frame(width: 150)
        }
    }
    
    private enum CallHistory: String, CaseIterable, Identifiable {
        case all, missed
        var id: String {
            return rawValue
        }
    }
}

// MARK: - HEADER LINK CALL OUT
private struct CreateCallListSection: View {
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "link")
                    .padding(8)
                    .background(Color(.systemGray6))
                    .clipShape(Circle())
                    .foregroundStyle(.purple)
                
                VStack(alignment: .leading) {
                    Text("Crea un link per chiamare")
                        .foregroundStyle(.purple)
                        .font(.custom(
                            VT323.regular.rawValue,
                            size: Font.TextStyle.subheadline.size,
                            relativeTo: .subheadline)
                        )
                    Text("Condividi un link per chiamare con DY-chat")
                        .foregroundStyle(.gray)
                        .font(.custom(
                            VT323.regular.rawValue,
                            size: Font.TextStyle.footnote.size,
                            relativeTo: .footnote)
                        )
                }
            }
        }
    }
}

// MARK: - RECENT CALL CELL
private struct RecentCallItemView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 45, height: 45)
            
            recentCallTextView()
            
            Spacer()
            
            Text("Ieri")
                .foregroundStyle(.gray)
                .font(.custom(
                    VT323.regular.rawValue,
                    size: Font.TextStyle.caption.size,
                    relativeTo: .caption)
                )
            
            Image(systemName: "info.circle")
            
        }
    }
    
    private func recentCallTextView() -> some View {
        VStack(alignment: .leading) {
            Text("Romesh Singhabahu")
                .font(.custom(
                    VT323.regular.rawValue,
                    size: Font.TextStyle.subheadline.size,
                    relativeTo: .subheadline)
                )
            
            HStack(spacing: 5) {
                Image(systemName: "phone.arrow.up.right.fill")
                Text("Uscita")
            }
            .font(.custom(
                VT323.regular.rawValue,
                size: Font.TextStyle.caption.size,
                relativeTo: .caption)
            )
            .foregroundStyle(.gray)
        }
    }
}


#Preview {
    CallsTabScreen()
}
