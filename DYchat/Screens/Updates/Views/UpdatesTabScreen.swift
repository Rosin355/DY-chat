//
//  UpdatesTabScreen.swift
//  DYchat
//
//  Created by Romesh Singhabahu on 19/06/24.
//

import SwiftUI

struct UpdatesTabScreen: View {
    // MARK: - Properities
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List {
                /// HEADER
                StatusSectionHeader()
                    .listRowBackground(Color.clear)
                
                /// STATUS SECTION
                StatusSection()
                
                /// UPDATES
                Section {
                    RecentUpdatesItemView()
                } header: {
                    Text("Aggionrnamenti Recenti")
                        .font(.custom(
                            VT323.regular.rawValue,
                            size: Font.TextStyle.subheadline.size,
                            relativeTo: .subheadline)
                        )
                }
                
                /// LIST CHANNEL
                Section {
                    ChanneListView()
                } header: {
                    channelSectionHeader()
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Novità")
            .searchable(text: $searchText)
        }
    }
    
    private func channelSectionHeader() -> some View {
        HStack {
            Text("Canali")
                .bold()
                .font(.custom(
                    VT323.regular.rawValue,
                    size: Font.TextStyle.title3.size,
                    relativeTo: .title3)
                )
                .textCase(nil)
                .foregroundStyle(.whatsAppBlack)
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "plus")
                    .padding(7)
                    .background(Color(.systemGray5))
                    .clipShape(Circle())
            }
        }
    }
}

extension UpdatesTabScreen {
    enum Constant {
        static let imageDimen: CGFloat = 55
    }
}

private struct StatusSectionHeader: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "circle.dashed")
                .foregroundStyle(.purple)
                .imageScale(.large)
            (
            Text("Use Status to share photos, text and videos that dissapear in 24 hours.")
            +
            Text(" ")
            +
            Text("Status privacy")
                .foregroundStyle(.purple).bold()
            )
            Image(systemName: "xmark")
                .foregroundStyle(.gray)
        }
        .padding()
        .font(.custom(
            VT323.regular.rawValue,
            size: Font.TextStyle.body.size,
            relativeTo: .body)
        )
        .background(.whatsAppWhite)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

private struct StatusSection: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: UpdatesTabScreen.Constant.imageDimen,
                       height: UpdatesTabScreen.Constant.imageDimen)
            
            VStack(alignment: .leading, content: {
                Text("Il mio stato")
                    .font(.custom(
                        VT323.regular.rawValue,
                        size: Font.TextStyle.callout.size,
                        relativeTo: .callout)
                    )
                    .bold()
                Text("Aggiungi al mio stato")
                    .foregroundStyle(.secondary)
                    .font(.custom(
                        VT323.regular.rawValue,
                        size: Font.TextStyle.footnote.size,
                        relativeTo: .footnote)
                    )
            })
            
            Spacer()
            cameraButton()
            pencilButton()
        }
    }
    
    private func cameraButton() -> some View {
        Button {
            
        }label: {
            Image(systemName: "camera.fill")
                .padding(10)
                .background(Color(.systemGray5))
                .clipShape(Circle())
                .bold()
        }
    }
    
    private func pencilButton() -> some View {
        Button {
            
        }label: {
            Image(systemName: "pencil")
                .padding(10)
                .background(Color(.systemGray5))
                .clipShape(Circle())
                .bold()
        }
    }
}

private struct RecentUpdatesItemView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: UpdatesTabScreen.Constant.imageDimen,
                       height: UpdatesTabScreen.Constant.imageDimen)
            
            VStack(alignment: .leading, content: {
                Text("Romesh Singhabahu")
                    .font(.custom(
                        VT323.regular.rawValue,
                        size: Font.TextStyle.callout.size,
                        relativeTo: .callout)
                    )
                    .bold()
                Text("1 ora fa")
                    .foregroundStyle(.secondary)
                    .font(.custom(
                        VT323.regular.rawValue,
                        size: Font.TextStyle.footnote.size,
                        relativeTo: .footnote)
                    )
            })
        }
    }
}

private struct ChanneListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Ricevi aggiornamenti sugli argomenti che ti interessano. Trova canali a cui iscriverti qui sotto. ")
                .foregroundStyle(.gray)
                .font(.custom(
                    VT323.regular.rawValue,
                    size: Font.TextStyle.headline.size,
                    relativeTo: .headline)
                )
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<5) { _ in
                        ChannelItemView()
                    }
                }
            }
            
            Button("Scopri di più") { }
                .tint(.purple)
                .font(.custom(
                    VT323.regular.rawValue,
                    size: Font.TextStyle.callout.size,
                    relativeTo: .callout))
                .bold()
                .buttonStyle(BorderedProminentButtonStyle())
                .clipShape(Capsule())
                .padding(.vertical)
                
        }
    }
}

private struct ChannelItemView: View {
    var body: some View {
        VStack {
            Circle()
                .frame(width: 55, height: 55)
            
            Text("Marketing Digital")
                .font(.custom(
                    VT323.regular.rawValue,
                    size: Font.TextStyle.subheadline.size,
                    relativeTo: .subheadline)
                )
            
            Button {
                
            } label: {
                Text("Iscriviti")
                    .font(.custom(
                        VT323.regular.rawValue,
                        size: Font.TextStyle.callout.size,
                        relativeTo: .callout)
                    )
                    .bold()
                    .padding(5)
                    .frame(maxWidth: .infinity)
                    .background(Color.purple.opacity(0.2))
                    .clipShape(Capsule())
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical)
        .overlay (
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 1)
        )
    }
}

#Preview {
    UpdatesTabScreen()
}
