# Save Masks

Save masks layer \(`save_masks`\) gives you an opportunity to get masked representations of data besides just images and annotations that you can get using [save](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/export/save/README.md) layer. It includes machine and human representations.

In machine masks each of listed classes are colored in shades of gray that you specify. Note that black color \[0, 0, 0\] is automatically assigned with the background. In human masks you would get stacked original images with that images having class colors above \(see example\).

```javascript
 {
  "action": "save_masks",
  "src": [
    "$0"
  ],
  "dst": "experiment001",
  "settings": {
    "masks_machine": true,
    "masks_human": true,
    "gt_machine_color": {
      "kiwi": [
        100,
        100,
        100
      ],
      "lemon": [
        200,
        200,
        200
      ]
    },
    "gt_human_color": {
      "kiwi": [
        255,
        0,
        0
      ],
      "lemon": [
        27,
        0,
        255
      ]
    }
  }
}
```

In an example above, dataset sample from lemons project is exported as masks. The following parameters specify the output format:

* `masks_machine` — true if machine readable masks are generated.
* `masks_human` — true if human readable masks are generated.
* `gt_machine_color`: specifies colors of generated masks for each class exported.
  * for class "kiwi" machine color is defined by RGB=\(100,100,100\)
  * for class "lemon" machine color is defined by RGB=\(200,200,200\)
* `gt_human_color`: specifies colors of generated masks for each class exported used in visual representation
  * for class "kiwi" machine color is defined by RGB=\(255,0,0\).
  * for class "lemon" machine color is defined by RGB=\(27,0,255\)

After downloading generated results, the following folders are created:

* ann — contains json annotations for each image
* img — contains raw images
* masks\_human — contains visual representation of generated mask
* masks\_machine — generated masks

The example of masks\_human is given below:

![](../../../.gitbook/assets/gt_human_color_1.png)

Here is an example of masks\_machine:

![](../../../.gitbook/assets/gt_machine_color_1.png)

