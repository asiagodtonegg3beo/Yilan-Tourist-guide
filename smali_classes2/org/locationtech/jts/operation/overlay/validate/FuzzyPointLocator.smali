.class public Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;
.super Ljava/lang/Object;
.source "FuzzyPointLocator.java"


# instance fields
.field private boundaryDistanceTolerance:D

.field private g:Lorg/locationtech/jts/geom/Geometry;

.field private linework:Lorg/locationtech/jts/geom/MultiLineString;

.field private ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

.field private seg:Lorg/locationtech/jts/geom/LineSegment;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;D)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "boundaryDistanceTolerance"    # D

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/PointLocator;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    .line 48
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->seg:Lorg/locationtech/jts/geom/LineSegment;

    .line 52
    iput-object p1, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->g:Lorg/locationtech/jts/geom/Geometry;

    .line 53
    iput-wide p2, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->boundaryDistanceTolerance:D

    .line 54
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->extractLinework(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->linework:Lorg/locationtech/jts/geom/MultiLineString;

    .line 55
    return-void
.end method

.method private extractLinework(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/MultiLineString;
    .locals 4
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 81
    new-instance v0, Lorg/locationtech/jts/operation/overlay/validate/PolygonalLineworkExtracter;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/overlay/validate/PolygonalLineworkExtracter;-><init>()V

    .line 82
    .local v0, "extracter":Lorg/locationtech/jts/operation/overlay/validate/PolygonalLineworkExtracter;
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryFilter;)V

    .line 83
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/overlay/validate/PolygonalLineworkExtracter;->getLinework()Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, "linework":Ljava/util/List;
    invoke-static {v2}, Lorg/locationtech/jts/geom/GeometryFactory;->toLineStringArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    .line 85
    .local v1, "lines":[Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v3

    return-object v3
.end method

.method private isWithinToleranceOfBoundary(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 8
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 90
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->linework:Lorg/locationtech/jts/geom/MultiLineString;

    invoke-virtual {v6}, Lorg/locationtech/jts/geom/MultiLineString;->getNumGeometries()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 91
    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->linework:Lorg/locationtech/jts/geom/MultiLineString;

    invoke-virtual {v6, v2}, Lorg/locationtech/jts/geom/MultiLineString;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geom/LineString;

    .line 92
    .local v4, "line":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v4}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v5

    .line 93
    .local v5, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v5}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    .line 94
    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v6, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v5, v3, v6}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 95
    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v7, v7, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v5, v6, v7}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 96
    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->seg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v6, p1}, Lorg/locationtech/jts/geom/LineSegment;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 97
    .local v0, "dist":D
    iget-wide v6, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->boundaryDistanceTolerance:D

    cmpg-double v6, v0, v6

    if-gtz v6, :cond_0

    .line 98
    const/4 v6, 0x1

    .line 101
    .end local v0    # "dist":D
    .end local v3    # "j":I
    .end local v4    # "line":Lorg/locationtech/jts/geom/LineString;
    .end local v5    # "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    :goto_2
    return v6

    .line 93
    .restart local v0    # "dist":D
    .restart local v3    # "j":I
    .restart local v4    # "line":Lorg/locationtech/jts/geom/LineString;
    .restart local v5    # "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    .end local v0    # "dist":D
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v3    # "j":I
    .end local v4    # "line":Lorg/locationtech/jts/geom/LineString;
    .end local v5    # "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getLocation(Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->isWithinToleranceOfBoundary(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->g:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, p1, v1}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v0

    goto :goto_0
.end method
