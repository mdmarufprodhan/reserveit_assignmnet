//
//  homeScreen.swift
//  demoAssignmnet
//
//  Created by Md Maruf Prodhan on 5/9/22.
//

import SwiftUI

struct homeScreen: View {
    @State var text : String  = ""
    @State var width = UIScreen.main.bounds.width/1
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ZStack{
                Image("Ellipse")
                HStack{
                    Button {
                        print("Dhaka")
                    } label: {
                        HStack{
                            Image("location")
                            VStack(alignment:.leading){
                                Text("Dhanmondhi")
                                Text("Dhaka")
                                    .font(.system(size: 12))
                            }
                            .foregroundColor(.white)
                            Spacer()
                            
                        }
                        .padding(.leading, 20)
                    }
                    Spacer()
                    Button {
                        print("reaminder")
                    } label: {
                        Image("remainder")
                            .resizable()
                            .frame(width: 18, height: 18, alignment: .center)
                            .padding(.trailing,20)
                    }
                }
            }
            SearchBar(text: $text)
            Spacer()
            TabView {
                Image("car")
                    .resizable()
                    .frame(width: width, height: 120, alignment: .center)
//                    .aspectRatio(contentMode: .fill)

                Image("car")
                    .resizable()
                    .frame(width: width, height: 120, alignment: .center)
//                    .aspectRatio(contentMode: .fill)

                Image("car")
                    .resizable()
                    .frame(width: width, height: 120, alignment: .center)
//                    .aspectRatio(contentMode: .fill)

                
            }
            .frame(width: width, height: 140, alignment: .center)
            .tabViewStyle(.page)
              
            Spacer()
            ZStack(alignment: .leading){
                HStack{
                    Image("eclipshalf")
                    Spacer()
                    Image("eclipshalf")
                        .rotationEffect(Angle(degrees: 180.0))
                }
                VStack(alignment:.leading){
                    Text("Catagories")
                        .bold()
                        .padding()
                    ScrollView(.horizontal){
                        HStack{
                            Image("(blackcar")
                            Image("blackcar")
                            Image("blackcar")
                            Image("blackcar")
                            Image("blackcar")
                            Image("blackcar")
                            Image("blackcar")
                            Image("blackcar")
                            Image("blackcar")
                            
                        }
                    }
                }
                .offset(y:-20)
            }
            Spacer()
            VStack(alignment: .leading){
                Text("Race Car")
                    .bold()
                    .padding()
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        CarCard()
                        CarCard()
                        CarCard()
                        CarCard()
                        CarCard()
                        CarCard()
                        CarCard()
                        CarCard()
                        
                    }
                }
            }
        }
        
    }

}

struct homeScreen_Previews: PreviewProvider {
    static var previews: some View {
        homeScreen()
    }
}
