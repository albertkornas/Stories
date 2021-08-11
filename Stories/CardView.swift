//
//  CardView.swift
//  Stories
//
//  Created by Albert Kornas on 8/10/21.
//

import SwiftUI

struct CardView: View {
    let story: [Story]
    @State var index = 0
    @Binding var presented: Bool
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .topLeading) {
                Color.black
                    .ignoresSafeArea()
                
                Button(action: {
                    index += 1
                }, label: {
                    Image(story[index].imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        .clipped()
                }).buttonStyle(MyButtonStyle())
                
                StoryHeader(story: story[index], presented: $presented)
                    .padding()
            }
        }
    }
}

struct MyButtonStyle: ButtonStyle {
  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
        .background(configuration.isPressed ? Color.white.opacity(1.0) : Color.white.opacity(0.0))
  }
}


struct StoryHeader: View {
    let story: Story
    @Binding var presented: Bool
    
    var body: some View {
        HStack {
            Circle()
                .stroke(LinearGradient(gradient: Gradient(colors: [.purple, .orange]), startPoint: .top, endPoint: .bottom), lineWidth: 3)
                .frame(width: 40, height: 40)
                .overlay(
                    Image("avatar")
                        .resizable()
                        .clipShape(Circle())
                        .aspectRatio(contentMode: .fill))
            Text(story.userName)
                .foregroundColor(.white)
                .bold()
            Text("2h")
                .foregroundColor(.white)
            Spacer()
            Button(action: {
                withAnimation {
                    self.presented.toggle()
                }
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .scaleEffect(1.2)
            })
            
        }
    }
}
