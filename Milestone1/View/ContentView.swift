//
//  ContentView.swift
//  Milestone1
//
//  Created by Zac Cripps on 4/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    ///is viewd by the viewmodel for any changes done to the array
    @ObservedObject var viewModel:ViewModel
    
    ///shows the MasterView with then utalizes the ViewModel file
    var body: some View{
        MasterView(viewModel: viewModel)
    }
}
