# Split Masks

This layer \(`split_masks`\) takes one bitmap annotation and split it into few bitmap masks if it contain non-connected components.

```javascript
{
  "src": [
    "$sample1"
  ],
  "dst": "$sample2",
  "action": "split_masks",
  "settings": {
    "classes": ["Bird", "Potato"]
  }
}
```

## Settings

* `classes` — list of class names for split operation.

## Visual example:

Before:

![](../../../.gitbook/assets/merge_masks.png)

After:

![](../../../.gitbook/assets/split_mask.png)

## Similar commands:

* [Merge Masks](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/export/merge_masks/README.md)

