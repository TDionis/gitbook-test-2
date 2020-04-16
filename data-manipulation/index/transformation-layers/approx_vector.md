# Approx Vector

This layer \(`approx_vector`\) approximates vector figures: lines and polygons.

The operation decreases number of vertices with Douglas-Peucker algorithm.

Example:

```javascript
{
  "action": "approx_vector",
  "src": [
    "$sample1"
  ],
  "dst": "$sample2",
  "settings": {
    "classes": [
      "my_line",
      "interesting_poly"
    ],
    "epsilon": 3
  }
}
```

## Settings

* `classes` — list of classes to apply transformation. Only classes with shape "line" or "polygon" are allowed.
* `epsilon` — approximation accuracy \(maximum distance between the original curve and its approximation\).

## Example

Illustrated examples of usage may be found [here](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/export/examples/vectorize-bitmap/README.md).

