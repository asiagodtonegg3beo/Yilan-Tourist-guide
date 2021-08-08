.class public Lorg/locationtech/jts/triangulate/MidpointSplitPointFinder;
.super Ljava/lang/Object;
.source "MidpointSplitPointFinder.java"

# interfaces
.implements Lorg/locationtech/jts/triangulate/ConstraintSplitPointFinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findSplitPoint(Lorg/locationtech/jts/triangulate/Segment;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 12
    .param p1, "seg"    # Lorg/locationtech/jts/triangulate/Segment;
    .param p2, "encroachPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 36
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/Segment;->getStart()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 37
    .local v0, "p0":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/Segment;->getEnd()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 38
    .local v1, "p1":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v4, v6

    div-double/2addr v4, v10

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v2
.end method
