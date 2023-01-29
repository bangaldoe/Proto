//
//  DetailTopProfile.swift
//  Proto (iOS)
//
//  Created by kakao_ent on 2023/01/06.
//

import SwiftUI

struct DetailTopProfileView: View {
    var body: some View {
        HStack(spacing: 20) {
            Image("placeholder")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("plant name").fontWeight(.bold)
                    Text("스킨답서스")
                }
                HStack {
                    Text("coming date").fontWeight(.bold)
                    Text("2023-01-06")
                }
                HStack {
                    Text("watering period").fontWeight(.bold)
                    Text("3d")
                }
            }
        }
    }
}

struct DetailTopProfileView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTopProfileView()
    }
}
