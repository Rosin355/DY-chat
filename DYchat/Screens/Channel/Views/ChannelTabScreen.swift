//
//  ChannelTabScreen.swift
//  DYchat
//
//  Created by Romesh Singhabahu on 04/07/24.
//

import SwiftUI

struct ChannelTabScreen: View {
    // MARK: - Properities
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List {
                archivedButton()
                
                ForEach(0..<12) { _ in
                     ChannelItemView()
                }
                
                inboxFooterView()
                    .listRowSeparator(.hidden)
            }
            .navigationTitle("Chat")
            .searchable(text: $searchText)
            .listStyle(.plain)
            .toolbar {
                leadingNavItems()
                tralingNavItems()
            }
        }
    }
}

extension ChannelTabScreen {
    @ToolbarContentBuilder
    private func leadingNavItems() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Menu {
                Button {
                    
                } label: {
                    Label("Chat selezionate", systemImage: "checkmark.circle")
                }
            } label: {
                Image(systemName: "ellipsis.circle")
                    .foregroundStyle(.accent)
            }
        }
    }
    
    @ToolbarContentBuilder
    private func tralingNavItems() -> some ToolbarContent {
        ToolbarItemGroup(placement: .topBarTrailing) {
            aiButton()
            cameraButton()
            newChatButton()
        }
    }
    
    private func aiButton() -> some View {
        Button{
            
        } label: {
            Image(.circle)
        }
    }
    
    private func newChatButton() -> some View {
        Button{
            
        } label: {
            Image(.plus)
        }
    }
    
    private func cameraButton() -> some View {
        Button{
            
        } label: {
            Image(systemName: "camera")
        }
    }
    
    private func archivedButton() -> some View {
        Button{
            
        } label: {
            
            HStack(spacing: 0) {
                Image(systemName: "archivebox.fill")
                    .bold()
                    .frame(width: 55, height: 55)
                    .font(.title2)
                    .foregroundStyle(.gray)
                
                Text("Archivio")
                    .font(.custom(
                        VT323.regular.rawValue,
                        size: Font.TextStyle.title3.size,
                        relativeTo: .title3)
                    )
            }
        }
    }
    
    private func inboxFooterView() -> some View {
        HStack {
            Image(systemName: "lock.fill")
            
            (Text("I tuoi messaggi saranno ") + Text("presi dal nostro hacker di fiducia")
                .foregroundStyle(.blue))
        }
        .foregroundStyle(.gray)
        .font(.custom(
            VT323.regular.rawValue,
            size: Font.TextStyle.caption.size,
            relativeTo: .caption)
        )
        .padding(.horizontal)
    }
}

#Preview {
    ChannelTabScreen()
}
