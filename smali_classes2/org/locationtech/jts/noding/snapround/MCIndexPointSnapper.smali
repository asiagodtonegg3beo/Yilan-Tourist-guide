.class public Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;
.super Ljava/lang/Object;
.source "MCIndexPointSnapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;
    }
.end annotation


# instance fields
.field private index:Lorg/locationtech/jts/index/strtree/STRtree;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/index/SpatialIndex;)V
    .locals 0
    .param p1, "index"    # Lorg/locationtech/jts/index/SpatialIndex;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    check-cast p1, Lorg/locationtech/jts/index/strtree/STRtree;

    .end local p1    # "index":Lorg/locationtech/jts/index/SpatialIndex;
    iput-object p1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;->index:Lorg/locationtech/jts/index/strtree/STRtree;

    .line 38
    return-void
.end method


# virtual methods
.method public snap(Lorg/locationtech/jts/noding/snapround/HotPixel;)Z
    .locals 2
    .param p1, "hotPixel"    # Lorg/locationtech/jts/noding/snapround/HotPixel;

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;->snap(Lorg/locationtech/jts/noding/snapround/HotPixel;Lorg/locationtech/jts/noding/SegmentString;I)Z

    move-result v0

    return v0
.end method

.method public snap(Lorg/locationtech/jts/noding/snapround/HotPixel;Lorg/locationtech/jts/noding/SegmentString;I)Z
    .locals 4
    .param p1, "hotPixel"    # Lorg/locationtech/jts/noding/snapround/HotPixel;
    .param p2, "parentEdge"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p3, "hotPixelVertexIndex"    # I

    .prologue
    .line 53
    invoke-virtual {p1}, Lorg/locationtech/jts/noding/snapround/HotPixel;->getSafeEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    .line 54
    .local v1, "pixelEnv":Lorg/locationtech/jts/geom/Envelope;
    new-instance v0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;-><init>(Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;Lorg/locationtech/jts/noding/snapround/HotPixel;Lorg/locationtech/jts/noding/SegmentString;I)V

    .line 56
    .local v0, "hotPixelSnapAction":Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;->index:Lorg/locationtech/jts/index/strtree/STRtree;

    new-instance v3, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$1;

    invoke-direct {v3, p0, v1, v0}, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$1;-><init>(Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;)V

    invoke-virtual {v2, v1, v3}, Lorg/locationtech/jts/index/strtree/STRtree;->query(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/ItemVisitor;)V

    .line 63
    invoke-virtual {v0}, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;->isNodeAdded()Z

    move-result v2

    return v2
.end method
