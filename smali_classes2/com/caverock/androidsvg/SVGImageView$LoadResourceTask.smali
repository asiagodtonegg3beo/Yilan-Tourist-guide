.class Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;
.super Landroid/os/AsyncTask;
.source "SVGImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadResourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
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
    .line 179
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/caverock/androidsvg/SVGImageView;Lcom/caverock/androidsvg/SVGImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/caverock/androidsvg/SVGImageView;
    .param p2, "x1"    # Lcom/caverock/androidsvg/SVGImageView$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;-><init>(Lcom/caverock/androidsvg/SVGImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Picture;
    .locals 7
    .param p1, "resourceId"    # [Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/SVG;->getFromResource(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;

    move-result-object v1

    .line 186
    .local v1, "svg":Lcom/caverock/androidsvg/SVG;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 192
    .end local v1    # "svg":Lcom/caverock/androidsvg/SVG;
    :goto_0
    return-object v2

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    const-string v2, "SVGImageView"

    const-string v3, "Error loading resource 0x%x: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Picture;)V
    .locals 2
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGImageView;->access$300(Lcom/caverock/androidsvg/SVGImageView;)V

    .line 199
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    new-instance v1, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    check-cast p1, Landroid/graphics/Picture;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->onPostExecute(Landroid/graphics/Picture;)V

    return-void
.end method
