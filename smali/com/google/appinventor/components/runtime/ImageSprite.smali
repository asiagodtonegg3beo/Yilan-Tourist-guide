.class public Lcom/google/appinventor/components/runtime/ImageSprite;
.super Lcom/google/appinventor/components/runtime/Sprite;
.source "ImageSprite.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A \'sprite\' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>Ball</code>s and other <code>ImageSprite</code>s) and the edge of the Canvas, and move according to its property values.  Its appearance is that of the image specified in its <code>Picture</code> property (unless its <code>Visible</code> property is <code>False</code>).</p> <p>To have an <code>ImageSprite</code> move 10 pixels to the left every 1000 milliseconds (one second), for example, you would set the <code>Speed</code> property to 10 [pixels], the <code>Interval</code> property to 1000 [milliseconds], the <code>Heading</code> property to 180 [degrees], and the <code>Enabled</code> property to <code>True</code>.  A sprite whose <code>Rotates</code> property is <code>True</code> will rotate its image as the sprite\'s <code>Heading</code> changes.  Checking for collisions with a rotated sprite currently checks the sprite\'s unrotated position so that collision checking will be inaccurate for tall narrow or short wide sprites that are rotated.  Any of the sprite properties can be changed at any time under program control.</p> "
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private heightHint:I

.field private picturePath:Ljava/lang/String;

.field private rotates:Z

.field private widthHint:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 69
    iput v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    .line 70
    iput v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    .line 82
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    .line 84
    return-void
.end method


# virtual methods
.method public Height()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The height of the ImageSprite in pixels."
    .end annotation

    .prologue
    .line 158
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    const/16 v1, -0x3e8

    if-gt v0, v1, :cond_2

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 162
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    goto :goto_0
.end method

.method public Height(I)V
    .locals 0
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 172
    iput p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    .line 173
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 174
    return-void
.end method

.method public HeightPercent(I)V
    .locals 0
    .param p1, "pCent"    # I

    .prologue
    .line 179
    return-void
.end method

.method public MoveTo(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the ImageSprite so that its left top corner is at the specified x and y coordinates."
    .end annotation

    .prologue
    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Sprite;->MoveTo(DD)V

    .line 265
    return-void
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The picture that determines the ImageSprite\'s appearance."
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    return-object v0
.end method

.method public Picture(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 141
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 150
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "ImageSprite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method public Rotates(Z)V
    .locals 0
    .param p1, "rotates"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    .line 233
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 234
    return-void
.end method

.method public Rotates()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the image should rotate to match the ImageSprite\'s heading. The sprite rotates around its centerpoint."
    .end annotation

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    return v0
.end method

.method public Width()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The width of the ImageSprite in pixels."
    .end annotation

    .prologue
    .line 184
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    const/16 v1, -0x3e8

    if-gt v0, v1, :cond_2

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 188
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    goto :goto_0
.end method

.method public Width(I)V
    .locals 0
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 198
    iput p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    .line 199
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 200
    return-void
.end method

.method public WidthPercent(I)V
    .locals 0
    .param p1, "pCent"    # I

    .prologue
    .line 205
    return-void
.end method

.method public X()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The horizontal coordinate of the left edge of the ImageSprite, increasing as the ImageSprite moves right."
    .end annotation

    .prologue
    .line 243
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v0

    return-wide v0
.end method

.method public Y()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The vertical coordinate of the top edge of the ImageSprite, increasing as the ImageSprite moves down."
    .end annotation

    .prologue
    .line 251
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v0

    return-wide v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->visible:Z

    if-eqz v4, :cond_0

    .line 93
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->xLeft:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 94
    .local v2, "xinit":I
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->yTop:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 95
    .local v3, "yinit":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 96
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 97
    .local v0, "h":I
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    add-int v5, v2, v1

    add-int v6, v3, v0

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 100
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    if-nez v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    .end local v0    # "h":I
    .end local v1    # "w":I
    .end local v2    # "xinit":I
    .end local v3    # "yinit":I
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local v0    # "h":I
    .restart local v1    # "w":I
    .restart local v2    # "xinit":I
    .restart local v3    # "yinit":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Heading()D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v4, v4

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 110
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method
