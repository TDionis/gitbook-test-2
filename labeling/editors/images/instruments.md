# Instruments

Instruments panel on the left side of the screen provides tools to create and edit annotations and manipulate scene.

Only one instrument can be selected at a time.

## Auxiliary tools

Use the following tools to interact with scene and figures on it in a general way. Those tools doesn't take into account class of annotation or it's shape.

### Move tool

![Move tool \(Original ^^\)](../../../.gitbook/assets/tool-move%20%281%29.png)

Choose move tool to pan and zoom image on the scene. While in `Move tool` is active, interactions with annotations on scene are disabled.

### Select tool

![Select tool \(Original ^^\)](../../../.gitbook/assets/tool-select.png)

Use `Select tool` to select figures \(annotations\) directly on the scene.

Immediately after selecting a figure, corresponding editing tool with be enabled and you can start changing the annotation.

{% hint style="info" %}
You can also select annotations by clicking on interesting in [figures panel](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/annotation/figures/README.md).
{% endhint %}

### Drag tool

![Drag tool \(Original ^^\)](../../../.gitbook/assets/tool-move.png)

If you need to drag figures on the scene, select `Drag tool`, move mouse cursor over an interesting figure and drag it to a new position.

### Tag figures tool

![Tag figures tool \(Original ^^\)](../../../.gitbook/assets/tool-tags.png)

If you need to manipulate figure tags or description, select `Tag figures tool` and click on the tag to open figure tags popup.

## Annotation tools

Use annotation tools to create new and change existing figures.

### Shapes & Classes

Each annotation instrument is used to create one of the following shapes:

* Point
* Line
* Rectangle
* Polygon
* Bitmap

In Supervisely by design each `Class` must be one \(and only one!\) of the shapes above. It means, that you can't have two figures of class "Car" of different shapes.

Thus, every tool can create only classes of it's shape: say, if you created a class `Road Sign` of shape `Rectangle`, you can only create road signs with `Rectangle tool`.

### Create vs Edit

Each of those tools has indicator icon at the top right corner of the button that shows if you are editing existing figure or are going to add a new one:

![New figure \(Original ^^\)](../../../.gitbook/assets/icon-add%20%281%29.png) ![Editing figure \(Original ^^\)](../../../.gitbook/assets/icon-edit.png)

You can add new points or drag them in both creation and editing mode.

{% hint style="info" %}
Adding a new figure is no different from editing. Internally, after you create first point \(first pixel\) of a new figure, you will automatically select a new figure and switch to editing mode.
{% endhint %}

### Common settings

When one of annotation tools is selected, you will see instrument settings on top bar. Every tool has it's own settings, but all annotation instruments share those two options:

#### Class selector

![Figure class \(Original\)](../../../.gitbook/assets/class.png)

Every figure must have exactly one class. You can predefine list of classes in `Project` settings or add new classes right from the annotation interface.

