.class public Lcom/caverock/androidsvg/SVG$Ellipse;
.super Lcom/caverock/androidsvg/SVG$GraphicsElement;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ellipse"
.end annotation


# instance fields
.field public cx:Lcom/caverock/androidsvg/SVG$Length;

.field public cy:Lcom/caverock/androidsvg/SVG$Length;

.field public rx:Lcom/caverock/androidsvg/SVG$Length;

.field public ry:Lcom/caverock/androidsvg/SVG$Length;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1614
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 1614
    invoke-super {p0, p1}, Lcom/caverock/androidsvg/SVG$GraphicsElement;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
