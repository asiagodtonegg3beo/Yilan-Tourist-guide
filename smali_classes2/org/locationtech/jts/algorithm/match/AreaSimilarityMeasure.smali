.class public Lorg/locationtech/jts/algorithm/match/AreaSimilarityMeasure;
.super Ljava/lang/Object;
.source "AreaSimilarityMeasure.java"

# interfaces
.implements Lorg/locationtech/jts/algorithm/match/SimilarityMeasure;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public measure(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)D
    .locals 6
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g2"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 45
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Geometry;->intersection(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getArea()D

    move-result-wide v0

    .line 46
    .local v0, "areaInt":D
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Geometry;->union(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getArea()D

    move-result-wide v2

    .line 47
    .local v2, "areaUnion":D
    div-double v4, v0, v2

    return-wide v4
.end method
