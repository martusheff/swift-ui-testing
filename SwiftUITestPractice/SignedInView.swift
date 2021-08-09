//
//  SignedInView.swift
//  SwiftUITestPractice
//
//  Created by andronick martusheff on 8/9/21.
//

import SwiftUI

struct SignedInView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        Button(action: {
            viewModel.signedIn = false
        }, label: {
            Text("Sign Out")
                .frame(width: 75, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                .font(.headline)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(12)
                
        }).padding(.top, 12)
        
    }
}

struct SignedInView_Previews: PreviewProvider {
    static var previews: some View {
        SignedInView()
    }
}
