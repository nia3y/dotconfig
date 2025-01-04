# Arch Linux 问题指南

## 外接显示器无声音怎么办

安装 `alsa-utils`，通过 `alsamixer` 使用 `m` 按键解除静音，通过 aplay -l 获取所有设备， `aplay -D plughw:0,7 /usr/share/sounds/alsa/Noise.wav` 命令 测试，并把有声音的 card、device 写入 ~/.asourdrc 中
