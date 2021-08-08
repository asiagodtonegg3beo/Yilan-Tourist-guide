.class public Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;
.super Ljava/lang/Object;
.source "SnapIfNeededOverlayOp.java"


# instance fields
.field private geom:[Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g2"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geom/Geometry;

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    .line 64
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 65
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 66
    return-void
.end method

.method public static difference(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 52
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public static intersection(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public static overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "opCode"    # I

    .prologue
    .line 36
    new-instance v0, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 37
    .local v0, "op":Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;
    invoke-virtual {v0, p2}, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->getResultGeometry(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public static symDifference(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 57
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public static union(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getResultGeometry(I)Lorg/locationtech/jts/geom/Geometry;
    .locals 8
    .param p1, "opCode"    # I

    .prologue
    .line 70
    const/4 v3, 0x0

    .line 71
    .local v3, "result":Lorg/locationtech/jts/geom/Geometry;
    const/4 v1, 0x0

    .line 72
    .local v1, "isSuccess":Z
    const/4 v4, 0x0

    .line 75
    .local v4, "savedException":Ljava/lang/RuntimeException;
    :try_start_0
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v5, v6, p1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 76
    const/4 v2, 0x1

    .line 79
    .local v2, "isValid":Z
    if-eqz v2, :cond_0

    .line 80
    const/4 v1, 0x1

    .line 91
    .end local v2    # "isValid":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 95
    :try_start_1
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v5, v6, p1}, Lorg/locationtech/jts/operation/overlay/snap/SnapOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 101
    :cond_1
    return-object v3

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/RuntimeException;
    move-object v4, v0

    goto :goto_0

    .line 97
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 98
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    throw v4
.end method
