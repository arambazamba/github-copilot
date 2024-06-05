class PasswordValidator {
    static validate(password) {
        const digitRegex = /\d/;
        const capitalLetterRegex = /[A-Z]/;
        const specialCharacterRegex = /[!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?]/;

        if (password.length < 6) {
            return false;
        }

        if (!digitRegex.test(password)) {
            return false;
        }

        if (!capitalLetterRegex.test(password) && !specialCharacterRegex.test(password)) {
            return false;
        }

        return true;
    }
}

// Example usage:
const password = "Abc123!";
const isValid = PasswordValidator.validate(password);
console.log(isValid); // Output: true