//
//  DetailsPage.swift
//  Day3
//
//  Created by Bader Alsabah on 5/5/20.
//  Copyright © 2020 Bader Alsabah. All rights reserved.
//

import SwiftUI

struct DetailsPage: View {
    @Binding var Counter: Int
    var athkar: String
    var body: some View {
            VStack{
            Text("\(athkar)")
                .onTapGesture {
                    self.Counter += 1
                }
                Text("\(Counter)").frame(width: 50, height: 50).background(Color.gray).clipShape(Circle()).offset(y: 50)
        }.padding()
    }
}


