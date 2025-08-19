# Oburix

**Oburix** is an eBPF-based runtime agent for Endpoint Detection and Response (EDR). It targets Linux systems and continues to rely on eBPF for lightweight, kernel-observed telemetry collection.

Repository and organization:

- Organization: https://github.com/aessecurity
- Repository: https://github.com/aessecurity/oburix

## ✨ Features

- 🐧 Linux support via native eBPF programs
- 📡 Real-time process, file, and network activity monitoring
- 🚨 Rule-based detection engine (YAML rules in `rules/`)
- 🔥 Lightweight, low-overhead architecture
- 📦 Integrates easily into SIEM/XDR pipelines

## Important changes

- The project no longer uses Rust. Any previous Rust components were removed.
- A new KernelScript format is used for certain automation/config tasks: files with the `.ks` extension ("KernelScript"). See the repository for examples and current usage.
- Development step-by-step instructions have been removed from this README. For low-level artifacts and build files, inspect the `runtime/` directory (for example `runtime/CMakeLists.txt`).

> Note: Oburix remains eBPF-based; the change is internal (tooling and scripting), not the telemetry backend.

## 📦 Build / Runtime

Low-level build artifacts and native components are located under `runtime/`. This repository no longer keeps full step-by-step development instructions in the top-level README; consult the corresponding subdirectory READMEs or CMake files for details.

## 🧠 How It Works

Oburix uses eBPF to observe system-level events without intrusive kernel modules. It runs in userspace and collects telemetry from:

- Process execution
- Network connections
- File system activity
- Custom rules and detection logic (YAML rules in `rules/`)

## 🚧 Status

Oburix is in active development. Use with caution and feel free to provide feedback or contributions.

## 🤝 Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss your design.

If you contribute KernelScript files (`*.ks`), document their intended runtime location and interpreter in your PR.

## 📣 Contact

Start a discussion or open an issue on the GitHub repository: https://github.com/aessecurity/oburix

## 📄 License

Licensed under the **MIT License**. See the [LICENSE](./LICENSE) file for details.
