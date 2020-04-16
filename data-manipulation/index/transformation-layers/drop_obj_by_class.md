# Drop by Class

This layer \(`drop_obj_by_class`\) simply removes annotations of specified classes.

{% hint style="info" %}
You can also use [data](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/export/data/README.md) layer and map unnecessary classes to `__ignore__`.
{% endhint %}

## Settings

* `classes` \(type: array of strings\)

Annotations of classes from array `classes` will be removed.

```javascript
{
  "action": "drop_obj_by_class",
  "src": ["$input" ],
  "dst": "$output",
  "settings": {
    "classes": ["class-to-be-removed"]
  }
}
```

## Example

Drop annotations of class `numan`.

![](../../../.gitbook/assets/s-l300.jpg)

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
    "action": "drop_obj_by_class",
    "src": ["$data" ],
    "dst": "$output",
    "settings": {
      "classes": ["human"]
    }
  },
  {
    "dst": "example_drop_noise",
    "src": [
      "$output"
    ],
    "action": "supervisely",
    "settings": {}
  }
]
```

