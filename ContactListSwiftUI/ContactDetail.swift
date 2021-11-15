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
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding([.bottom, .top])
                Spacer()
            }
            
            Label(person.phone, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(person: Person.getContactList().first!)
    }
}
