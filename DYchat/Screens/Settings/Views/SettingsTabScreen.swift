//
//  SettingsTabScreen.swift
//  DYchat
//
//  Created by Romesh Singhabahu on 17/07/24.
//

import SwiftUI

struct SettingsTabScreen: View {
    // MARK: - Properities
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            List {
                
                SettingsHeaderView()
                
                Section {
                    SettingsItemView(item: .broadCastLists)
                    SettingsItemView(item: .starredMessages)
                }
                
                Section {
                    SettingsItemView(item: .account)
                    SettingsItemView(item: .privacy)
                    SettingsItemView(item: .chats)
                    SettingsItemView(item: .notifications)
                    SettingsItemView(item: .storage)
                }
                
                Section {
                    SettingsItemView(item: .help)
                    SettingsItemView(item: .tellFriend)
                }
            }
            .navigationTitle("Impostazioni")
            .searchable(text: $searchText)
        }
    }
}

private struct SettingsHeaderView: View {
    var body: some View {
        Section {
            HStack {
                Circle()
                    .frame(width: 55, height: 55)
                
                userInfoTextView()
            }
        }
    }
    
    private func userInfoTextView() -> some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Romeo Cameo")
                    .font(.custom(VT323.regular.rawValue, size: Font.TextStyle.title2.size, relativeTo: .title2))
                
                Spacer()
                
                Image(.qrcode)
                    .renderingMode(.template)
                    .padding(5)
                    .foregroundStyle(.blue)
                    .background(Color(.systemGray5))
                    .clipShape(Circle())
            }
            
            Text("Hey sto usando Dy-chat ke beo")
                .foregroundStyle(.gray)
                .font(.custom(VT323.regular.rawValue, size: Font.TextStyle.callout.size, relativeTo: .callout))
        }
        .lineLimit(1)
    }
}

#Preview {
    SettingsTabScreen()
}
