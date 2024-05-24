using System;
using Xunit;

public class ValidatorTests
{
    [Fact]
    public void IsPalindrome_WithPalindromeString_ReturnsTrue()
    {
        // Arrange
        string input = "racecar";

        // Act
        bool result = Validator.IsPalindrome(input);

        // Assert
        Assert.True(result);
    }

    [Fact]
    public void IsPalindrome_WithNonPalindromeString_ReturnsFalse()
    {
        // Arrange
        string input = "hello";

        // Act
        bool result = Validator.IsPalindrome(input);

        // Assert
        Assert.False(result);
    }

    [Fact]
    public void IsPalindrome_WithEmptyString_ReturnsTrue()
    {
        // Arrange
        string input = "";

        // Act
        bool result = Validator.IsPalindrome(input);

        // Assert
        Assert.True(result);
    }

    [Fact]
    public void IsPalindrome_WithNullString_ReturnsFalse()
    {
        // Arrange
        string input = null;

        // Act
        bool result = Validator.IsPalindrome(input);

        // Assert
        Assert.False(result);
    }
}
