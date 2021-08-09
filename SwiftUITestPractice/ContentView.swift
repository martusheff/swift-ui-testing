//
//  ContentView.swift
//  SwiftUITestPractice
//
//  Created by andronick martusheff on 8/9/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AppViewModel

    
    var body: some View {
        NavigationView {
            if viewModel.signedIn {
                SignedInView()
            } else {
                SignInView()
            }
        }

        .onAppear {
            viewModel.signedIn = viewModel.signedIn
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
