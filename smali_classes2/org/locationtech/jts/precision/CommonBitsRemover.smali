.class public Lorg/locationtech/jts/precision/CommonBitsRemover;
.super Ljava/lang/Object;
.source "CommonBitsRemover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;,
        Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;
    }
.end annotation


# instance fields
.field private ccFilter:Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;

.field private commonCoord:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;-><init>(Lorg/locationtech/jts/precision/CommonBitsRemover;)V

    iput-object v0, p0, Lorg/locationtech/jts/precision/CommonBitsRemover;->ccFilter:Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;

    .line 57
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/locationtech/jts/precision/CommonBitsRemover;->ccFilter:Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V

    .line 70
    iget-object v0, p0, Lorg/locationtech/jts/precision/CommonBitsRemover;->ccFilter:Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;

    invoke-virtual {v0}, Lorg/locationtech/jts/precision/CommonBitsRemover$CommonCoordinateFilter;->getCommonCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/precision/CommonBitsRemover;->commonCoord:Lorg/locationtech/jts/geom/Coordinate;

    .line 71
    return-void
.end method

.method public addCommonBits(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 106
    new-instance v0, Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;

    iget-object v1, p0, Lorg/locationtech/jts/precision/CommonBitsRemover;->commonCoord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p0, v1}, Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;-><init>(Lorg/locationtech/jts/precision/CommonBitsRemover;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 107
    .local v0, "trans":Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V

    .line 108
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->geometryChanged()V

    .line 109
    return-void
.end method

.method public getCommonCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/locationtech/jts/precision/CommonBitsRemover;->commonCoord:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public removeCommonBits(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const-wide/16 v4, 0x0

    .line 87
    iget-object v2, p0, Lorg/locationtech/jts/precision/CommonBitsRemover;->commonCoord:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/precision/CommonBitsRemover;->commonCoord:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 95
    :goto_0
    return-object p1

    .line 89
    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/precision/CommonBitsRemover;->commonCoord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, v2}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 90
    .local v0, "invCoord":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    neg-double v2, v2

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 91
    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    neg-double v2, v2

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 92
    new-instance v1, Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;

    invoke-direct {v1, p0, v0}, Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;-><init>(Lorg/locationtech/jts/precision/CommonBitsRemover;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 93
    .local v1, "trans":Lorg/locationtech/jts/precision/CommonBitsRemover$Translater;
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V

    .line 94
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->geometryChanged()V

    goto :goto_0
.end method
