//
//  SideMenuHeader.swift
//  OnboardingFlow
//
//  Created by Jonathan Duval on 8/31/24.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        HStack{
            Image("leland-charger-main-logo-60")
            VStack(alignment: .leading, spacing: 6){
                Text("Charger Account")
                    .font(.subheadline)
                Text("lelandchargeraccount@")
                    .font(.footnote)
                    .tint(.gray)
                Text("gmail.com")
                    .font(.footnote)
                    .tint(.gray)
            }

        }
    }
}

#Preview {
    SideMenuHeaderView()
}