//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Rahul on 07/11/24.
//

import SwiftUI

final class  FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}


