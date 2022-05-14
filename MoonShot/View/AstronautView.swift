//
//  AstronautView.swift
//  MoonShot
//
//  Created by Ahmet Kaan Kara on 14.05.2022.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView{
            VStack{
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                VStack(alignment:.leading){
                    Text(astronaut.description)
                }
                .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
        .preferredColorScheme(.dark)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static var previews: some View {
        AstronautView(astronaut: Astronaut(id:"", name: "", description: ""))
    }
}
