.class public final Lcom/google/appinventor/components/runtime/Image;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Image.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for displaying images.  The picture to display, and other aspects of the Image\'s appearance, can be specified in the Designer or in the Blocks Editor."
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# instance fields
.field private clickable:Z

.field private picturePath:Ljava/lang/String;

.field private rotationAngle:D

.field private scalingMode:I

.field private final view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    .line 60
    iput v2, p0, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    .line 62
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    .line 72
    new-instance v0, Lcom/google/appinventor/components/runtime/Image$1;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Image$1;-><init>(Lcom/google/appinventor/components/runtime/Image;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 83
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 84
    return-void
.end method


# virtual methods
.method public Animation(Ljava/lang/String;)V
    .locals 1
    .param p1, "animation"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is a limited form of animation that can attach a small number of motion types to images.  The allowable motions are ScrollRightSlow, ScrollRight, ScrollRightFast, ScrollLeftSlow, ScrollLeft, ScrollLeftFast, and Stop"
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "An event that occurs when an image is clicked."
    .end annotation

    .prologue
    .line 93
    const-string v0, "Click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public Clickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the image should be clickable or not."
    .end annotation

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 102
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/appinventor/components/runtime/Image$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Image$2;-><init>(Lcom/google/appinventor/components/runtime/Image;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public Clickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the image should be clickable or not."
    .end annotation

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    return v0
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    return-object v0
.end method

.method public Picture(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 143
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 144
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v4, Lcom/google/appinventor/components/runtime/Image$3;

    invoke-direct {v4, p0, p1}, Lcom/google/appinventor/components/runtime/Image$3;-><init>(Lcom/google/appinventor/components/runtime/Image;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 169
    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 158
    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 163
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public RotationAngle()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angle at which the image picture appears rotated. This rotation does not appear on the designer screen, only on the device."
    .end annotation

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    return-wide v0
.end method

.method public RotationAngle(D)V
    .locals 5
    .param p1, "rotationAngle"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "RotationAngle"

    const/16 v2, 0xbb9

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/HoneycombUtil;->viewSetRotate(Landroid/view/View;D)V

    .line 191
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    goto :goto_0
.end method

.method public ScalePictureToFit(Z)V
    .locals 2
    .param p1, "scale"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the image should be resized to match the size of the ImageView."
    .end annotation

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method public Scaling()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 259
    iget v0, p0, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    return v0
.end method

.method public Scaling(I)V
    .locals 3
    .param p1, "mode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property determines how the picture scales according to the Height or Width of the Image. Scale proportionally (0) preserves the picture aspect ratio. Scale to fit (1) matches the Image area, even if the aspect ratio changes."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    packed-switch p1, :pswitch_data_0

    .line 249
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal scaling mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 251
    :goto_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    .line 252
    return-void

    .line 246
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image;->view:Landroid/widget/ImageView;

    return-object v0
.end method
