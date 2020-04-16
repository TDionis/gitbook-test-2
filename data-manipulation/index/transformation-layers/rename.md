# Rename

This layer \(`rename`\) re-maps existing classes.

Provide object `classes_mapping`, where keys are existing classes and values are new classes of annotations.

```javascript
{
  "action": "rename",
  "src": ["$input"],
  "dst": "$output",
  "settings": {
    "classes_mapping": {
      "old": "new"
    }
  }
}
```

## Example

Assign class `vehicle` to annotations of class `bus`.

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
    "action": "rename",
    "src": ["$data"],
    "dst": "$output",
    "settings": {
      "classes_mapping": {
        "bus": "vehicle"
      }
    }
  },
  {
    "dst": "example_rename",
    "src": [
      "$output"
    ],
    "action": "supervisely",
    "settings": {}
  }
]
```

