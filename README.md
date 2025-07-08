# Shell Scripting Learning Repository

A comprehensive collection of shell scripting examples and utilities designed for learning and practical DevOps automation. This repository contains progressive tutorials and real-world scripts for system administration and automation tasks.

## Overview

This repository is structured as a learning path through shell scripting fundamentals to advanced DevOps automation. Each folder contains focused examples with detailed explanations and README files to guide your learning journey.

## 📚 Learning Path

### 🔤 **Fundamentals**
- **[count-characters](./count-characters/)** - Basic text processing and character counting
  - String manipulation techniques
  - Character counting algorithms
  - Text analysis examples

### 🎓 **Core Concepts** 
- **[0.01-command-line](./count-characters/0.01-command-line/)** - Command line basics and argument handling
- **[0.02-script](./count-characters/0.02-script/)** - Basic script structure and execution
- **[0.03-variables](./count-characters/0.03-variables/)** - Variable declaration and usage
- **[0.04-arguments](./count-characters/0.04-arguments/)** - Command line argument processing
- **[0.05-user-inputs](./count-characters/0.05-user-inputs/)** - Interactive user input handling
- **[0.05.1-user-inputs-fallback](./count-characters/0.05.1-user-inputs-fallback/)** - Input validation and fallback mechanisms
- **[0.06-validation](./count-characters/0.06-validation/)** - Input validation techniques
- **[0.07-loops](./count-characters/0.07-loops/)** - Loop constructs and iteration
- **[0.08-functions](./count-characters/0.08-functions/)** - Function definition and usage
- **[0.09-modular](./count-characters/0.09-modular/)** - Modular script design

### 🛠️ **Advanced Features**
- **[0.10-logging](./count-characters/0.10-logging/)** - Logging best practices
- **[0.10.1-logging-to-file](./count-characters/0.10.1-logging-to-file/)** - File-based logging systems
- **[0.11-getopts](./count-characters/0.11-getopts/)** - Advanced option parsing
- **[0.11.1-getopts-help-and-usage](./count-characters/0.11.1-getopts-help-and-usage/)** - Help systems and usage documentation
- **[0.12-error-handling](./count-characters/0.12-error-handling/)** - Robust error handling techniques
- **[0.13-tests](./count-characters/0.13-tests/)** - Script testing methodologies
- **[0.14-cli-tool](./count-characters/0.14-cli-tool/)** - Building command-line tools

###  **Practical Applications**
- **[1.0-countchar](./count-characters/1.0-countchar/)** - Character counting implementation
- **[1.1-countchar-getopts](./count-characters/1.1-countchar-getopts/)** - Advanced character counter with options

## **DevOps Utilities**

###  **Administration**
- **[create-accounts](./create-accounts/)** - User account management automation
  - Automated user creation scripts
  - Batch account provisioning
  - Security policy enforcement

### **Maintenance Scripts**
- **[log-cleanup](./log-cleanup/)** - Log file management and cleanup
  - Automated log rotation
  - Disk space management
  - Archive and cleanup policies

### **Monitoring & Health Checks**
- **[node-health](./node-health/)** - System health monitoring
  - Resource usage monitoring
  - Performance metrics collection
  - Health status reporting

- **[service-monitor](./service-monitor/)** - Service monitoring and management
  - Service status checking
  - Automated service restart
  - Alert and notification systems

## Getting Started

### Prerequisites
- Linux/Unix environment
- Bash shell (version 4.0 or higher)
- Basic command line knowledge
- Text editor of choice

### Installation
```bash
# Clone the repository
git clone https://github.com/abcofdevops/shell-scripting.git
cd shell-scripting

# Make scripts executable
find . -name "*.sh" -type f -exec chmod +x {} \;
```

### Learning Approach
1. **Start with fundamentals** - Begin with the numbered folders (0.01-0.14)
2. **Practice progressively** - Work through each example in order
3. **Apply knowledge** - Use the practical applications (1.0+)
4. **Implement solutions** - Try the DevOps utilities for real scenarios

## Usage Examples

### Basic Script Execution
```bash
# Navigate to a specific topic
cd count-characters/0.02-script

# Read the README for instructions
cat README.md

# Run the example script
./script.sh
```

