//
//  ContentView.swift
//  first-app-swift
//
//  Created by Jose Manuel Barba Sánchez on 3/11/21.
//

import SwiftUI

extension Image {
    func imageModifier () -> some View {
        self
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 6)
    }
    func iconModifier() -> some View {
        self
            .imageModifier()
            .shadow(radius: 7)
            .frame(maxWidth: 120)
            .foregroundColor(.pink)
            .opacity(0.6)
    }
}

extension Text {
    func textModifier() -> some View {
        self
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.purple)
    }
}

struct ContentView: View {
    private let imageUrl : String = "https://picsum.photos/250?image=12"

    var body: some View {
        
        //MARK: - 1. URL
        //AsyncImage(url: URL(string: imageUrl), scale: 0.7)
        
        
        //MARK: - 2. SOURCE IMAGE
        //Image("source-academy")
        
        
        //MARK: - 3. PLACEHOLDER
        /*AsyncImage(url: URL(string: imageUrl)){
            image in image
        } placeholder: {
            Image(systemName: "ant.circle.fill")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
                .frame(maxWidth: 120)
                .foregroundColor(.pink)
                .opacity(0.6)
            
        }*/
        
        
        //MARK: - 4.PHASE
        /*AsyncImage(url: URL(string: "https://picsum.photos/250?image=12"), scale: 0.9){
            phase in
            //SUCCESS: Imagen cargada satisfactoriamente
            //FAILURE: No es posible cargar la imagen
            //EMPTY: La imagen no es cargada
            if let image = phase.image{
                image.imageModifier()
                    
            } else if phase.error != nil {
                Image(systemName: "ant.circle.fill").iconModifier()
                
            } else {
                Image(systemName: "ant.circle.fill").iconModifier()
                    
            }
        }.padding(.horizontal, 50.0)
        */
        
        //MARK: - 5 ANIMATION
        
        VStack {
            AsyncImage(url: URL(string: imageUrl), transaction: Transaction(animation: .spring(response: 0.4, dampingFraction: 0.7, blendDuration: 0.3))){ phase in switch phase {
            case .success(let image):
                image
                    .imageModifier()
                    .transition(.scale)
            case .failure(_):
                Image(systemName: "ant.circle.fill").iconModifier()
            case .empty:
                Image(systemName: "ant.circle.fill").iconModifier()

            @unknown default:
                ProgressView()
            }
                
            }.padding(.horizontal, 50.0)
            
            Text("Hola me llamo jose!!!")
                .textModifier()
            Text("¡Encantado de conocerte!")
                .foregroundColor(Color.pink)

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
