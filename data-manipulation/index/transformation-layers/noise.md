# Noise

Noise layer \(`noise`\) adds noise of Gaussian distribution to the images.

## Settings

* `mean` \(type: number\)
* `std` \(type: number\)

The noise distribution has its peak at the `mean`, and its “spread” increases with the `std`.

```javascript
{
  "action": "noise",
  "src": ["$input"],
  "dst": "$output",
  "settings": {
    "mean": 10,
    "std": 50
  }
}
```

 ![](../../../.gitbook/assets/input%20%282%29.jpg) Original image ![](../../../.gitbook/assets/output.jpg) Resulting image

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
    "action": "noise",
    "src": ["$data"],
    "dst": "$result",
    "settings": {
      "mean": 0,
      "std": 80
    }
  },
  {
    "dst": "example_noise",
    "src": [
      "$result"
    ],
    "action": "supervisely",
    "settings": {}
  }
]
```

