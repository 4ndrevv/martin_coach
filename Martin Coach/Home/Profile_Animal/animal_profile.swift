//
//  animal_profile.swift
//  Martin Coach
//
//  Created by Nam on 04/08/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct animal_profile: View {
    @State var showSheet: Bool = false
    var body: some View {
            ScrollView{
                HStack{
                    Button(action: {
                        showSheet.toggle()
                    }){
                        animal_icon_circle()
                            .frame(width: 100, height: 100)
                    }
                    .halfSheet(showSheet: $showSheet) {
                        VStack(spacing: 0) { // Use spacing of 0 to eliminate default spacing
                            HStack {
                                Button(action: {
                                    showSheet.toggle()
                                }) {
                                    Text("Back")
                                }
                                Spacer()
                                Text("Animal photo")
                                Spacer()
                                Button(action: {
                                    // Add your save logic here
                                }) {
                                    Text("Save")
                                }
                            }
                            .padding(25)
                            Divider() // Optional divider to separate buttons from the content below
                            Spacer()
                            animal_icon_circle()
                                .frame(width: 100, height: 100)
                            Spacer()
                            // Add your sheet content below the buttons
                            // For example:
                            Button(action: {
                                
                            }){
                                Text("Change photo")
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(20)
                                    .background {
                                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                                            .fill(.yellow)
                                    }
                            }
                            .buttonStyle(PlainButtonStyle())
                            .padding()
                        }
                    }onEnd: {
                        print("Dissmis")
                    }
                    Spacer()
                    HStack(alignment: .center, spacing: 30){
                        Button(action: {
                            
                        }){
                            VStack{
                                Text("Coach")
                                    .bold()
                                Image("martin_coach_v2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Connected")
                                    .font(.system(size: 12))
                            }
                        }
                        
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            
                        }){
                            VStack{
                                Text("Owner")
                                    .bold()
                                Image("user_photo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Hugo")
                                    .font(.system(size: 12))
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            
                        }){
                            VStack{
                                Text("Docter")
                                    .bold()
                                Image("docter_photo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                                Text("Pierre")
                                    .font(.system(size: 12))
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(23)
                Button(action: {
                    
                }){
                    animal_identify()
                    
                }
                .buttonStyle(PlainButtonStyle())
                
                Button(action: {
                    
                }){
                    Text("Delete this animal")
                        .foregroundColor(Color.red)
                    
                }
                .buttonStyle(PlainButtonStyle())
                .padding()
            }
            .navigationTitle("Olivier")
            .navigationBarItems(trailing:
                                    Button(action: {
                                    }) {
                                        Text("Change")
                                    })
            .background(Color.gray.opacity(0.09))
        
    }
}

struct animal_profile_Previews: PreviewProvider {
    static var previews: some View {
        animal_profile()
    }
}

// Custom half sheet modifier...

extension View {
    
    //Binding show variable
    func halfSheet<SheetView: View>(showSheet: Binding<Bool>, @ViewBuilder sheetView: @escaping() ->SheetView, onEnd: @escaping ()->())-> some View{
        
        // using overlay or background to automatically use the swiftUI size only...
        return self
            .background(HalfSheetHelper(sheetView: sheetView(), showSheet: showSheet, onEnd: onEnd))
    }
}

// UIKit Integration
struct HalfSheetHelper<SheetView: View>: UIViewControllerRepresentable {
    var sheetView: SheetView
    @Binding var showSheet: Bool
    var onEnd: () -> ()
    let controller = UIViewController()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        controller.view.backgroundColor = .clear
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        if showSheet{
            //presenting  Modal View
            let sheetController = CustomHostingController(rootView: sheetView)
            sheetController.presentationController?.delegate = context.coordinator
            uiViewController.present(sheetController, animated: true)
            }else{
                // closing view button
                uiViewController.dismiss(animated: true)
            }
        }
    
    // Dissmis View Button
    class Coordinator: NSObject, UISheetPresentationControllerDelegate{
        var parent: HalfSheetHelper
        
        init(parent: HalfSheetHelper){
            self.parent = parent
        }
        func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
            parent.showSheet = false
            parent.onEnd()
        }
    }
}

//custom UIHostingController for halfSheet...
class CustomHostingController<Content: View>: UIHostingController<Content>{
    override func viewDidLoad(){
        //view.backgroundColor = .clear //function change color background de sheet
        
        //setting presentation controller properties...
        if let presentationController = presentationController as?
            UISheetPresentationController{
            presentationController.detents = [
                .medium(),
                .large()
            ]
            
            // to show brab portion
            presentationController.prefersGrabberVisible = true
        }
    }
}
