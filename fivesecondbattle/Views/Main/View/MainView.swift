//
//  MainView.swift
//  fivesecondbattle
//
//  Created by  mac on 09.08.2023
//  
//

import SwiftUI

struct MainView: View {
           
    @StateObject var viewState: MainViewState

    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                //LOGO
                VStack(spacing: -20) {
                    Spacer().frame(height: 120)
                    HStack {
                        Text("FIVE")
                            .font(.system(size: 76))
                             .foregroundColor(.black)
                        Spacer()
                    }
                    HStack {
                        Text("SECONDS")
                            .font(.system(size: 76))
                             .foregroundColor(.black)
                        Spacer()
                    }
                }
                Spacer()
                VStack(spacing: 35) {
                    Button {
                        viewState.didTapStart()
                    } label: {
                        HStack {
                            Spacer().frame(width: 106)
                            Text("Start")
                                 .foregroundColor(.black)
                            Spacer()
                        }
                    }
                }
                .font(.system(size: 34))
                Spacer().frame(height: 30)
            }
        }
        .padding(.leading, 12)
        .background(.yellow)
    }
    
}
 
