# Rotate

Rotate layer \(`rotate`\) rotates images and its annotations.

## Settings

* `rotate_angles`
  * `min_degrees` \(type: number\)
  * `max_degrees` \(type: number\)
* `black_regions`
  * `mode` \(type: string, enum: \[`keep`, `crop`, `preserve_size`\]\)

```javascript
{
  "action": "rotate",
  "src": ["$data"],
  "dst": "$result",
  "settings": {
    "rotate_angles": {
      "min_degrees": -45,
      "max_degrees": 45
    },
    "black_regions": {
      "mode": "keep"
    }
  }
}
```

Each image will be rotated by a random angle \(around the image center, CCW\) with uniform distribution from `min_degrees` to `max_degrees`. You can:

* keep original image data \(`mode: keep`\), then new regions will be filled with black color;
* crop rotated result to exclude black regions \(`mode: crop`\);
* crop rotated result to preserve original image size and scale of objects \(`mode: preserve_size`\);

## Example: keep

Rotate images by a random degree from -45 to 45 and keep black regions:

 ![](../../../.gitbook/assets/before.jpg) Original ![](../../../.gitbook/assets/keep_after.jpg) Result

```javascript
[
  {
    "dst": "$data",
    "src": [
      "mini_pascal/*"
    ],
    "action": "data",
    "settings": {
      "classes_mapping": "default"
    }
  },
  {
    "action": "rotate",
    "src": ["$data"],
    "dst": "$result",
    "settings": {
      "rotate_angles": {
        "min_degrees": -45,
        "max_degrees": 45
      },
      "black_regions": {
        "mode": "keep"
      }
    }
  },
  {
    "dst": "example_rotate_keep",
    "src": [
      "$result"
    ],
    "action": "supervisely",
    "settings": {}
  }
]
```

## Example: crop

Rotate images by a fixed degree 45 and crop black regions:

 ![](../../../.gitbook/assets/before%20%281%29.jpg) Original ![](../../../.gitbook/assets/crop_after.jpg) Result

```javascript
[
  {
    "dst": "$data",
    "src": [
      "mini_pascal/*"
    ],
    "action": "data",
    "settings": {
      "classes_mapping": "default"
    }
  },
  {
    "action": "rotate",
    "src": ["$data"],
    "dst": "$result",
    "settings": {
      "rotate_angles": {
        "min_degrees": 45,
        "max_degrees": 45
      },
      "black_regions": {
        "mode": "crop"
      }
    }
  },
  {
    "dst": "example_rotate_crop",
    "src": [
      "$result"
    ],
    "action": "supervisely",
    "settings": {}
  }
]
```

