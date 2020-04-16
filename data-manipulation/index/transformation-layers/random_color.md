# Random Color

This layer \(`random_color`\) changes image colors by random moving each of RGB components.

Pixels \(in matrix of width 3\) are right multiplied by a random matrix A using the following formula:

```text
A = np.eye(3) + np.random.randn(3, 3) * strength / 5
```

## Settings

* `strength` \(type: number, min: 0, max: 1\)

The only setting `strength` controls how much image will change its colors.

```javascript
{
  "action": "random_color",
  "src": ["$sample1"],
  "dst": "$sample2",
  "settings": {
    "strength": 0.25
  }
}
```

## Example

 ![](../../../.gitbook/assets/input%20%283%29.jpg) Original image ![](../../../.gitbook/assets/output%20%283%29.jpg) Resulting image

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
    "action": "random_color",
    "src": ["$data"],
    "dst": "$output",
    "settings": {
      "strength": 0.5
    }
  },
  {
    "dst": "example_rnd_color",
    "src": [
      "$output"
    ],
    "action": "supervisely",
    "settings": {}
  }
]
```

