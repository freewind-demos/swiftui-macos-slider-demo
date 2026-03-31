# SwiftUI macOS Slider 滑块

## 简介

演示 SwiftUI 中 Slider 的用法，用于范围值的输入。

## 快速开始

```bash
cd swiftui-macos-slider-demo
xcodegen generate
open SwiftUISliderDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### 基础 Slider

```swift
@State private var value = 0.5

Slider(value: $value, in: 0...1)
```

### 整数 Slider

```swift
@State private var volume = 50

Slider(value: Binding(
    get: { Double(volume) },
    set: { volume = Int($0) }
), in: 0...100, step: 1)
```

### 带标签

```swift
Slider(value: $value, in: 0...1) {
    Text("标签")
} minimumValueLabel: {
    Text("最小")
} maximumValueLabel: {
    Text("最大")
}
```

## 完整示例

```swift
struct ContentView: View {
    @State private var volume = 50

    var body: some View {
        VStack {
            Text("音量: \(volume)%")
            Slider(value: Binding(
                get: { Double(volume) },
                set: { volume = Int($0) }
            ), in: 0...100, step: 1)
        }
    }
}
```

## 完整讲解（中文）

### Slider 的参数

- `value`: 绑定的值
- `in`: 范围，如 `0...100`
- `step`: 步长，如 `1` 表示整数
- `onEditingChanged`: 开始/结束拖动时的回调

### 使用场景

- 音量控制
- 亮度调节
- 透明度设置
- 任何范围值的输入
