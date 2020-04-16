# Bitmap to Lines

This layer \(`bitmap2lines`\) converts thinned \(skeletonized\) bitmaps to lines.

It is extremely useful if you have some raster objects representing lines or edges, maybe forming some tree or net structure, and want to work with vector objects.

Each input bitmap should be already thinned \(use [Skeletonize](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/export/skeletonize/README.md) layer to do it\), and for single input mask a number of lines will be produced.

{% hint style="success" %}
Resulting lines may have very many vertices, so consider applying [Approx Vector](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/export/approx_vector/README.md) layer to results of this layer.
{% endhint %}

Internally the layer builds a graph of 8-connected pixels, determines minimum spanning tree\(s\), then greedely extracts diameters from connected components of the tree.

```javascript
{
  "action": "bitmap2lines",
  "src": ["$sample1"],
  "dst": "$sample2",
  "settings": {
    "classes_mapping": {
      "tree-bitmap": "branch"
    },
    "min_points_cnt": 2
  }
}
```

## Settings

* `classes_mapping` — dict where keys are existing classes of shape `bitmap`, and values are new names of classes.
* `min_points_cnt` — min number of vertices for each output line. Other lines will be dropped.

## Example

Illustrated example of usage may be found [here](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/export/examples/vectorize-bitmap/README.md).

