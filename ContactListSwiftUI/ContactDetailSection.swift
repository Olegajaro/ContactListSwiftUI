//
//  PersonDetailRow.swift
//  ContactListSwiftUI
//
//  Created by Олег Федоров on 11.11.2021.
//

import SwiftUI

struct ContactDetailSection: View {
    
    let phone: String
    let email: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text(phone)
                Spacer()
            }
            
            Divider()
            
            HStack {
                Image(systemName: "tray")
                    .foregroundColor(.blue)
                Text(email)
                Spacer()
            }
        }
        .font(.title3)
    }
}

struct ContactDetailSection_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailSection(phone: "123", email: "123@mail.ru")
    }
}
