# Flip

Flip layer \(`flip`\) simply flips data \(image + annotation\) vertically or horizontally.

```javascript
{
  "action": "flip",
  "src": ["$data1"],
  "dst": "$data2",
  "settings": {
    "axis": "vertical"
  }
}
```

`"axis"` field can be one of two values `horizontal` or `vertical`.

Here are the possible results:

 ![](../../../.gitbook/assets/flip_001_orig.jpg) Original image &lt;/span&gt;  ![](../../../.gitbook/assets/flip_002_vert.jpg) "axis": "vertical" &lt;/span&gt;  ![](../../../.gitbook/assets/flip_003_hor.jpg) "axis": "horizontal" &lt;/span&gt; &lt;/span&gt;

## Example

```javascript
[
  {
    "dst": "$data",
    "src": [
      "myproj/*"
    ],
    "action": "data",
    "settings": {
      "classes_mapping": "default"
    }
  },
  {
    "dst": "$flip_vert",
    "src": [
      "$data"
    ],
    "action": "flip",
    "settings": {
      "axis": "vertical"
    }
  },
  {
    "dst": "flip_ver",
    "src": [
      "$data",
      "$flip_vert"
    ],
    "action": "supervisely",
    "settings": {}
  }
]
```

![](../../../.gitbook/assets/flip_004.png)

In this example we just get all data \(images + annotations\) from project `myproj`, apply vertical flip to images and save both original and flipped version.

