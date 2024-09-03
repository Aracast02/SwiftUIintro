//
//  AddContactView.swift
//  SwiftUIintro
//
//  Created by Arantza Castro Dessavre on 28/08/24.
//

import SwiftUI

struct AddContactView: View {
    @Environment (\.presentationMode) var presentationMode
    @Binding var contact:Contact
    
    var body: some View {
        NavigationView(){
            VStack{
                ZStack{
                    Color.gray
                        .ignoresSafeArea()
                        .frame(height: 180)
                        .opacity(0.1)
                    Circle()
                        .fill(contact.color)
                        .opacity(0.3)
                        .frame(width: 150,height: 150)
                    if(contact.icon == "?"){
                        Text(contact.icon)
                            .bold()
                            .opacity(0.3)
                            .font(.system(size: 100))
                            .ignoresSafeArea()
                    }else{
                        Text(contact.icon)
                            .bold()
                            .font(.system(size: 100))
                            .ignoresSafeArea()
                    }
                }
                Form{
                    Section(header: Text("Contact Data")){
                        TextField("Name", text: $contact.name)
                        TextField("Phone number", text: $contact.phoneNumber)
                        ColorPicker("Contact color", selection: $contact.color)
                        TextField("Contact Icon", text: $contact.icon)
                    }
                    
                }
            }
            .toolbar{
                ToolbarItem(placement: .cancellationAction){
                    Button("Cancel"){
                        presentationMode.wrappedValue.dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction){
                    Button("Guardar"){
                        presentationMode.wrappedValue.dismiss()
                    }
                    .disabled(contact.name.isEmpty || contact.phoneNumber.isEmpty)
                }
            }
        }
    }
}

#Preview {
    AddContactView(contact: .constant(Contact(name: "", phoneNumber: "", icon: "❤️", color: .gray)))
}
