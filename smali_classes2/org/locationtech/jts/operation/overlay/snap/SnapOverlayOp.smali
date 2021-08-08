.class public Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;
.super Ljava/lang/Object;
.source "SnapOverlayOp.java"


# instance fields
.field private cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

.field private geom:[Lorg/locationtech/jts/geom/Geometry;

.field private snapTolerance:D


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g2"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geom/Geometry;

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    .line 65
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 66
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 67
    invoke-direct {p0}, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->computeSnapTolerance()V

    .line 68
    return-void
.end method

.method private checkValid(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 134
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Snapped geometry is invalid"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method private computeSnapTolerance()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->computeOverlaySnapTolerance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->snapTolerance:D

    .line 74
    return-void
.end method

.method public static difference(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 51
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public static intersection(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public static overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "opCode"    # I

    .prologue
    .line 35
    new-instance v0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 36
    .local v0, "op":Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;
    invoke-virtual {v0, p2}, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->getResultGeometry(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method private prepareResult(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 115
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/precision/CommonBitsRemover;->addCommonBits(Lorg/locationtech/jts/geom/Geometry;)V

    .line 116
    return-object p1
.end method

.method private removeCommonBits([Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Geometry;
    .locals 5
    .param p1, "geom"    # [Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    new-instance v1, Lorg/locationtech/jts/precision/CommonBitsRemover;

    invoke-direct {v1}, Lorg/locationtech/jts/precision/CommonBitsRemover;-><init>()V

    iput-object v1, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    .line 124
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/precision/CommonBitsRemover;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 125
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/precision/CommonBitsRemover;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 126
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/locationtech/jts/geom/Geometry;

    .line 127
    .local v0, "remGeom":[Lorg/locationtech/jts/geom/Geometry;
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    aget-object v1, p1, v3

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/precision/CommonBitsRemover;->removeCommonBits(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    aput-object v1, v0, v3

    .line 128
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->cbr:Lorg/locationtech/jts/precision/CommonBitsRemover;

    aget-object v1, p1, v4

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/precision/CommonBitsRemover;->removeCommonBits(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    aput-object v1, v0, v4

    .line 129
    return-object v0
.end method

.method private selfSnap(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 86
    new-instance v1, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;

    invoke-direct {v1, p1}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 87
    .local v1, "snapper0":Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;
    iget-wide v2, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->snapTolerance:D

    invoke-virtual {v1, p1, v2, v3}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->snapTo(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 90
    .local v0, "snapGeom":Lorg/locationtech/jts/geom/Geometry;
    return-object v0
.end method

.method private snap([Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p1, "geom"    # [Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->removeCommonBits([Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 100
    .local v0, "remGeom":[Lorg/locationtech/jts/geom/Geometry;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-wide v4, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->snapTolerance:D

    invoke-static {v2, v3, v4, v5}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->snap(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 110
    .local v1, "snapGeom":[Lorg/locationtech/jts/geom/Geometry;
    return-object v1
.end method

.method public static symDifference(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 56
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public static union(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 46
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getResultGeometry(I)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "opCode"    # I

    .prologue
    .line 79
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {p0, v2}, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->snap([Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 80
    .local v0, "prepGeom":[Lorg/locationtech/jts/geom/Geometry;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v2, v3, p1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 81
    .local v1, "result":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->prepareResult(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    return-object v2
.end method
