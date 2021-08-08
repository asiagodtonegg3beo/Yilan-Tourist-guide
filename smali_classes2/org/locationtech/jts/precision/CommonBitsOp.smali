.class public Lorg/locationtech/jts/precision/CommonBitsOp;
.super Ljava/lang/Object;
.source "CommonBitsOp.java"


# instance fields
.field private cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

.field private returnToOriginalPrecision:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/locationtech/jts/precision/CommonBitsOp;-><init>(Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "returnToOriginalPrecision"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/precision/CommonBitsOp;->returnToOriginalPrecision:Z

    .line 49
    iput-boolean p1, p0, Lorg/locationtech/jts/precision/CommonBitsOp;->returnToOriginalPrecision:Z

    .line 50
    return-void
.end method

.method private computeResultPrecision(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "result"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/locationtech/jts/precision/CommonBitsOp;->returnToOriginalPrecision:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/locationtech/jts/precision/CommonBitsOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/precision/CommonBitsRemover;->addCommonBits(Lorg/locationtech/jts/geom/Geometry;)V

    .line 128
    :cond_0
    return-object p1
.end method

.method private removeCommonBits(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p1, "geom0"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 139
    new-instance v1, Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-direct {v1}, Lorg/locationtech/jts/precision/CommonBitsRemover;-><init>()V

    iput-object v1, p0, Lorg/locationtech/jts/precision/CommonBitsOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    .line 140
    iget-object v1, p0, Lorg/locationtech/jts/precision/CommonBitsOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/precision/CommonBitsRemover;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 141
    iget-object v2, p0, Lorg/locationtech/jts/precision/CommonBitsOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/precision/CommonBitsRemover;->removeCommonBits(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 142
    .local v0, "geom":Lorg/locationtech/jts/geom/Geometry;
    return-object v0
.end method

.method private removeCommonBits(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "geom0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "geom1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 155
    new-instance v1, Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-direct {v1}, Lorg/locationtech/jts/precision/CommonBitsRemover;-><init>()V

    iput-object v1, p0, Lorg/locationtech/jts/precision/CommonBitsOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    .line 156
    iget-object v1, p0, Lorg/locationtech/jts/precision/CommonBitsOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/precision/CommonBitsRemover;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 157
    iget-object v1, p0, Lorg/locationtech/jts/precision/CommonBitsOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-virtual {v1, p2}, Lorg/locationtech/jts/precision/CommonBitsRemover;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 158
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/locationtech/jts/geom/Geometry;

    .line 159
    .local v0, "geom":[Lorg/locationtech/jts/geom/Geometry;
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/locationtech/jts/precision/CommonBitsOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v3, v1}, Lorg/locationtech/jts/precision/CommonBitsRemover;->removeCommonBits(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    aput-object v1, v0, v2

    .line 160
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/locationtech/jts/precision/CommonBitsOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v3, v1}, Lorg/locationtech/jts/precision/CommonBitsRemover;->removeCommonBits(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    aput-object v1, v0, v2

    .line 161
    return-object v0
.end method


# virtual methods
.method public buffer(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geom0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "distance"    # D

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lorg/locationtech/jts/precision/CommonBitsOp;->removeCommonBits(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 111
    .local v0, "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0, p2, p3}, Lorg/locationtech/jts/geom/Geometry;->buffer(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/precision/CommonBitsOp;->computeResultPrecision(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public difference(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p1, "geom0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "geom1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/precision/CommonBitsOp;->removeCommonBits(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 85
    .local v0, "geom":[Lorg/locationtech/jts/geom/Geometry;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Geometry;->difference(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/precision/CommonBitsOp;->computeResultPrecision(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public intersection(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p1, "geom0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "geom1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/precision/CommonBitsOp;->removeCommonBits(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 61
    .local v0, "geom":[Lorg/locationtech/jts/geom/Geometry;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Geometry;->intersection(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/precision/CommonBitsOp;->computeResultPrecision(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public symDifference(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p1, "geom0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "geom1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/precision/CommonBitsOp;->removeCommonBits(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 98
    .local v0, "geom":[Lorg/locationtech/jts/geom/Geometry;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Geometry;->symDifference(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/precision/CommonBitsOp;->computeResultPrecision(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public union(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p1, "geom0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "geom1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/precision/CommonBitsOp;->removeCommonBits(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 73
    .local v0, "geom":[Lorg/locationtech/jts/geom/Geometry;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Geometry;->union(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/precision/CommonBitsOp;->computeResultPrecision(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method
