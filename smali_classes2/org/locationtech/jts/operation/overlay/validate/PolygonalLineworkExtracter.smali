.class Lorg/locationtech/jts/operation/overlay/validate/PolygonalLineworkExtracter;
.super Ljava/lang/Object;
.source "FuzzyPointLocator.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryFilter;


# instance fields
.field private linework:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/PolygonalLineworkExtracter;->linework:Ljava/util/List;

    .line 119
    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 4
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 126
    instance-of v2, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 127
    check-cast v1, Lorg/locationtech/jts/geom/Polygon;

    .line 128
    .local v1, "poly":Lorg/locationtech/jts/geom/Polygon;
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/validate/PolygonalLineworkExtracter;->linework:Ljava/util/List;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 130
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/validate/PolygonalLineworkExtracter;->linework:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    .end local v1    # "poly":Lorg/locationtech/jts/geom/Polygon;
    :cond_0
    return-void
.end method

.method public getLinework()Ljava/util/List;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/PolygonalLineworkExtracter;->linework:Ljava/util/List;

    return-object v0
.end method