Choose a class you want to annotate on the image \(in [create mode](instruments.md#create-vs-edit)\) or change class of exiting shape \(in [editing mode](instruments.md#create-vs-edit)\).

{% hint style="success" %}
You can enter a hotkey to quickly select interesting class \(and tool that is used to create this class\).
{% endhint %}

To add new class, select `Create class` option from dropdown menu:

![Add class \(\)](../../../.gitbook/assets/add-class.png)

You must choose a _shape_ as [described](instruments.md#shapes-classes) above.

_Color_ will be used to draw the shape on the main scene.

#### Commit button

![Commit \(Original\)](../../../.gitbook/assets/commit.png)

Press commit button to save current figure and switch instrument to create mode.

{% hint style="success" %}
All changes you make with figures are saved automatically
{% endhint %}

{% hint style="info" %}
Press `SPACE` key to commit changes
{% endhint %}

### Point tool

![Point tool \(Original ^^\)](../../../.gitbook/assets/point.png)

Create or change figure of `Point` shape. Click anywhere on the scene to create new point, then drag it or press [commit button](instruments.md#commit-button) to save figure and start new figure.

`Point` shape contains _exactly one point_ \(aka `Landmark`\).

### Rectangle tool

![Rectangle tool \(Original ^^\)](../../../.gitbook/assets/rect.png)

Create or change figure of `Rectangle` shape. Click anywhere on the scene to create top left point of the rectangle, then click second time to create bottom right point. Drag points or press [commit button](instruments.md#commit-button) to save figure and start new figure.

`Rectangle` shape contains _exactly two_ points.

### Polyline tool

![Polyline tool \(Original ^^\)](../../../.gitbook/assets/polyline.png)

Create or change figure of `Polyline` shape. Click anywhere on the scene to create first point, then click multiple times to create new points connected with line. Drag points or press [commit button](instruments.md#commit-button) to save figure and start new figure.

`Polyline` shape contains _one or more_ points.

Polyline tool has several modes:

**Add points consecutively**

![Consecutively \(Original ^^\)](../../../.gitbook/assets/consecutively%20%281%29.png)

Each click will connect new point with the previously created one.

**Add points to the closest segment**

![Closest \(Original ^^\)](../../../.gitbook/assets/consecutively.png)

Each click will connect new point with the closest point.

**Remove points**

![Remove \(Original ^^\)](../../../.gitbook/assets/remove.png)

While in remove mode click on points to delete them.

### Polygon tool

![Polygon tool \(Original ^^\)](../../../.gitbook/assets/icon-add.png)

Create or change figure of `Polygon` shape. Click anywhere on the scene to create first point, then click multiple times to create new points that forms closed area. Drag points or press [commit button](instruments.md#commit-button) to save figure and start new figure.

`Polygon` shape contains _one or more_ points.

Polygon tool has the same modes as [Polyline tool](instruments.md#polyline-tool), plus two more:

**Set point as the first one**

![First \(Original ^^\)](../../../.gitbook/assets/first.png)

Use this mode to select point in polygon that will be connect with the last added point to form a closed shape. By default last point would be connected with the first one.

**Add hole**

![Hole \(Original ^^\)](../../../.gitbook/assets/add-hole.png)

You can add multiple holes inside polygons as described [here](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/annotation/figures/README.md#holes). `Add hole` only available when you have selected existing polygon to edit.

Click on `Add hole` to go into `Polygon` creating mode and use the same actions and modes as described above. After pressing [commit button](instruments.md#commit-button) new hole will appear inside main polygon.

You can edit existing holes by selecting them in [figures panel](https://github.com/TDionis/gitbook-test-2/tree/6674a9367498cf90a3f4b6119416152b98b80b92/annotation/figures/README.md).

### Bitmap tool

![Bitmap tool \(Original ^^\)](../../../.gitbook/assets/bitmap.png)

Create or change figure of `Bitmap` shape. Bitmap doesn't have points to create or drag. Instead, `Bitmap` shape is a pixel mask.

{% hint style="warning" %}
Because bitmaps are not an array of points \(as other instruments above\), you can't apply brush or other bitmap tools to existing shapes like `Polygon`.
{% endhint %}

Use the following models to draw or erase pixels from image:

**Brush**

![Brush \(Original ^^\)](../../../.gitbook/assets/brush.png)

Click anywhere on the scene, hold mouse button and draw shape you want. You can control size of the brush using field on the right.

**Eraser**

![Eraser \(Original ^^\)](../../../.gitbook/assets/erase.png)

Click anywhere on the scene, hold mouse button and erase unwanted pixels. You can control size of the eraser using field on the right.

**Fill**

![Fill \(Original ^^\)](../../../.gitbook/assets/fill.png)

You can quickly assign pixels of a custom shape with interesting class. Select `Fill` mode, then click at least three times on the scene to form a polygon to fill and then click `Apply changes` button on the right.

**Crop**

![Crop \(Original ^^\)](../../../.gitbook/assets/crop.png)

You can quickly subtract pixels of a custom shape from current figure. Select `Crop` mode, then click at least three times on the scene to form a polygon to subtract and then click `Apply changes` button on the right.

### Smart tool

![Smart tool \(Original ^^\)](../../../.gitbook/assets/smart.png)

Smart tool creates `Bitmap` shape, predicted by AI.

Click anywhere on the scene to create top left point of the rectangle, then click second time to create bottom right point. Neural network will try to find dominant object inside that rectangle. Drag points to recalculate bitmap, feed additional feedback \(read below\) or press [commit button](instruments.md#commit-button) to save figure and start new figure.

{% hint style="info" %}
After you click [commit button](instruments.md#commit-button) you will start creating new figure using smart tool. If you want to save current shape and edit it as a bitmap, use ![\(Original\)](../../../.gitbook/assets/save-to-bitmap.png) button.
{% endhint %}

{% hint style="success" %}
When you create a figure using smart tool you can interact with a neural network by providing ROI and other feedback. After you click [commit button](instruments.md#commit-button) current shape will be saved as a `Bitmap` shape and can be edited using `Bitmap tool`.
{% endhint %}

An important feature of smart tool is the ability to correct results by pointing neural network zones to include or exclude. The following modes are available:

**Positive Point**

![\(Original ^^\)](../../../.gitbook/assets/smart-point-yes.png)

Click and place point on part of the _object_ that should be _included_ in final shape. You can then drag the point.

**Negative Point**

![\(Original ^^\)](../../../.gitbook/assets/smart-point-no.png)

Click and place point on part of the _background_ that should be _excluded_ in final shape. You can then drag the point.

**Positive Brush**

![\(Original ^^\)](../../../.gitbook/assets/smart-brush-yes.png)

Draw a shape on part of the _object_ that should be _included_ in final shape. You can control size of the brush using field on the right.

**Negative Brush**

![\(Original ^^\)](../../../.gitbook/assets/smart-brush-no.png)

Draw a shape on part of the _background_ that should be _excluded_ in final shape. You can control size of the brush using field on the right.

**Eraser**

![\(Original ^^\)](../../../.gitbook/assets/erase%20%281%29.png)

Remove shapes you have drawn using `Positive Brush` and `Negative Brush`. You can control size of the eraser using field on the right.

