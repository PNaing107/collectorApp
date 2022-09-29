<?php
require_once '../formValidation.php'; // Require the file to be tested

use PHPUnit\Framework\TestCase; // Need this to use PHPUnit

class FormValidation extends TestCase
{
    // Success Tests
    public function test_validateURL_GivenValidURLReturnsTrue()
    {
        // Arrange
        $validURL = 'www.google.com';
        $expected = true;

        // Act
        $result = validateURL($validURL);

        // Assert
        $this->assertEquals($expected, $result);

    }

    // Failure Tests
    public function test_validateURL_GivenInvalidURLReturnsFalse()
    {
        // Arrange
        $invalidURL = '123';
        $expected = false;

        // Act
        $result = validateURL($invalidURL);

        // Assert
        $this->assertEquals($expected, $result);

    }

    // Malformed Test
    public function test_validateURL_GivenArrayThrowError()
    {
        // Arrange
        $input = ['www.google.com'];
        $this->expectException(TypeError::class);

        // Act
        $result = validateURL($input);
    }

}