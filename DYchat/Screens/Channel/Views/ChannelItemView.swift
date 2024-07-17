//
//  ChannelItemView.swift
//  DYchat
//
//  Created by Romesh Singhabahu on 16/07/24.
//

import SwiftUI

struct ChannelItemView: View {
    // MARK: - Properities
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Circle()
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading, spacing: 6) {
                titleTextView()
                lastMessagePreview()
            }
        }
    }
    
    private func titleTextView() -> some View {
        HStack {
            Text("Bea Vita")
                .lineLimit(1)
                .font(.custom(
                    VT323.regular.rawValue,
                    size: Font.TextStyle.headline.size,
                    relativeTo: .headline)
                )
            
            Spacer()
            
            Text("17:30")
                .foregroundStyle(.gray)
                .font(.custom(
                    VT323.regular.rawValue,
                    size: Font.TextStyle.footnote.size,
                    relativeTo: .footnote)
                )
        }
    }
    
    private func lastMessagePreview() -> some View {
        Text("Hey ciao come sea?")
            .lineLimit(2)
            .foregroundStyle(.gray)
            .font(.custom(
                VT323.regular.rawValue,
                size: Font.TextStyle.footnote.size,
                relativeTo: .footnote)
            )
    }
}

#Preview {
    ChannelItemView()
}
