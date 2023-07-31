//
//  ContentView.swift
//  SecondLab
//
//  Created by Sara Sd on 14/01/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var score: Int = 0
    @State private var contentOpacity: Double = 0
    
    var body: some View {
        Group{
            ScrollView{
                VStack {
                    Image("swift_logo")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(30)
                    
                    Text("Hello, SwiftUI!")
                        .font(.title)
                        .foregroundColor(.blue)
                    
                    Text("Welcome Sara to SwiftUI")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom)
                    
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.red)
                    
                    Text("Enjoy")
                        .font(.body)
                        .foregroundColor(.black)
                        .padding(.top)
                    
                    Text("Hello Sara!")
                        .opacity(contentOpacity)
                }
                .onAppear {
                    withAnimation(.easeIn(duration: 1)) {
                        contentOpacity = 1
                        
                    }
                }
                
                VStack{
                    Text("Score")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("\(score)")
                        .font(.system(size: 50))
                        .padding(.vertical)
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            score -= 1
                        }) {
                            Image(systemName: "minus.square")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        
                        Button(action: {
                            score += 1
                        }) {
                            Image(systemName: "plus.square")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                    }
                }
                .foregroundColor(.blue)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(1...20, id: \.self) { index in
                            Text("Item \(index)")
                                .font(.title)
                                .frame(width: 100, height: 50)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .padding()
                        }
                    }
                }
                .padding()
            }
            .background(Color.gray.opacity(0.1))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

