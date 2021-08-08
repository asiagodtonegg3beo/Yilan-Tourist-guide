.class public abstract Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateSequenceOperation;
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
    name = "CoordinateSequenceOperation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract edit(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;
.end method

.method public final edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 326
    instance-of v0, p1, Lorg/locationtech/jts/geom/LinearRing;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 327
    check-cast v0, Lorg/locationtech/jts/geom/LinearRing;

    .line 328
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    .line 327
    invoke-virtual {p0, v0, p1}, Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateSequenceOperation;->edit(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object p1

    .line 344
    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    :goto_0
    return-object p1

    .line 332
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 333
    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .line 334
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v0, p1}, Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateSequenceOperation;->edit(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LineString;

    move-result-object p1

    goto :goto_0

    .line 338
    :cond_2
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 339
    check-cast v0, Lorg/locationtech/jts/geom/Point;

    .line 340
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Point;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    .line 339
    invoke-virtual {p0, v0, p1}, Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateSequenceOperation;->edit(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Point;

    move-result-object p1

    goto :goto_0
.end method
