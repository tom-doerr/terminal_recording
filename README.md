<div align="center">

# Terminal Recording Tool 🎥

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
![GitHub last commit](https://img.shields.io/github/last-commit/tomdoerr/terminal-recording)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/tomdoerr/terminal-recording/graphs/commit-activity)

A sleek command-line tool to record terminal sessions and automatically convert them to GIF animations using Terminalizer.

[Features](#features) • [Installation](#installation) • [Usage](#usage) • [Contributing](#contributing)

</div>

## ✨ Features

- 📹 Records terminal sessions with a single command
- 🎬 Automatically converts recordings to GIF
- 🔗 Creates symlinks to latest recording and GIF
- 📁 Organized storage in ~/Videos/terminal_recordings
- 🚀 Simple installation process

## 🔧 Prerequisites

- Node.js and npm
- Terminalizer: 
  ```bash
  npm install -g terminalizer
  ```

## 📥 Installation

```bash
sudo ./install.sh
```

## 🚀 Usage

Simply run:
```bash
record
```

The script will:
1. 📁 Create Videos/terminal_recordings directory if needed
2. ⚡ Start recording (press Ctrl+D to stop)
3. 🎨 Automatically render the recording to GIF
4. 🔄 Create symlinks to latest files

## 📂 Output Files

Your recordings will be saved as:
- 📼 Recording: `~/Videos/terminal_recordings/recording_TIMESTAMP.yml`
- 🎞️ GIF: `~/Videos/terminal_recordings/recording_TIMESTAMP.gif`
- 🔗 Latest recording symlink: `~/Videos/terminal_recordings/latest_recording.yml`
- 🔗 Latest GIF symlink: `~/Videos/terminal_recordings/latest.gif`

## 🤝 Contributing

Contributions are welcome! Please read our [Contributing Guide](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details

---

<div align="center">
Made with ❤️ by <a href="https://github.com/tomdoerr">Tom Dörr</a>
</div>
