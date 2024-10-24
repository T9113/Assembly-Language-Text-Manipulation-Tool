# Assembly-Language-Text-Manipulation-Tool
Creating a detailed GitHub repository for your assembly language project involves providing comprehensive documentation, including an overview of the project, installation instructions, usage examples, and any relevant information about the code structure. Below is a suggested structure for your GitHub repository, including a `README.md` file and a brief description of the code.

### Repository Structure

```
/YourAssemblyProject
│
├── /src
│   └── main.asm            # Your assembly code file
│
├── /docs
│   └── project_overview.md # Detailed project overview (optional)
│
└── README.md               # Main documentation file
```

### `README.md` Content

```markdown
# Assembly Language Text Manipulation Tool

## Overview
This assembly language project implements a console application that allows users to perform various text manipulation operations, including:
- Converting lowercase letters to uppercase.
- Converting uppercase letters to lowercase.
- Capitalizing the first letter of a sentence.
- Capitalizing the first letter of each word in a sentence.
- Toggling the case of characters.
- Exiting the program.

The application uses DOS interrupts for input and output operations.

## Features
- **User-friendly Menu**: Provides clear options for text operations.
- **Character Case Conversion**: Supports conversion between lowercase and uppercase.
- **Sentence and Word Manipulation**: Capitalizes the first letter of sentences and words.
- **Toggle Case Functionality**: Easily switch between upper and lower case for letters.
- **Exit Option**: Safely terminate the program.

## Requirements
- An assembler compatible with DOS (e.g., MASM or TASM).
- DOSBox or any DOS emulator to run the compiled program.

## Installation
1. Clone the repository to your local machine:
   ```bash
   git clone 
   ```
2. Navigate to the project directory:
   ```bash
   cd YourAssemblyProject/src
   ```
3. Assemble the `main.asm` file using your preferred assembler (e.g., MASM, TASM):
   ```bash
   masm main.asm
   ```
   or
   ```bash
   tasm main.asm
   ```
4. Link the object file:
   ```bash
   link main.obj
   ```

## Usage
1. Run the compiled executable in a DOS environment:
   ```bash
   main.exe
   ```
2. Follow the on-screen prompts to select the desired text manipulation operation.
3. Enter the required input based on the selected option.

## Code Explanation
The main procedure initializes the data segment, presents the user with a menu, and processes input to perform various text manipulations. Each operation has its own dedicated section for handling input and output.

### Code Breakdown
- **Data Section**: Contains messages and buffers for user interaction.
- **Main Loop**: Displays the menu and captures user input.
- **Case Conversion**: Logic to convert characters between uppercase and lowercase.
- **Sentence and Word Handling**: Functions to manipulate text based on user input.

## Example
```plaintext
Plese enter
1 -> lowercase to uppercase
2 -> capitalcase to lowercase
3 -> Sentence
4 -> First letter capital
5 -> Toggle case
6 -> Exit
```

Upon choosing an option, the program will prompt you for the necessary input and display the result.



## Contributing
Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## Acknowledgments
- Inspired by the need for text manipulation tools in assembly language.
- Thanks to the online assembly programming community for guidance and support.

## Contact
For questions or inquiries, please reach out to (mailto:tayyabmasood911@example.com).
```

### Additional Documentation

If needed, you can create additional Markdown files in the `/docs` directory for more extensive explanations about the project, such as:

- **project_overview.md**: A deeper dive into the project, discussing the algorithms used, the reasoning behind design choices, or comparisons with similar projects.
- **user_manual.md**: A detailed guide for users on how to use the application, with screenshots and examples.

### Creating the Repository

1. **Create a New Repository** on GitHub.
2. **Clone the Repository** to your local machine:
   ```bash
   git clone https://github.com/yourusername/YourAssemblyProject.git
   ```
3. **Add Your Files**: Copy your `main.asm` file and any documentation into the appropriate folders.
4. **Commit and Push**:
   ```bash
   git add .
   git commit -m "Initial commit of assembly text manipulation tool"
   git push origin main
   ```

