# Password Validator

This is a simple TypeScript project that includes a password validator class. The project structure is as follows:

```
password-validator
├── src
│   ├── index.ts
│   └── PasswordValidator.ts
├── dist
│   ├── bundle.js
│   └── index.html
├── webpack.config.js
├── package.json
└── README.md
```

## Project Structure

### `src/index.ts`

This file serves as the entry point of the application. It imports the `PasswordValidator` class from `PasswordValidator.ts` and sets up event listeners for the password input and submit button. The output of the password validation will be written to a div in `index.html`.

### `src/PasswordValidator.ts`

This file exports a class `PasswordValidator` which includes a method `validate` that takes a password as input and checks if it meets the length requirement of 6 characters.

### `dist/bundle.js`

This file is the bundled JavaScript file generated by webpack. It contains the compiled code from the TypeScript files.

### `dist/index.html`

This file is an HTML file that references the `bundle.js` file. It includes an input field for the password and a submit button. The output of the password validation will be written to a div in this file.

### `webpack.config.js`

This file is the configuration file for webpack. It specifies the entry point, output file, and rules for compiling TypeScript files.

### `package.json`

This file is the configuration file for npm. It lists the dependencies and scripts for the project.

## Usage

1. Clone the repository.
2. Install the dependencies by running `npm install`.
3. Build the project by running `npm run build`.
4. Open `dist/index.html` in a web browser.
5. Enter a password in the input field and click the submit button.
6. The output of the password validation will be displayed in the div below the submit button.

Feel free to modify the code in `src/index.ts` and `src/PasswordValidator.ts` to suit your needs.

This project was created as a basic example of using TypeScript with webpack to build a simple password validator.