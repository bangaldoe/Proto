//
//  DetailsView.swift
//  Proto (iOS)
//
//  Created by kakao_ent on 2023/01/20.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack {
            DetailTopProfileView()
            Spacer()
            TimeLineView()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
