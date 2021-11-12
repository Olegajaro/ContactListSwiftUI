//
//  ContactDetail.swift
//  ContactListSwiftUI
//
//  Created by Олег Федоров on 11.11.2021.
//

import SwiftUI

struct ContactDetail: View {
    
    let person: Person
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 200, height: 200)
            
            Divider()
            
            ContactDetailSection(
                phone: person.phone,
                email: person.email
            )
            
            Spacer()
        }
        .padding()
        .navigationTitle(person.fullName)
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(person: Person.getContactList()[0])
    }
}
