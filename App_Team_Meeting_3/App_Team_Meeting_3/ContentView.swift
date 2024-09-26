//
//  ContentView.swift
//  App_Team_Meeting_3
//
//  Created by Julianne Rejesus  on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var people = 0
    @State private var maxCount: Int = 10
    
    var percentFull: Double {
        Double(people) / Double(maxCount)
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Rectangle().fill(.blue.gradient)
                    .ignoresSafeArea()
                Color.red
                    .ignoresSafeArea()
                    .opacity(percentFull)
                
                VStack {
                    HStack {
                        Text("\(people) People")
                            .foregroundColor(.white)
                            .font(.system(size: 50))
                        
                        Spacer()
                        
                        NavigationLink {
                            SwiftUIView(maxCount: $maxCount)
                        } label: {
                            Image(systemName: "gear")
                                .foregroundColor(.white)
                                .font(.system(size: 75))
                        }
                    }
                    
                    Spacer()
                    
                    // Buttons +
                    HStack {
                        Button {
                            if (people != 0){
                                people -= 1
                            }
                        } label: {
                            Image(systemName: "minus")
                                .foregroundColor(.white)
                                .font(.system(size: 75))
                        }
                        
                        Spacer()
                        
                        Button {
                            if (people < maxCount){
                                people += 1
                            }
                        } label: {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .font(.system(size: 75))
                        }
                    }
                    .padding(.horizontal, 35)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
