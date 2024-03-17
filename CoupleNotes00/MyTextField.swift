//
//  MyTextField.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/17.
//

import SwiftUI

struct MyTextField: View {
    
    @State private var userID: String = ""
    @State private var passwordValue: String = ""

    
    var body: some View {

        VStack(spacing: 10) {
            HStack {
                TextField("ID", text: $userID)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                Button(action: {
                    self.userID = ""
                }, label: {
                    if(self.userID.count > 0) {
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(.secondary)
                            .font(.system(size: 25))
                    }
                })
            }
            HStack {
                SecureField("Password", text: $passwordValue)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                if (self.passwordValue.count > 0 ) {
                    Button(action: {
                        self.passwordValue = ""
                    }, label: {
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(.secondary)
                            .font(.system(size: 25))
                    })

                }

            }
            Text("password : \(passwordValue)")
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    MyTextField()
}
