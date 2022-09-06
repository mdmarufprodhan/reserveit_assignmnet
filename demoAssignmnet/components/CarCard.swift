//
//  CarCard.swift
//  demoAssignmnet
//
//  Created by Md Maruf Prodhan on 6/9/22.
//

import SwiftUI

struct CarCard: View {
    var body: some View {
        VStack(alignment:.leading, spacing: 0){
            Image("bigCar")
                .resizable()
                .frame(width: 230, height: 141, alignment: .leading)
                .background(.gray.opacity(0.4))
            VStack(alignment: .leading){
                HStack{
                    Text("Race Car")
                    Spacer()
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                    Text("3.5")
                    Text("(4k+)")
                    Image("saved")
                }
                HStack{
                    Image("location")
                        .renderingMode(.template)
                        .foregroundColor(.black)
                    Text("Dhanmondhi 27")
                }
                Text("$345")
                    .bold()
            }
            .padding()
            .frame(width: 230, alignment: .leading)
            .background(.white)
        }
    }
}

struct CarCard_Previews: PreviewProvider {
    static var previews: some View {
        CarCard()
    }
}
