import SwiftUI

struct ContentView: View {
    @State private var value = 0.5
    @State private var volume = 50
    @State private var rangeValue = 0.0

    var body: some View {
        Form {
            Section("基础 Slider") {
                VStack(alignment: .leading, spacing: 10) {
                    Text("当前值: \(value, specifier: "%.2f")")
                    Slider(value: $value, in: 0...1)
                    Slider(value: $value, in: 0...1)
                        .disabled(true)
                }
            }

            Section("整数 Slider") {
                VStack(alignment: .leading, spacing: 10) {
                    Text("音量: \(volume)%")
                    Slider(value: Binding(
                        get: { Double(volume) },
                        set: { volume = Int($0) }
                    ), in: 0...100, step: 1)

                    HStack {
                        Text("0")
                        Slider(value: Binding(
                            get: { Double(volume) },
                            set: { volume = Int($0) }
                        ), in: 0...100, step: 1)
                        Text("100")
                    }
                }
            }

            Section("带标签") {
                Slider(value: $value, in: 0...1) {
                    Text("透明度")
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("1")
                }
            }

            Section("自定义样式") {
                VStack(spacing: 20) {
                    Text("当前值: \(rangeValue, specifier: "%.1f")")
                    HStack {
                        Text("A")
                        Slider(value: $rangeValue, in: 0...10)
                        Text("B")
                    }
                }
            }
        }
        .formStyle(.grouped)
        .padding()
    }
}
