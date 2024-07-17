//
//  SettingsItemView.swift
//  DYchat
//
//  Created by Romesh Singhabahu on 17/07/24.
//

import SwiftUI

struct SettingsItemView: View {
    // MARK: - Properities
    let item: SettingsItem
    
    var body: some View {
        HStack {
            iconImageView()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .background(item.backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 10 , style: .continuous))
            
            Text(item.title)
                .font(.custom(VT323.regular.rawValue, size: Font.TextStyle.title3.size, relativeTo: .title3))
            
            Spacer()
        }
    }
    
    @ViewBuilder
    private func iconImageView() -> some View {
        switch item.imageType {
        case .systemImage:
            Image(systemName: item.imageName)
                .bold()
                .font(.callout)
            
        case .assetImage:
            Image(item.imageName)
                .renderingMode(.template)
                .padding(3)
        }
    }
}

#Preview {
    SettingsItemView(item: .chats)
}
