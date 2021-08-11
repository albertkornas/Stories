//
//  ContentView.swift
//  Stories
//
//  Created by Albert Kornas on 8/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var model = StoryModel()
    @State var isPresented = false
    var body: some View {
        ZStack {
            NavigationView {
                ZStack {
                    HStack(alignment:.top) {
                        VStack {
                            Button(action: {
                                withAnimation {
                                    self.isPresented.toggle()
                                }
                                    }, label: {
                                Circle()
                                    .stroke(LinearGradient(gradient: Gradient(colors: [.purple, .orange]), startPoint: .top, endPoint: .bottom), lineWidth: 7.5)
                                    .frame(width: 100, height: 100)
                                    .overlay(
                                        Image("avatar")
                                            .resizable()
                                            .clipShape(Circle())
                                            .aspectRatio(contentMode: .fill))
                                
                            })
                            .frame(width: 100, height: 100)
                            .padding()
                            Text("Your Story")
                        }
                    }
                }
            }
            
            ZStack {
                CardView(story: model.storyCollection, presented: $isPresented)
            }
            .offset(x:0, y: self.isPresented ? 0 : UIApplication.shared.keyWindow?.frame.height ?? 0)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
