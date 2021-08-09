//
//  ContentView.swift
//  SwiftUITestPractice
//
//  Created by andronick martusheff on 8/9/21.
//

import SwiftUI



struct SignInView: View {
    
    @State var enteredUser = ""
    @State var enteredPw = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    
    var body: some View {
        
        
        
        VStack {
            
            Image("xctest")
                .padding(.top, 50)
            
            Text("Username")
                
            TextField("", text: $enteredUser)
                .frame(width: 200, height: 0)
                .padding()
                .background(Color.gray)
                .font(.headline)
                .foregroundColor(.white)
                .cornerRadius(10)
                .multilineTextAlignment(.center)
                .autocapitalization(.none)
            
            
            Text("Password")
                
            TextField("", text: $enteredPw)
                .frame(width: 200, height: 0)
                .padding()
                .background(Color.gray)
                .font(.headline)
                .foregroundColor(.white)
                .cornerRadius(10)
                .multilineTextAlignment(.center)

            Button(action: {
                viewModel.signIn(username: enteredUser, password: enteredPw)
            }, label: {
                Text("Sign In")
                    .frame(width: 75, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                    .font(.headline)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(12)
            }).padding(.top, 12)
            
            Spacer()
            
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
