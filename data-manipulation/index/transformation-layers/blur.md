# Blur

Blur layer \(`"action": "blur"`\) applies blur filter to the image.

## Median blur

To use median blur \(`cv2.medianBlur`\) set `name` to `median` and `kernel` to **odd** number.

```javascript
{
  "action": "blur",
  "src": ["$data1"],
  "dst": "$data2",
  "settings": {
    "name": "median",
    "kernel": 5
  }
}
```

## Gaussian blur

To use gaussian blur \(`cv2.GaussianBlur`\) set `name` to `gaussian` and `sigma` to object with two numbers: `min` and `max`.

```javascript
{
  "action": "blur",
  "src": ["$data1"],
  "dst": "$data2",
  "settings": {
    "name": "gaussian",
    "sigma": { "min": 3, "max": 50 }
  }
}
```

 ![](../../../.gitbook/assets/input%20%281%29.jpg) Original image ![](../../../.gitbook/assets/output%20%284%29.jpg) Resulting image

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
    "dst": "$result",
    "src": [
      "$data"
    ],
    "action": "blur",
    "settings": {
      "name": "gaussian",
      "sigma": {"min": 3, "max": 50 }
    }
  },
  {
    "dst": "example_blur5",
    "src": [
      "$result"
    ],
    "action": "supervisely",
    "settings": {}
  }
]
```

