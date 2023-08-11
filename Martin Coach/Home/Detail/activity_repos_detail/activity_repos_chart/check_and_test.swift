
import SwiftUI

struct ContentView_2: View {
    @State private var isShowingImagePicker = false
    @State private var selectedImage: Image?
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color.blue)
                .frame(width: 150, height: 150)
                .onTapGesture {
                    isShowingImagePicker = true
                }
            
            Text("Tap to Add Photo")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        // Show camera
                    }) {
                        Image(systemName: "camera")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                    }
                    
                    Button(action: {
                        // Show photo library
                    }) {
                        Image(systemName: "photo")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                    }
                }
            }
            .padding()
            .opacity(isShowingImagePicker ? 1 : 0)
        }
        .sheet(isPresented: $isShowingImagePicker) {
            // Present the image picker here
            // You can use UIImagePickerController or a custom image picker
        }
    }
}

struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView_2()
        }
    }
}
