//
//  ContentView.swift
//  Day3
//
//  Created by Bader Alsabah on 5/5/20.
//  Copyright © 2020 Bader Alsabah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var Counter = [0,0,0]
    var athkar = ["اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ ۚ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ ۚ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ ۗ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلَّا بِإِذْنِهِ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلَّا بِمَا شَاءَ ۚ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ ۖ وَلَا يَئُودُهُ حِفْظُهُمَا ۚ وَهُوَ الْعَلِيُّ الْعَظِيمُ","الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ (2) الرَّحْمَنِ الرَّحِيمِ (3) مَالِكِ يَوْمِ الدِّينِ (4) إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ (5) اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ (6) صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ (7)",
    ]
    var body: some View {
        NavigationView{
            
            List{
                
                NavigationLink(destination: DetailsPage(Counter: $Counter[0], athkar: athkar[0])) {
                    OneRow(Counter: $Counter[0], athkar: athkar[0])
                }
                NavigationLink(destination: DetailsPage(Counter: $Counter[1], athkar: athkar[1])) {
                    OneRow(Counter: $Counter[1], athkar: athkar[1])
                }

            }.navigationBarTitle("الآيات")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct OneRow: View {
   @Binding var Counter: Int
    var athkar: String
    var body: some View {
        VStack{
            
            Text("\(athkar)")
            HStack{
                Text("\(Counter)")
                    .frame(width: 50, height: 50)
                    .background(Color.gray)
                    .clipShape(Circle())
                Text("Reset").padding()
                    .onTapGesture {
                        self.Counter = 0
                }
            }
        }
    }
}
