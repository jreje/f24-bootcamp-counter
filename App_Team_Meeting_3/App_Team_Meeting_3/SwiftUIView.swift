//
//  SwiftUIView.swift
//  App_Team_Meeting_3
//
//  Created by Julianne Rejesus  on 9/24/24.
//

import SwiftUI

struct SwiftUIView: View {
    @Binding var maxCount: Int
    var body: some View {
        NavigationStack {
            
            // Stepper
            Stepper("Max Count: \(maxCount)", value: $maxCount)
                .font(.title)
                .padding()
                .background(Color.white, in: .rect(cornerRadius: 10))
                .padding()
            
        }
    }
}

#Preview {
    SwiftUIView(maxCount: .constant(5))
}
