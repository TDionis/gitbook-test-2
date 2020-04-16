# Polygon to Bitmap

This layer \(`poly2bitmap`\) converts annotations of shape `polygon` to shape `bitmap`.

Provide object `classes_mapping`, where keys are existing classes of shape `polygon` to be converted, and values are new names of classes.

Polygons will be drawn filled, considering holes.

{% hint style="info" %}
Figures of other shapes may also be converted to bitmap with the layer. Points will be drawn as single-pixel bitmaps, and lines will be drawn with thickness = 1.
{% endhint %}

```javascript
{
  "action": "poly2bitmap",
  "src": ["$input"],
  "dst": "$output",
  "settings": {
    "classes_mapping": {
      "old": "new"
    }
  }
}
```

## Example

 ![](../../../.gitbook/assets/input.png) Input: annotation of shape \`polygon\` ![](../../../.gitbook/assets/output%20%281%29.png) Output: annotation of shape \`bitmap\`

```javascript
[
  {
    "dst": "$data",
    "src": [
      "example/*"
    ],
    "action": "data",
    "settings": {
      "classes_mapping": "default"
    }
  },
  {
    "action": "poly2bitmap",
    "src": ["$data"],
    "dst": "$output",
    "settings": {
      "classes_mapping": {
        "chair": "chair_bitmap"
      }
    }
  },
  {
    "dst": "example_bitmaps",
    "src": [
      "$output"
    ],
    "action": "supervisely",
    "settings": {}
  }
]
```

