# Write Properties 

This is a GitHub action to write to java `.properties` files.

**Note:** It will work for all file-types that follow the `key=value` pattern.

> If you are also looking for an action that enables you to **read values** from `.properties` files use
> [Read Properties action](https://github.com/christian-draeger/read-properties)

## Inputs

### `path`

**Required** The path to properties file to read.

### `property`

**Required** The property or properties you want to write.

### `value`

**Required** The value of the given property or properties, in the same order.

## Example usage

    - name: Write value to Properties-file
      uses: christian-draeger/write-properties@1.1.0
      with:
        path: './src/main/resources/application.properties'
        property: |
          'the.key.of.the.first.property'
          'the.key.of.the.second.property'
        value: |
          'first value'
          'second value'

# License
The scripts and documentation in this project are released under the [MIT License](LICENSE)
