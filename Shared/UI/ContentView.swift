//
//  ContentView.swift
//  Shared
//
//  Created by 游宗諭 on 2020/8/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View
    {
        NavigationView {
            
            List(1..<51) { index in
                ChatCell(id: index)
                    .contextMenu {
                        Button(action: {
                            // delete the selected restaurant
                        }) {
                            HStack {
                                Text("Delete")
                                Image(systemName: "trash")
                            }
                        }
                        
                        Button(action: {
                            // mark the selected restaurant as favorite
                        }) {
                            HStack {
                                Text("Favorite")
                                Image(systemName: "star")
                            }
                        }
                    }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle(
                Text("聊天")
            )
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Button("Some", action: {
                    print(#line)
                }),
                trailing:
                    Image(systemName: "square.and.pencil")
                    .contextMenu(/*@START_MENU_TOKEN@*/ContextMenu(menuItems: {
                        Text("Menu Item 1")
                        Text("Menu Item 2")
                        Text("Menu Item 3")
                    })/*@END_MENU_TOKEN@*/)
            )
            
        }
        .onTapGesture {
            print(#line)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
