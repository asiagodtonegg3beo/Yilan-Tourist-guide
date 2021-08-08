.class abstract Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;
.super Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;
.source "AbstractPreparedPolygonContains.java"


# instance fields
.field private hasNonProperIntersection:Z

.field private hasProperIntersection:Z

.field private hasSegmentIntersection:Z

.field protected requireSomePointInInterior:Z


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V
    .locals 2
    .param p1, "prepPoly"    # Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;-><init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->requireSomePointInInterior:Z

    .line 56
    iput-boolean v1, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->hasSegmentIntersection:Z

    .line 57
    iput-boolean v1, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->hasProperIntersection:Z

    .line 58
    iput-boolean v1, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->hasNonProperIntersection:Z

    .line 68
    return-void
.end method

.method private findAndClassifyIntersections(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 206
    invoke-static {p1}, Lorg/locationtech/jts/noding/SegmentStringUtil;->extractSegmentStrings(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "lineSegStr":Ljava/util/List;
    new-instance v0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;

    invoke-direct {v0}, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;-><init>()V

    .line 209
    .local v0, "intDetector":Lorg/locationtech/jts/noding/SegmentIntersectionDetector;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->setFindAllIntersectionTypes(Z)V

    .line 210
    iget-object v2, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->prepPoly:Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getIntersectionFinder()Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;->intersects(Ljava/util/Collection;Lorg/locationtech/jts/noding/SegmentIntersectionDetector;)Z

    .line 212
    invoke-virtual {v0}, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasIntersection()Z

    move-result v2

    iput-boolean v2, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->hasSegmentIntersection:Z

    .line 213
    invoke-virtual {v0}, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasProperIntersection()Z

    move-result v2

    iput-boolean v2, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->hasProperIntersection:Z

    .line 214
    invoke-virtual {v0}, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasNonProperIntersection()Z

    move-result v2

    iput-boolean v2, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->hasNonProperIntersection:Z

    .line 215
    return-void
.end method

.method private isProperIntersectionImpliesNotContainedSituation(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "testGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v0, 0x1

    .line 178
    instance-of v1, p1, Lorg/locationtech/jts/geom/Polygonal;

    if-eqz v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->prepPoly:Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->isSingleShell(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSingleShell(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 5
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v2

    .line 198
    :cond_1
    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Polygon;

    .line 199
    .local v1, "poly":Lorg/locationtech/jts/geom/Polygon;
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v0

    .line 200
    .local v0, "numHoles":I
    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method protected eval(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 5
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->isAllTestComponentsInTarget(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    .line 86
    .local v0, "isAllInTargetArea":Z
    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 96
    :cond_1
    iget-boolean v4, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->requireSomePointInInterior:Z

    if-eqz v4, :cond_2

    .line 97
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v4

    if-nez v4, :cond_2

    .line 98
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->isAnyTestComponentInTargetInterior(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    .line 99
    .local v1, "isAnyInTargetInterior":Z
    goto :goto_0

    .line 116
    .end local v1    # "isAnyInTargetInterior":Z
    :cond_2
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->isProperIntersectionImpliesNotContainedSituation(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v3

    .line 121
    .local v3, "properIntersectionImpliesNotContained":Z
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->findAndClassifyIntersections(Lorg/locationtech/jts/geom/Geometry;)V

    .line 123
    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->hasProperIntersection:Z

    if-nez v4, :cond_0

    .line 140
    :cond_3
    iget-boolean v4, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->hasSegmentIntersection:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->hasNonProperIntersection:Z

    if-eqz v4, :cond_0

    .line 149
    :cond_4
    iget-boolean v4, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->hasSegmentIntersection:Z

    if-eqz v4, :cond_5

    .line 150
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->fullTopologicalPredicate(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    goto :goto_0

    .line 159
    :cond_5
    instance-of v4, p1, Lorg/locationtech/jts/geom/Polygonal;

    if-eqz v4, :cond_6

    .line 161
    iget-object v4, p0, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->prepPoly:Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getRepresentativePoints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;->isAnyTargetComponentInAreaTest(Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Z

    move-result v2

    .line 162
    .local v2, "isTargetInTestArea":Z
    if-nez v2, :cond_0

    .line 164
    .end local v2    # "isTargetInTestArea":Z
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract fullTopologicalPredicate(Lorg/locationtech/jts/geom/Geometry;)Z
.end method
