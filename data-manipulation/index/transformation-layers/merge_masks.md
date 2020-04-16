# Merge Masks

This layer \(`merge_bitmap_masks`\) takes all bitmap annotations which has same class name and merge it into single bitmap annotation.

```javascript
{
  "src": [
    "$sample1"
  ],
  "dst": "$sample2",
  "action": "merge_bitmap_masks",
  "settings": {
    "class": "Bird"
  }
}
```

## Settings

* `class` — name of class for merging.

## Visual example:

Before:

![](../../../.gitbook/assets/split_mask.png)

After:

![](../../../.gitbook/assets/merge_masks.png)

## Similar commands:

* [Split Masks](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/export/split_masks/README.md)

