.class Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;
.super Landroid/os/AsyncTask;
.source "SVGImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAssetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Picture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caverock/androidsvg/SVGImageView;


# direct methods
.method private constructor <init>(Lcom/caverock/androidsvg/SVGImageView;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/caverock/androidsvg/SVGImageView;Lcom/caverock/androidsvg/SVGImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/caverock/androidsvg/SVGImageView;
    .param p2, "x1"    # Lcom/caverock/androidsvg/SVGImageView$1;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;-><init>(Lcom/caverock/androidsvg/SVGImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Picture;
    .locals 5
    .param p1, "filename"    # [Ljava/lang/String;

    .prologue
    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v1

    .line 212
    .local v1, "svg":Lcom/caverock/androidsvg/SVG;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 226
    .end local v1    # "svg":Lcom/caverock/androidsvg/SVG;
    :goto_0
    return-object v2

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    const-string v2, "SVGImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "SVGImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 222
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SVGImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load asset file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Picture;)V
    .locals 2
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGImageView;->access$300(Lcom/caverock/androidsvg/SVGImageView;)V

    .line 233
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    new-instance v1, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 205
    check-cast p1, Landroid/graphics/Picture;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->onPostExecute(Landroid/graphics/Picture;)V

    return-void
.end method
