.class public Lcom/caverock/androidsvg/SVG$TRef;
.super Lcom/caverock/androidsvg/SVG$TextContainer;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$TextChild;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRef"
.end annotation


# instance fields
.field public href:Ljava/lang/String;

.field private textRoot:Lcom/caverock/androidsvg/SVG$TextRoot;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1721
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$TextContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$TRef;->textRoot:Lcom/caverock/androidsvg/SVG$TextRoot;

    return-object v0
.end method

.method public setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V
    .locals 0
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextRoot;

    .prologue
    .line 1728
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$TRef;->textRoot:Lcom/caverock/androidsvg/SVG$TextRoot;

    return-void
.end method
