//
//  PlayerView.swift
//  MeditationApp
//
//  Created by mathangy on 28/10/23.
//

import SwiftUI

struct PlayerView: View {
    @State private var value: Double = 0.0
    var body: some View {
        ZStack{
            Image("image")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
                
            Rectangle()
                .background(.thinMaterial)
                .opacity(0.25)
                .ignoresSafeArea()
            VStack(spacing:32){
                HStack {
                    
                    Button{
                        
                    }label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                Text("1 Minute Relaxing meditation").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
              Spacer()
                //playback
                VStack(spacing:5){
                    //playback timeline
                    Slider(value: $value,in: 0...60)
                        .accentColor(.white)
                    HStack{
                        Text("0:00")
                            Spacer()
                        Text("1:00")
                    }.font(.caption)
                        .foregroundColor(.white)
                }
                //playback control
                HStack{
                    //repeat
                    PlaybackControlButton(systemName: "repeat"){
                        
                    }
                    Spacer()
                    //backward
                    PlaybackControlButton(systemName: "gobackward.10"){
                        
                    }
                    Spacer()
                    //play/pause
                    PlaybackControlButton(systemName: "play.circle.fill",
                    fontSize: 44){
                        
                    }
                    Spacer()
                    //fwd
                    PlaybackControlButton(systemName: "goforward.10"){
                        
                    }
                    Spacer()
                    //stop
                    PlaybackControlButton(systemName: "stop.fill"){
                        
                    }
                
                }
            }.padding(20)
        }
    }
}

#Preview {
    PlayerView()
}
