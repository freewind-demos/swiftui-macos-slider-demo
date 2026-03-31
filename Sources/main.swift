import Cocoa

@main
struct SliderApp: App {
    var body: some Scene {
        Window("Slider 滑块", id: "main") {
            ContentView()
        }
        .defaultSize(width: 400, height: 400)
    }
}
