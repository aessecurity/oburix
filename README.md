# Oburix

**Oburix** is an eBPF-based runtime agent for Endpoint Detection and Response (EDR), designed for **Linux** and **Windows NT** systems.

## ✨ Features

- 🐧 Linux support via native eBPF programs  
- 🪟 Windows NT support via eBPF for Windows  
- 📡 Real-time process, file, and network activity monitoring  
- 🚨 Rule-based detection engine  
- 🔥 Lightweight, low-overhead architecture  
- 📦 Integrates easily into SIEM/XDR pipelines  

## 📦 Installation

Coming soon.  
Binaries and setup instructions for Linux and Windows will be provided here.

## 🧠 How It Works

Oburix uses eBPF to observe system-level events without intrusive kernel modules. It runs in userspace and collects telemetry from:

- Process execution  
- Network connections  
- File system activity  
- Custom rules and detection logic  

## ⚙️ Configuration

Detection behavior is defined through simple YAML-based rules:

```yaml
rules:
  - id: suspicious-port
    type: network
    condition:
      dst_port: 4444
      protocol: tcp
    action: alert

  - id: sensitive-file-read
    type: file
    condition:
      path: "/etc/passwd"
      access: read
    action: alert
```

## 🚧 Status

Oburix is in active development.  
Use with caution and feel free to provide feedback or contributions.

## 🤝 Contributing

Pull requests are welcome!  
For major changes, please open an issue first to discuss your ideas.

## 📣 Contact

Questions, ideas, or collaborations?  
Start a discussion or open an issue on GitHub.

## 📄 License

Licensed under the **MIT License**.  
See the [LICENSE](./LICENSE) file for details.
