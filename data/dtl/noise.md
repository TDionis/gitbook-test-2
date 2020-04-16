Noise layer (`noise`) adds noise of Gaussian distribution to the images.

## Settings
- `mean` (type: number)
- `std` (type: number)

The noise distribution has its peak at the `mean`, and its “spread” increases with the `std`.

```json
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

<div class="previews">
    <span>
      <img src="../../assets/legacy/export/noise/input.jpg"/>
      <span>Original image</span>
    </span>
    <span>
      <img src="../../assets/legacy/export/noise/output.jpg"/>
      <span>Resulting image</span>
    </span>
</div>

## Example

```json
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
