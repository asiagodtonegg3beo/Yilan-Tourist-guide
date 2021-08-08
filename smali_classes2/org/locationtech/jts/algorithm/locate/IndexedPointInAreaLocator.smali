.class public Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator;
.super Ljava/lang/Object;
.source "IndexedPointInAreaLocator.java"

# interfaces
.implements Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;,
        Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$SegmentVisitor;
    }
.end annotation


# instance fields
.field private final index:Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygonal;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must be Polygonal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    new-instance v0, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator;->index:Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;

    .line 55
    return-void
.end method


# virtual methods
.method public locate(Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 7
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 65
    new-instance v0, Lorg/locationtech/jts/algorithm/RayCrossingCounter;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 67
    .local v0, "rcc":Lorg/locationtech/jts/algorithm/RayCrossingCounter;
    new-instance v6, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$SegmentVisitor;

    invoke-direct {v6, v0}, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$SegmentVisitor;-><init>(Lorg/locationtech/jts/algorithm/RayCrossingCounter;)V

    .line 68
    .local v6, "visitor":Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$SegmentVisitor;
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator;->index:Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual/range {v1 .. v6}, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;->query(DDLorg/locationtech/jts/index/ItemVisitor;)V

    .line 76
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->getLocation()I

    move-result v1

    return v1
.end method
