//
//  ContentView.swift
//  shamma alkaabi
//
//  Created by shamma  on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var videosPlayed = 0
    @State var numberVideos = 30
    @State var gamesPlayed = 20
    
    var body: some View {
        VStack {
            Text("\(videosPlayed) videos Played")
            Text("There are \(numberVideos-videosPlayed) videos left")
            Button {
                print("Honey, is that true")
                videosPlayed = 2
            } label: {
                Image("lana del rey")
                    .resizable()
                    .frame(width: 120, height: 170)
                Text("enlighten me!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .buttonStyle(.borderedProminent)
        }
        VStack {
            Text("\(gamesPlayed) games played")
            Button{
                print("well")
                gamesPlayed = 4
            } label: {
                Text("Mmm")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
            


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
