# Skeletonize

This layer \(`skeletonize`\) extracts skeletons from bitmap figures.

```javascript
{
  "src": [
    "$sample1"
  ],
  "dst": "$sample2",
  "action": "skeletonize",
  "settings": {
    "method": "thinning",
    "classes": [
      "cool-bitmap"
    ]
  }
}
```

Each figure of class "cool-bitmap" will be reduced to 1 pixel wide representation. Each source mask \(figure of shape "bitmap"\) produces one resulting mask \(shape "bitmap"\).

It uses _scikit-image_ as a backend, so three methods of skeletonization are provided. For more information, look [here](http://scikit-image.org/docs/dev/auto_examples/edges/plot_skeleton.html).

{% hint style="info" %}
For large images it may be... not fast.
{% endhint %}

## Settings

* `classes` — list of classes to apply transformation. Only classes with shape "bitmap" are allowed.
* `method` \(type: enum \["skeletonization", "medial\_axis", "thinning"\]\) — algorithm of processing.

## Example

Illustrated example of usage may be found [here](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/export/examples/vectorize-bitmap/README.md#get-skeleton).

