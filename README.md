# checkstyle docker action

Runs checkstyle on the code in the repo

## Inputs

### `style-rules-xml`

**Optional** The checkstyle rules definition. Default `"style.xml"`.

### `code-path`

**Optional** The path of the code you want to lint, if not root. Default `"/"`

## Outputs

### `result`

The code lint output.

## Example usage

uses: actions/checkstyle-docker@v1
with:
  style-rules-xml: "some-rules.xml"
  code-path: "/"
