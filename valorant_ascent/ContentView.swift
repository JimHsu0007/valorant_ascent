//
//  ContentView.swift
//  ios_0925
//
//  Created by 徐浩哲 on 2024/9/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    // 設置地圖的初始位置和縮放級別
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 45.4408, longitude: 12.3155), // 威尼斯的經緯度
               span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05) // 縮放級別
           )

    var body: some View {
        ScrollView {
            // 第一個 VStack，帶有紅色背景
            VStack(alignment: .leading, spacing: 50) {
                Image("val")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)

                Text("特戰英豪地圖")
                    .font(.title)
                    .padding()
            }
            .frame(maxWidth: .infinity) // 讓 VStack 寬度充滿整個螢幕
            .background(Color.red) // 設置紅色背景
            .padding(0) // 移除多餘的 padding

            // 第二個 VStack，帶有地圖
            VStack {
                Image("asc")
                    .resizable()
                    .scaledToFill()
                    .padding()

                Text("義境空島")
                    .offset(y:-250)
                Text("參考現實中威尼斯")
                // 在這裡添加地圖顯示
                Map(coordinateRegion: $region)
                    .frame(height: 300) // 設定地圖高度為 300
                    .cornerRadius(10) // 給地圖添加圓角
                    .padding() // 增加內邊距
                Image("lou")
                    .resizable()
                Text("常用角色")
                    .font(.title3)
                Text("雙偵查")
            }
            ScrollView(.horizontal)
            {
                HStack{
                    VStack{
                        Image("jet")
                            .resizable()
                        Text("進攻專家，他們具備的能力，\n能讓他們在創造與對手交戰的機會的同時，\n變得更加主動且能自給自足。")
                                      .multilineTextAlignment(.center)
                                      .padding()

                                  
                    }
                    VStack
                    {
                        Image("sova")
                            .resizable()
                        Text("先鋒擅長收集資訊，\n並透過能力控制對手的動向。\n")
                                      .multilineTextAlignment(.center)
                                      .padding()
                        
                    }
                    VStack
                    {
                        Image("omen")
                            .resizable()
                        Text("控場者是使用煙幕控制戰場的專家。\n他們的能力可以阻礙對手的視線，\n在控制區域時提供隊友掩護。")
                        
                                      .multilineTextAlignment(.center)
                                      .padding()

                    }
                    VStack
                    {
                        
                        Image("kayo")
                            .resizable()
                        Text("使用他們的能力\n安全地在刁鑽的地點驅散和阻礙對手。\n也能擔任防守型角色。\n")
                                      .multilineTextAlignment(.center)
                                      .padding()

                    }
                    VStack
                    {
                        Image("kj")
                            .resizable()
                        Text("擅長使用自己發明的多種武器，\n好整以暇地守住戰場上的重要點位，\n使敵人無法越雷池一步。")
                                      .multilineTextAlignment(.center)
                                      .padding()

                    }
                }
                
            }
            .padding()
            Text("""
                 [影片](https://www.youtube.com/watch?v=LJYr3sbsX2s)
            """)
            .multilineTextAlignment(.center)
            .padding()
            Text("還有十張圖\nto be countinue")
                .font(.largeTitle)
        }
        
        .ignoresSafeArea() // 讓內容延伸到整個螢幕
    }
}

#Preview {
    ContentView()
}

