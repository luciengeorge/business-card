//
//  ContentView.swift
//  business-card
//
//  Created by Lucien George on 07/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("lucien")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 175, height: 175)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Lucien George")
                    .font(Font.custom("Roboto-Bold", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Software Engineer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+44 7845 714 513", imageName: "phone.fill")
                InfoView(text: "luciengeorge95@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
