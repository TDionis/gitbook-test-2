# Contrast / Brightness

This layer \(`contrast_brightness`\) randomly changes contrast and brightness of images.

## Settings

* `contrast` \(type: object\)
  * `min` \(type: number, minimum: 0, maximum: 10\)
  * `max` \(type: number, minimum: 0, maximum: 10\)
  * `center_grey` \(type: boolean, default: false\)
* `brightness` \(type: object\)
  * `min` \(type: number, minimum: -255, maximum: 255\)
  * `max` \(type: number, minimum: -255, maximum: 255\)

Image `contrast` is changed by multiplying each pixel by random value with uniform distribution from `min` to `max`. To disable, set `min` and `max` to 1. To center colors of images \(subtract 128\) first, set `center_grey` to `true`.

Image `brightness` is changed by adding to each pixel a random value with uniform distribution from `min` to `max`. To disable, set `min` and `max` to 0.

## Preview

`center_grey` = `false` \(Default\):

 ![](../../../.gitbook/assets/1%20%281%29.jpg) ![](../../../.gitbook/assets/2%20%281%29.jpg) ![](../../../.gitbook/assets/3.jpg) ![](../../../.gitbook/assets/4.jpg) ![](../../../.gitbook/assets/5%20%281%29.jpg)

`center_grey` = `true`:

 ![](../../../.gitbook/assets/1.jpg) ![](../../../.gitbook/assets/2.jpg) ![](../../../.gitbook/assets/3%20%281%29.jpg) ![](../../../.gitbook/assets/4%20%281%29.jpg) ![](../../../.gitbook/assets/5.jpg)

## Example

```text
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
    "action": "multiply",
    "src": ["$data"],
    "dst": "$data2",
    "settings": {
      "multiply": 5
    }
  },
  {
    "dst": "$result",
    "src": [
      "$data2"
    ],
    "action": "contrast_brightness",
    "settings": {
      "contrast": {
        "min": 0.5,
        "max": 2,
        "center_grey": false
      },
      "brightness": {
        "min": -50,
        "max": 50
      }
    }
  },
  {
    "dst": "example_b_c",
    "src": [
      "$result"
    ],
    "action": "supervisely",
    "settings": {}
  }
]
```

