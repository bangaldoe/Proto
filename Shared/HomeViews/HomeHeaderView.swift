//
//  HomeHeaderView.swift
//  Proto
//
//  Created by USER on 2023/01/08.
//

import SwiftUI

struct HomeHeaderView: View {
    let user: User
    var body: some View {
        HStack {
            Image(user.profileImage)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding()
            VStack(alignment: .leading) {
                Text("Good Morning,")
                Text(user.name)
            }
            Spacer()
            Button(action: {}) {
                Label("", systemImage: "plus.circle")
                    .font(.system(size: 40))
                    .foregroundColor(.gray)
            }.padding()
        }
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView(user: User.sampleData)
    }
}
