# Duplicate Objects

This layer \(`duplicate_objects`\) clones figures of required classes.

```javascript
{
  "dst": "$sample2",
  "src": [
    "$sample1"
  ],
  "action": "duplicate_objects",
  "settings": {
    "classes_mapping": {
      "bitmap-one": "bitmap-two"
    }
  }
}
```

For the settings above, each figure of class "bitmap-one" will be cloned with class "bitmap-two", leaving the source figure unchanged. This _will not_ create new sample \(new image\), so both source and resulting figures will belong to the same image.

## Settings

* `classes_mapping` — dict where keys are existing classes, and values are new names of classes.

## Example

Example of usage may be found [here](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/export/examples/vectorize-bitmap/README.md#duplicate-objects-for-complicated-conversions).

