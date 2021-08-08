.class public Lcom/caverock/androidsvg/SVG$PolyLine;
.super Lcom/caverock/androidsvg/SVG$GraphicsElement;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolyLine"
.end annotation


# instance fields
.field public points:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1632
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 1632
    invoke-super {p0, p1}, Lcom/caverock/androidsvg/SVG$GraphicsElement;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
