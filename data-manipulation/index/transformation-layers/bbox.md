# Bounding Box

Bounding Box layer \(`bbox`\) converts annotations of specified classes to bounding boxes. Annotations would be replaced with new objects of shape `rectangle`. Coordinates of bounding boxes are calculated like this:

```text
minx = min(xcoords);
maxx = max(xcoords);
miny = min(ycoords);
maxy = max(ycoords);
```

```javascript
{
  "action": "bbox",
  "src": ["$data1"],
  "dst": "$data2",
  "settings": {
    "classes_mapping": {
      "chair": "chair_bbox"
    }
  }
}
```

`"classes_mapping"` is an object, where keys are classes of input annotations that should be trasformed into rectangles, and values are names of new classes of bounding boxes.

{% hint style="warning" %}
`"classes_mapping"` in `bbox` layer does not support shortcuts like `default`
{% endhint %}

 ![](../../../.gitbook/assets/input.jpg) Input: polygon ![](../../../.gitbook/assets/output%20%282%29.jpg) Output: bounding box

## Example

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
    "dst": "$boxes",
    "src": [
      "$data"
    ],
    "action": "bbox",
    "settings": {
      "classes_mapping": {
        "chair": "chair_bbox"
      }
    }
  },
  {
    "dst": "example_bbox",
    "src": [
      "$boxes"
    ],
    "action": "supervisely",
    "settings": {}
  }
]
```

In this example we will take all objects of class `chair` and convert them to rectangles of class `chair_bbox`. Other classes will not be removed.

