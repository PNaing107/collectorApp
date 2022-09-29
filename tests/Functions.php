<?php
require_once '../functions.php'; // Require the file to be tested

use PHPUnit\Framework\TestCase; // Need this to use PHPUnit

class Functions extends TestCase
{
    // Success Tests
    public function test_displayCollection_GivenArrayReturnsString()
    {
        // Arrange
        $mockDatabaseResult =
            [
                [
                    'discipline' => 'road',
                    'name' => 'test',
                    'region' => 'test',
                    'country_name' => 'test',
                    'url' => 'www.test.com',
                    'alt_text' => 'test',
                    'short_description' => 'testing testing testing',
                    'distance' => 123,
                    'effort_level' => 6,
                    'adrenaline_rating' =>6
                ]
            ];

        $expected =
            '<div class="card">'
            . '<div class="card-header">'
            . '<div class="card-header-icon-holder">'
            .'<a href="html/explainer.html">'
            . '<i class="fa-solid fa-road fa-2xl"></i>'
            .'</a>'
            . '</div>'
            . '<h2>' . 'test' . '</h2>'
            . '<p><strong>' . 'test' . '</strong> - ' . 'test' . '</p>'
            . '</div>'
            . '<img src="' . 'www.test.com' . '" alt="' . 'test' .'">'
            . '<p>' . 'testing testing testing' . '</p>'
            . '<div class="card-footer">'
            . '<p><strong>Distance:</strong><br>' . 123 . ' Km</p>'
            . '<p><strong>Effort Level:</strong><br>' . 6 . '</p>'
            . '<p><strong>Adrenaline Rating:</strong><br>' . 6 . '</p>'
            . '<span class="material-symbols-outlined md-36">open_in_new</span>'
            . '</div>'
            . '</div>';

        // Act
        $result = displayCollection($mockDatabaseResult);

        // Assert
        $this->assertEquals($expected, $result);
    }

    public function test_createOptionElement_GivenArrayThenStringReturnsString()
    {
        // Arrange
        $mockArray = [
            ['option'=>'Option 1'],
            ['option'=>'Option 2'],
            ['option'=>'Option 3'],
        ];

        $expected =
            '<option value="Option 1">Option 1</option>'
            .'<option value="Option 2">Option 2</option>'
            .'<option value="Option 3">Option 3</option>';

        // Act
        $result = createOptionElement($mockArray,'option');

        // Assert
        $this->assertEquals($expected, $result);
    }

    public function test_validateURL_GivenValidURLReturnsTrue()
    {
        // Arrange
        $validURL = 'http://www.google.com';
        $expected = true;

        // Act
        $result = validateURL($validURL);

        // Assert
        $this->assertEquals($expected, $result);
    }
    
    // Failure Tests
    public function test_displayCollection_GivenEmptyArrayReturnsError()
    {
        // Arrange
        $input = [];
        $expected = 'Error: No items have been found please check Database.';

        // Act
        $result = displayCollection($input);

        // Assert
        $this->assertEquals($expected, $result);
    }

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

    // Malformed Tests
    public function test_displayCollection_GivenStringThrowError()
    {
        // Arrange
        $input = 'Test String';
        $this->expectException(TypeError::class);

        // Act
        $result = displayCollection($input);
    }

    public function test_validateURL_GivenArrayThrowError()
    {
        // Arrange
        $input = ['www.google.com'];
        $this->expectException(TypeError::class);

        // Act
        $result = validateURL($input);
    }

    public function test_createOptionElement_GivenStringThenArrayThrowError()
    {
        // Arrange
        $mockArray = [
            ['option'=>'Option 1'],
            ['option'=>'Option 2'],
            ['option'=>'Option 3'],
        ];
        $this->expectException(TypeError::class);

        // Act
        $result = createOptionElement('option', $mockArray);
    }
}