### DevOps Utilities
```bash
# User account creation
cd create-accounts
./create_users.sh

# Log cleanup
cd log-cleanup
./log_cleanup.sh

# Service monitoring
cd service-monitor
./service_monitor.sh
```

## 📋 Repository Structure

```
shell-scripting/
├── count-characters/          # Text processing fundamentals
│   ├── 0.01-command-line/     # Command line basics
│   ├── 0.02-script/           # Script fundamentals
│   ├── 0.03-variables/        # Variable handling
│   ├── 0.04-arguments/        # Argument processing
│   ├── 0.05-user-inputs/      # User interaction
│   ├── 0.06-validation/       # Input validation
│   ├── 0.07-loops/            # Loop constructs
│   ├── 0.08-functions/        # Function design
│   ├── 0.09-modular/          # Modular programming
│   ├── 0.10-logging/          # Logging systems
│   ├── 0.11-getopts/          # Option parsing
│   ├── 0.12-error-handling/   # Error management
│   ├── 0.13-tests/            # Testing strategies
│   ├── 0.14-cli-tool/         # CLI development
│   ├── 1.0-countchar/         # Practical implementation
│   └── 1.1-countchar-getopts/ # Advanced implementation
├── create-accounts/           # User management scripts
├── log-cleanup/               # Log maintenance utilities
├── node-health/               # System health monitoring
└── service-monitor/           # Service management tools
```

## 🎯 Learning Objectives

By working through this repository, you will learn:

### **Shell Scripting Fundamentals**
- Command line argument processing
- Variable manipulation and scope
- User input handling and validation
- Control structures (loops, conditionals)
- Function design and modular programming

### **Advanced Scripting Techniques**
- Professional logging systems
- Robust error handling
- Option parsing with getopts
- Script testing methodologies
- CLI tool development

### **DevOps Applications**
- System administration automation
- User account management
- Log file maintenance
- Service monitoring and management
- Health checking and alerting

## Best Practices Demonstrated

- **Error Handling**: Comprehensive error checking and graceful failure handling
- **Logging**: Structured logging with different levels and file output
- **Modularity**: Reusable functions and modular script design
- **Documentation**: Clear comments and usage instructions
- **Testing**: Script validation and testing approaches
- **Security**: Safe input handling and privilege management

## 🤝 Contributing

We welcome contributions to improve the learning materials:

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/new-example`
3. **Add your improvements**: New examples, better documentation, fixes
4. **Follow the existing structure**: Match the organization and style
5. **Submit a pull request**: Include clear description of changes

### Contribution Guidelines
- Each folder should have a detailed README.md
- Scripts should include comprehensive comments
- Examples should be practical and educational
- Follow consistent naming conventions
- Test all scripts before submitting

## 📚 Additional Resources

### Learning Materials
- [Bash Manual](https://www.gnu.org/software/bash/manual/)
- [Shell Scripting Tutorial](https://www.shellscript.sh/)
- [Advanced Bash-Scripting Guide](https://tldp.org/LDP/abs/html/)

### Tools and References
- [ShellCheck](https://www.shellcheck.net/) - Static analysis for shell scripts
- [Bash-it](https://github.com/Bash-it/bash-it) - Bash framework
- [DevOps Tools](https://github.com/topics/devops) - Related DevOps resources

## Troubleshooting

### Common Issues
- **Permission Denied**: `chmod +x script_name.sh`
- **Command Not Found**: Ensure script is executable and in PATH
- **Syntax Errors**: Use `bash -n script.sh` to check syntax
- **Debugging**: Use `bash -x script.sh` for detailed execution trace

### Getting Help
- Check individual folder README files for specific guidance
- Use `script_name.sh --help` for usage information
- Review the examples in each folder for context

## 📄 License

This repository is licensed under the MIT License. See [LICENSE](LICENSE) file for details.

## 🌟 Acknowledgments

- A heartfelt thank you to [Abhishek Veeramalla](https://github.com/iam-veeramalla) 
- Created for the DevOps learning community
- Inspired by practical automation needs
- Contributions from shell scripting enthusiasts

---

**🎓 Happy Learning!** Start with the basics and progress through to advanced DevOps automation. Each folder builds upon the previous concepts, creating a comprehensive learning journey.

**⭐ If you find this repository helpful, please star it and share with others learning shell scripting!**