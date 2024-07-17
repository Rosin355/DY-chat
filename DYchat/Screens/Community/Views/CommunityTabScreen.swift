//
//  CommunityTabScreen.swift
//  DYchat
//
//  Created by Romesh Singhabahu on 04/07/24.
//

import SwiftUI

struct CommunityTabScreen: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Image(.communities)
                    
                    Group {
                        Text("Rimani connesso con la community di DY-Chat")
                            .font(.custom(
                                VT323.regular.rawValue,
                                size: Font.TextStyle.title2.size,
                                relativeTo: .title2)
                            )
                        
                        Text("La comunità di DY-chat porta ai membri un area di aggregazione e networking con altri imprenditori del settore. Non ho idea di cosa ho scritto ma serviva per capire quanto testo mettere")
                            .font(.custom(
                                VT323.regular.rawValue,
                                size: Font.TextStyle.body.size,
                                relativeTo: .body)
                            )
                            .foregroundStyle(.gray)
                    }
                    .padding(.horizontal, 5)
                    
                    /// BUTTON FOR EXAMPLE
                    Button("See example communities ->") { }
                        .tint(.accent)
                        .font(.custom(
                            VT323.regular.rawValue,
                            size: Font.TextStyle.body.size,
                            relativeTo: .body)
                        )
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    /// BUTTON FOR CREATE COMMUNITY
                    createNewCommunityButton()
                        
                }
                .padding()
                .navigationTitle("Community")
            }
        }
    }
    
    private func createNewCommunityButton() -> some View {
        Button(action: {
            // TO DO
        }, label: {
            Label("New Community", systemImage: "plus")
                .bold()
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.custom(
                    VT323.regular.rawValue,
                    size: Font.TextStyle.title3.size,
                    relativeTo: .title3)
                )
                .foregroundStyle(.white)
                .padding(10)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .padding()
        })
    }
}

#Preview {
    CommunityTabScreen()
}
