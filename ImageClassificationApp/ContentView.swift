//
//  ContentView.swift
//  ImageClassificationApp
//
//  Created by student on 9/13/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            HStack{
                Text("Prediction: ")
                Text(viewModel.prediction)
            }
            HStack{
                Text("Confidence: ")
                Text(viewModel.confidence)
            }
            
            CameraPreview(session: viewModel.session)
                .onAppear{
                    dispatchQueue.global().async{
                        self.viewModel.setupSession()}
                }
        }
        
    }
}

#Preview {
    ContentView()
}
