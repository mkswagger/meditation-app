//
//  MeditationView.swift
//  MeditationApp
//
//  Created by mathangy on 28/10/23.
//

import SwiftUI

struct MeditationView: View {
    var body: some View {
        VStack(spacing:0){
            //Mark : Image
            Image("image").resizable().scaledToFill().frame(height:UIScreen.main
                .bounds.height/3)
            // Mark : Meditation details
            ZStack{
                
                Color(red:24/255 , green: 23/255 , blue: 22/255) //warm black tone
                VStack(alignment: .leading, spacing : 24) {
                    VStack(alignment: .leading , spacing:8 ){
                        Text("Music")
                        Text("0s")
                    }
                    .font(.subheadline)
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .opacity(0.7)
                    Text("One minute Relaxing meditation").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    Button{
                    }
                    label: {
                        Label("Play" , systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical,10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20)
                    }
                    //desc
                    Text("Lorem Ipsem says meditate well and stay healthy")
                    
                    Spacer()
                }.foregroundColor(.white)
                    .padding(20)
            }
            .frame(height: UIScreen.main.bounds.height * 2/3)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    MeditationView()
}
