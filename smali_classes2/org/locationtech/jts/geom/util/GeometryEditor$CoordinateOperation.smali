.class public abstract Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateOperation;
.super Ljava/lang/Object;
.source "GeometryEditor.java"

# interfaces
.implements Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/geom/util/GeometryEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CoordinateOperation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 281
    instance-of v1, p1, Lorg/locationtech/jts/geom/LinearRing;

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateOperation;->edit([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object p1

    .line 299
    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    :goto_0
    return-object p1

    .line 286
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v1, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v1, :cond_2

    .line 287
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateOperation;->edit([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object p1

    goto :goto_0

    .line 291
    :cond_2
    instance-of v1, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateOperation;->edit([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 295
    .local v0, "newCoordinates":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v1, v0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_1
    invoke-virtual {p2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public abstract edit([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;
.end method
