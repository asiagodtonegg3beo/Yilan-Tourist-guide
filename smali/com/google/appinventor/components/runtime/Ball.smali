.class public final Lcom/google/appinventor/components/runtime/Ball;
.super Lcom/google/appinventor/components/runtime/Sprite;
.source "Ball.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A round \'sprite\' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>ImageSprite</code>s and other <code>Ball</code>s) and the edge of the Canvas, and move according to its property values.</p><p>For example, to have a <code>Ball</code> move 4 pixels toward the top of a <code>Canvas</code> every 500 milliseconds (half second), you would set the <code>Speed</code> property to 4 [pixels], the <code>Interval</code> property to 500 [milliseconds], the <code>Heading</code> property to 90 [degrees], and the <code>Enabled</code> property to <code>True</code>.</p><p>The difference between a <code>Ball</code> and an <code>ImageSprite</code> is that the latter can get its appearance from an image file, while a <code>Ball</code>\'s appearance can be changed only by varying its <code>PaintColor</code> and <code>Radius</code> properties.</p>"
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field static final DEFAULT_RADIUS:I = 0x5


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private paintColor:I

.field private radius:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ball;->paint:Landroid/graphics/Paint;

    .line 68
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ball;->PaintColor(I)V

    .line 69
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ball;->Radius(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public Height()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public Height(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 96
    return-void
.end method

.method public HeightPercent(I)V
    .locals 0
    .param p1, "pCent"    # I

    .prologue
    .line 101
    return-void
.end method

.method public MoveTo(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the x and y coordinates of the Ball. If CenterAtOrigin is true, the center of the Ball will be placed here. Otherwise, the top left edge of the Ball will be placed at the specified coordinates."
    .end annotation

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Sprite;->MoveTo(DD)V

    .line 239
    return-void
.end method

.method public OriginAtCenter(Z)V
    .locals 0
    .param p1, "b"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the x- and y-coordinates should represent the center of the Ball (true) or its left and top edges (false)."
        userVisible = false
    .end annotation

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->OriginAtCenter(Z)V

    .line 195
    return-void
.end method

.method public PaintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the Ball."
    .end annotation

    .prologue
    .line 159
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->paintColor:I

    return v0
.end method

.method public PaintColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 172
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ball;->paintColor:I

    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ball;->paint:Landroid/graphics/Paint;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 179
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->registerChange()V

    .line 180
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ball;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method public Radius()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 146
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    return v0
.end method

.method public Radius(I)V
    .locals 6
    .param p1, "radius"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The distance from the edge of the Ball to its center."
    .end annotation

    .prologue
    .line 131
    iget v1, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    sub-int v0, p1, v1

    .line 133
    .local v0, "dr":I
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Ball;->originAtCenter:Z

    if-eqz v1, :cond_0

    .line 134
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    int-to-double v4, v0

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    .line 135
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    int-to-double v4, v0

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    .line 137
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    .line 138
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->registerChange()V

    .line 139
    return-void
.end method

.method public Width()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public Width(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 111
    return-void
.end method

.method public WidthPercent(I)V
    .locals 0
    .param p1, "pCent"    # I

    .prologue
    .line 116
    return-void
.end method

.method public X()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The horizontal coordinate of the Ball, increasing as the Ball moves right. If the property OriginAtCenter is true, the coordinate is for the center of the Ball; otherwise, it is for the leftmost point of the Ball."
    .end annotation

    .prologue
    .line 208
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v0

    return-wide v0
.end method

.method public Y()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The vertical coordinate of the Ball, increasing as the Ball moves down. If the property OriginAtCenter is true, the coordinate is for the center of the Ball; otherwise, it is for the uppermost point of the Ball."
    .end annotation

    .prologue
    .line 222
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v0

    return-wide v0
.end method

.method public containsPoint(DD)Z
    .locals 7
    .param p1, "qx"    # D
    .param p3, "qy"    # D

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->xCenter:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Ball;->xCenter:D

    sub-double v2, p1, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Ball;->yCenter:D

    sub-double v2, p3, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Ball;->yCenter:D

    sub-double v4, p3, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ball;->visible:Z

    if-eqz v3, :cond_0

    .line 77
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    float-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-float v1, v4

    .line 78
    .local v1, "correctedXLeft":F
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    float-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-float v2, v4

    .line 79
    .local v2, "correctedYTop":F
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    mul-float v0, v3, v4

    .line 80
    .local v0, "correctedRadius":F
    add-float v3, v1, v0

    add-float v4, v2, v0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Ball;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    .end local v0    # "correctedRadius":F
    .end local v1    # "correctedXLeft":F
    .end local v2    # "correctedYTop":F
    :cond_0
    return-void
.end method
