# Bitwise Masks

Bitwise Masks - make bitwise operations between bitmap annotations.

```javascript
{
  "action": "bitwise_masks",
  "src": [
    "$sample"
  ],
  "dst": "$sample1",
  "settings": {
    "type": "nor",
    "class_mask": "road",
    "classes_to_correct": [
      "crack"
    ]
  }
}
```

## Settings

* `type` - type of bitwise operation, support values: `or`, `and`, `nor`.
* `class_mask` - class name for first element of bitwise operation. It unchangeble object.
* `classes_to_correct` - class names for second element of bitwise operations.

## Visual example:

If you need save only objects \(cracks for example\) on road you can use bitwise operation `and`: ![](../../../.gitbook/assets/bitwise_before.png) ![](../../../.gitbook/assets/bitwise_after.png)

