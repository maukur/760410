//
//  PlayersViewController.swift
//  fivesecondbattle
//
//  Created by Artem Tischenko on 7/30/23
//
//

import SwiftUI

struct PlayersView: View, PlayersViewProtocol {
    
    @StateObject var viewState: PlayerViewState
    
    @FocusState var focusItemId: UUID?
    
    var body: some View {
        GeometryReader { reader in
            ZStack {
                HStack {
                    Text("TAP TO PLAYER\nTO ENTER NAME")
                        .font(.system(size: 22))
                        .lineLimit(1)
                        .foregroundColor(.black)
                        .fixedSize()
                        .frame(width: 50, height: 180)
                        .offset(x:-120, y: -70)
                    Spacer()
                }
                .rotationEffect(.degrees(-90), anchor: .topLeading)
                VStack(spacing: 0) {
                    HStack {
                        Button {
                            viewState.didTapBackButton()
                        } label: {
                            Text("BACK")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        Spacer()
                    }.padding(EdgeInsets(top: 20, leading: 8, bottom: 0, trailing: 0))
                    HStack {
                        Spacer()
                        Text("PLAYERS")
                            .font(.system(size: 65))
                            .foregroundColor(.black)
                            .padding(EdgeInsets(top: 24, leading: 0, bottom: 0, trailing: 12))
                        
                    }.padding(.bottom, 42)
                    ZStack {
                        ScrollViewReader { value in
                            ScrollView {
                                VStack {
                                    ForEach($viewState.players) { player in
                                        VStack {
                                            TextField("", text: player.name)
                                                .focused($focusItemId, equals: player.id)
                                                .font(.system(size: 32))
                                                .foregroundColor(.black)
                                                .multilineTextAlignment(.trailing)
                                                .frame(width: reader.size.width-80)
                                                .textContentType(.name)
                                                .id(player.id)
                                            Spacer()
                                                .frame(height: 27)
                                        }.padding(.trailing, 12)
                                        
                                    }
                                    Spacer().frame(height: 450)
                                }
                            }
                            .onReceive(viewState.$focusItemId) { item in
                                withAnimation {
                                    focusItemId = item
                                    value.scrollTo(item, anchor: .top)
                                }
                            }
                        }.padding(.leading, 50)
                    }
                }
            }
            HStack {
                Spacer().frame(width: 80)
                VStack  {
                    Spacer()
                    VStack(spacing: 30) {
                        Spacer()
                        Button {
                            viewState.didTapAddPlayerButton()
                        } label: {
                            HStack {
                                Spacer()
                                Text("ADD PLAYER")
                                    .font(.system(size: 29))
                                    .foregroundColor(.black)
                            }
                        }.padding(.trailing, 20)
                        Button {
                            viewState.didTapToPlayButton()
                        } label: {
                            HStack {
                                Spacer()
                                Text("SAVE")
                                    .font(.system(size: 38))
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(.trailing, 12)
                        .padding(.bottom, 20)
                    }
                    .frame(height: 150)
                    .ignoresSafeArea()
                    .background(.yellow)
                }
            }
        }
        .background(.yellow)
        .navigationBarBackButtonHidden(true)
        .onAppear {
            viewState.didAppear()
        }
    }
}

class PlayerModel: ObservableObject, Identifiable, Hashable {
    static func == (lhs: PlayerModel, rhs: PlayerModel) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var id = UUID()
    
    @Published var name: String = ""
    
    init(name: String) {
        self.name = name
    }
    
    init(player: Player) {
        self.name = player.name
        self.id = player.id
    }
}

