//
//  FramworkGridView.swift
//  Apple-Frameworks
//
//  Created by Rahul on 06/11/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let column:[GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())
                             
                             
    ]
    
    
    var body: some View {
        
        
        NavigationView {
            
            
            List {
                ForEach(MockData.frameworks) {framework in
                    NavigationLink( destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                        FrameworkTitleView(framework: framework)
                    }
                    
                    .onTapGesture {
                        viewModel.selectedFramework = framework
                    }
                    
                }
            }
            
            .navigationBarTitle(" 🍎 Frameworks")
           
        }
        
    }
}


#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}


