# Write Properties 

This is a GitHub action to write to java `.properties` files.
If you are also looking for an action that enables you to read values from properties files use 
[Read Properties action](https://github.com/christian-draeger/read-properties)

## Inputs

### `path`

**Required** The path to properties file to read.

### `property`

**Required** The property you want to write.

### `value`

**Required** The value of the given property.

## Example usage

    - name: Write value to Properties-file
      uses: christian-draeger/write-properties@1.0.0
      with:
        path: './src/main/resources/application.properties'
        property: 'the.key.of.the.property'
        value: 'some value'

# License
The scripts and documentation in this project are released under the [MIT License](LICENSE)
