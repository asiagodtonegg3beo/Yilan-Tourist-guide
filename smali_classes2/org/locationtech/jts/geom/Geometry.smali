.class public abstract Lorg/locationtech/jts/geom/Geometry;
.super Ljava/lang/Object;
.source "Geometry.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field static final SORTINDEX_GEOMETRYCOLLECTION:I = 0x7

.field static final SORTINDEX_LINEARRING:I = 0x3

.field static final SORTINDEX_LINESTRING:I = 0x2

.field static final SORTINDEX_MULTILINESTRING:I = 0x4

.field static final SORTINDEX_MULTIPOINT:I = 0x1

.field static final SORTINDEX_MULTIPOLYGON:I = 0x6

.field static final SORTINDEX_POINT:I = 0x0

.field static final SORTINDEX_POLYGON:I = 0x5

.field private static final geometryChangedFilter:Lorg/locationtech/jts/geom/GeometryComponentFilter;

.field private static final serialVersionUID:J = 0x799ea46522854a3eL


# instance fields
.field protected SRID:I

.field protected envelope:Lorg/locationtech/jts/geom/Envelope;

.field protected final factory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lorg/locationtech/jts/geom/Geometry$1;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Geometry$1;-><init>()V

    sput-object v0, Lorg/locationtech/jts/geom/Geometry;->geometryChangedFilter:Lorg/locationtech/jts/geom/GeometryComponentFilter;

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 1
    .param p1, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geom/Geometry;->userData:Ljava/lang/Object;

    .line 203
    iput-object p1, p0, Lorg/locationtech/jts/geom/Geometry;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 204
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryFactory;->getSRID()I

    move-result v0

    iput v0, p0, Lorg/locationtech/jts/geom/Geometry;->SRID:I

    .line 205
    return-void
.end method

.method private createPointFromInternalCoord(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Point;
    .locals 1
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "exemplar"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 1872
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 1873
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method protected static hasNonEmptyElements([Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p0, "geometries"    # [Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 224
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    const/4 v1, 0x1

    .line 228
    :goto_1
    return v1

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected static hasNullElements([Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 240
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 241
    const/4 v1, 0x1

    .line 244
    :goto_1
    return v1

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public abstract apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V
.end method

.method public abstract apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V
.end method

.method public abstract apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V
.end method

.method public abstract apply(Lorg/locationtech/jts/geom/GeometryFilter;)V
.end method

.method public buffer(D)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "distance"    # D

    .prologue
    .line 1172
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufferOp(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public buffer(DI)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "distance"    # D
    .param p3, "quadrantSegments"    # I

    .prologue
    .line 1205
    invoke-static {p0, p1, p2, p3}, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufferOp(Lorg/locationtech/jts/geom/Geometry;DI)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public buffer(DII)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "distance"    # D
    .param p3, "quadrantSegments"    # I
    .param p4, "endCapStyle"    # I

    .prologue
    .line 1243
    invoke-static {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufferOp(Lorg/locationtech/jts/geom/Geometry;DII)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method protected checkNotGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 1776
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/locationtech/jts/geom/GeometryCollection;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method does not support GeometryCollection arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1779
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1619
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 1620
    .local v0, "clone":Lorg/locationtech/jts/geom/Geometry;
    iget-object v2, v0, Lorg/locationtech/jts/geom/Geometry;->envelope:Lorg/locationtech/jts/geom/Envelope;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/locationtech/jts/geom/Envelope;

    iget-object v3, v0, Lorg/locationtech/jts/geom/Geometry;->envelope:Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    iput-object v2, v0, Lorg/locationtech/jts/geom/Geometry;->envelope:Lorg/locationtech/jts/geom/Envelope;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    .end local v0    # "clone":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    :goto_0
    return-object v0

    .line 1623
    :catch_0
    move-exception v1

    .line 1624
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-static {}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere()V

    .line 1625
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected compare(Ljava/util/Collection;Ljava/util/Collection;)I
    .locals 6
    .param p1, "a"    # Ljava/util/Collection;
    .param p2, "b"    # Ljava/util/Collection;

    .prologue
    .line 1844
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1845
    .local v3, "i":Ljava/util/Iterator;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1846
    .local v4, "j":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1847
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 1848
    .local v0, "aElement":Ljava/lang/Comparable;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 1849
    .local v1, "bElement":Ljava/lang/Comparable;
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 1850
    .local v2, "comparison":I
    if-eqz v2, :cond_0

    .line 1860
    .end local v0    # "aElement":Ljava/lang/Comparable;
    .end local v1    # "bElement":Ljava/lang/Comparable;
    .end local v2    # "comparison":I
    :goto_0
    return v2

    .line 1854
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1855
    const/4 v2, 0x1

    goto :goto_0

    .line 1857
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1858
    const/4 v2, -0x1

    goto :goto_0

    .line 1860
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1687
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 1688
    .local v0, "other":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getSortIndex()I

    move-result v1

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getSortIndex()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1689
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getSortIndex()I

    move-result v1

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getSortIndex()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1700
    :goto_0
    return v1

    .line 1691
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1692
    const/4 v1, 0x0

    goto :goto_0

    .line 1694
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1695
    const/4 v1, -0x1

    goto :goto_0

    .line 1697
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1698
    const/4 v1, 0x1

    goto :goto_0

    .line 1700
    :cond_3
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->compareToSameClass(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;Lorg/locationtech/jts/geom/CoordinateSequenceComparator;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "comp"    # Lorg/locationtech/jts/geom/CoordinateSequenceComparator;

    .prologue
    .line 1734
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 1735
    .local v0, "other":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getSortIndex()I

    move-result v1

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getSortIndex()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1736
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getSortIndex()I

    move-result v1

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getSortIndex()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1747
    :goto_0
    return v1

    .line 1738
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1739
    const/4 v1, 0x0

    goto :goto_0

    .line 1741
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1742
    const/4 v1, -0x1

    goto :goto_0

    .line 1744
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1745
    const/4 v1, 0x1

    goto :goto_0

    .line 1747
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/geom/Geometry;->compareToSameClass(Ljava/lang/Object;Lorg/locationtech/jts/geom/CoordinateSequenceComparator;)I

    move-result v1

    goto :goto_0
.end method

.method protected abstract compareToSameClass(Ljava/lang/Object;)I
.end method

.method protected abstract compareToSameClass(Ljava/lang/Object;Lorg/locationtech/jts/geom/CoordinateSequenceComparator;)I
.end method

.method protected abstract computeEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;
.end method

.method public contains(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 872
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    const/4 v0, 0x0

    .line 879
    .end local p0    # "this":Lorg/locationtech/jts/geom/Geometry;
    :goto_0
    return v0

    .line 875
    .restart local p0    # "this":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isRectangle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    check-cast p0, Lorg/locationtech/jts/geom/Polygon;

    .end local p0    # "this":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {p0, p1}, Lorg/locationtech/jts/operation/predicate/RectangleContains;->contains(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0

    .line 879
    .restart local p0    # "this":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->relate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/IntersectionMatrix;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isContains()Z

    move-result v0

    goto :goto_0
.end method

.method public convexHull()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 1277
    new-instance v0, Lorg/locationtech/jts/algorithm/ConvexHull;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/algorithm/ConvexHull;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/ConvexHull;->getConvexHull()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public coveredBy(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 986
    invoke-virtual {p1, p0}, Lorg/locationtech/jts/geom/Geometry;->covers(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public covers(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 946
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->covers(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    const/4 v0, 0x0

    .line 953
    :goto_0
    return v0

    .line 949
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isRectangle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    const/4 v0, 0x1

    goto :goto_0

    .line 953
    :cond_1
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->relate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/IntersectionMatrix;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isCovers()Z

    move-result v0

    goto :goto_0
.end method

.method public crosses(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 3
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 806
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    const/4 v0, 0x0

    .line 808
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->relate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/IntersectionMatrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v1

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isCrosses(II)Z

    move-result v0

    goto :goto_0
.end method

.method public difference(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v1, 0x3

    .line 1410
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/geom/Geometry;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {v1, p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->createEmptyResult(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 1415
    :goto_0
    return-object v0

    .line 1411
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    goto :goto_0

    .line 1413
    :cond_1
    invoke-virtual {p0, p0}, Lorg/locationtech/jts/geom/Geometry;->checkNotGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)V

    .line 1414
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->checkNotGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)V

    .line 1415
    invoke-static {p0, p1, v1}, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method

.method public disjoint(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 678
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->intersects(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public distance(Lorg/locationtech/jts/geom/Geometry;)D
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 448
    invoke-static {p0, p1}, Lorg/locationtech/jts/operation/distance/DistanceOp;->distance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    return-wide v0
.end method

.method protected equal(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)Z
    .locals 3
    .param p1, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "tolerance"    # D

    .prologue
    .line 1864
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1865
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1114
    instance-of v1, p1, Lorg/locationtech/jts/geom/Geometry;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1116
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1115
    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 1116
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->equalsExact(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    goto :goto_0
.end method

.method public equals(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 1047
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1048
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->equalsTopo(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0
.end method

.method public equalsExact(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 1538
    if-eq p0, p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/locationtech/jts/geom/Geometry;->equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z
.end method

.method public equalsNorm(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 1558
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1559
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->norm()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->norm()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->equalsExact(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0
.end method

.method public equalsTopo(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 3
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 1078
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    const/4 v0, 0x0

    .line 1080
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->relate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/IntersectionMatrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v1

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isEquals(II)Z

    move-result v0

    goto :goto_0
.end method

.method public geometryChanged()V
    .locals 1

    .prologue
    .line 645
    sget-object v0, Lorg/locationtech/jts/geom/Geometry;->geometryChangedFilter:Lorg/locationtech/jts/geom/GeometryComponentFilter;

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 646
    return-void
.end method

.method protected geometryChangedAction()V
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geom/Geometry;->envelope:Lorg/locationtech/jts/geom/Envelope;

    .line 657
    return-void
.end method

.method public getArea()D
    .locals 2

    .prologue
    .line 489
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getBoundary()Lorg/locationtech/jts/geom/Geometry;
.end method

.method public abstract getBoundaryDimension()I
.end method

.method public getCentroid()Lorg/locationtech/jts/geom/Point;
    .locals 3

    .prologue
    .line 519
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    iget-object v2, p0, Lorg/locationtech/jts/geom/Geometry;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v1, 0x0

    check-cast v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    .line 522
    :goto_0
    return-object v1

    .line 521
    :cond_0
    invoke-static {p0}, Lorg/locationtech/jts/algorithm/Centroid;->getCentroid(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 522
    .local v0, "centPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v0, p0}, Lorg/locationtech/jts/geom/Geometry;->createPointFromInternalCoord(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
.end method

.method public abstract getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
.end method

.method public abstract getDimension()I
.end method

.method public getEnvelope()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .prologue
    .line 613
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->toGeometry(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lorg/locationtech/jts/geom/Geometry;->envelope:Lorg/locationtech/jts/geom/Envelope;

    if-nez v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->computeEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/geom/Geometry;->envelope:Lorg/locationtech/jts/geom/Envelope;

    .line 634
    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    iget-object v1, p0, Lorg/locationtech/jts/geom/Geometry;->envelope:Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    return-object v0
.end method

.method public getFactory()Lorg/locationtech/jts/geom/GeometryFactory;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/locationtech/jts/geom/Geometry;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    return-object v0
.end method

.method public getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 315
    return-object p0
.end method

.method public abstract getGeometryType()Ljava/lang/String;
.end method

.method public getInteriorPoint()Lorg/locationtech/jts/geom/Point;
    .locals 5

    .prologue
    .line 537
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    iget-object v4, p0, Lorg/locationtech/jts/geom/Geometry;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v3, 0x0

    check-cast v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v4, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v3

    .line 553
    :goto_0
    return-object v3

    .line 539
    :cond_0
    const/4 v2, 0x0

    .line 540
    .local v2, "interiorPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v0

    .line 541
    .local v0, "dim":I
    if-nez v0, :cond_1

    .line 542
    new-instance v1, Lorg/locationtech/jts/algorithm/InteriorPointPoint;

    invoke-direct {v1, p0}, Lorg/locationtech/jts/algorithm/InteriorPointPoint;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 543
    .local v1, "intPt":Lorg/locationtech/jts/algorithm/InteriorPointPoint;
    invoke-virtual {v1}, Lorg/locationtech/jts/algorithm/InteriorPointPoint;->getInteriorPoint()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 553
    .end local v1    # "intPt":Lorg/locationtech/jts/algorithm/InteriorPointPoint;
    :goto_1
    invoke-direct {p0, v2, p0}, Lorg/locationtech/jts/geom/Geometry;->createPointFromInternalCoord(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Point;

    move-result-object v3

    goto :goto_0

    .line 545
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 546
    new-instance v1, Lorg/locationtech/jts/algorithm/InteriorPointLine;

    invoke-direct {v1, p0}, Lorg/locationtech/jts/algorithm/InteriorPointLine;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 547
    .local v1, "intPt":Lorg/locationtech/jts/algorithm/InteriorPointLine;
    invoke-virtual {v1}, Lorg/locationtech/jts/algorithm/InteriorPointLine;->getInteriorPoint()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 548
    goto :goto_1

    .line 550
    .end local v1    # "intPt":Lorg/locationtech/jts/algorithm/InteriorPointLine;
    :cond_2
    new-instance v1, Lorg/locationtech/jts/algorithm/InteriorPointArea;

    invoke-direct {v1, p0}, Lorg/locationtech/jts/algorithm/InteriorPointArea;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 551
    .local v1, "intPt":Lorg/locationtech/jts/algorithm/InteriorPointArea;
    invoke-virtual {v1}, Lorg/locationtech/jts/algorithm/InteriorPointArea;->getInteriorPoint()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    goto :goto_1
.end method

.method public getLength()D
    .locals 2

    .prologue
    .line 503
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNumGeometries()I
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getNumPoints()I
.end method

.method public getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/locationtech/jts/geom/Geometry;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryFactory;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v0

    return-object v0
.end method

.method public getSRID()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lorg/locationtech/jts/geom/Geometry;->SRID:I

    return v0
.end method

.method protected abstract getSortIndex()I
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/locationtech/jts/geom/Geometry;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1126
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->hashCode()I

    move-result v0

    return v0
.end method

.method public intersection(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v2, 0x1

    .line 1315
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1316
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/Geometry;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {v2, p0, p1, v1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->createEmptyResult(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 1334
    :goto_0
    return-object v1

    .line 1319
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isGeometryCollection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1320
    move-object v0, p1

    .local v0, "g2":Lorg/locationtech/jts/geom/Geometry;
    move-object v1, p0

    .line 1321
    check-cast v1, Lorg/locationtech/jts/geom/GeometryCollection;

    new-instance v2, Lorg/locationtech/jts/geom/Geometry$2;

    invoke-direct {v2, p0, v0}, Lorg/locationtech/jts/geom/Geometry$2;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    invoke-static {v1, v2}, Lorg/locationtech/jts/geom/util/GeometryCollectionMapper;->map(Lorg/locationtech/jts/geom/GeometryCollection;Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v1

    goto :goto_0

    .line 1332
    .end local v0    # "g2":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    invoke-virtual {p0, p0}, Lorg/locationtech/jts/geom/Geometry;->checkNotGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)V

    .line 1333
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->checkNotGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)V

    .line 1334
    invoke-static {p0, p1, v2}, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    goto :goto_0
.end method

.method public intersects(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 6
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v3, 0x0

    .line 739
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 777
    :cond_0
    :goto_0
    return v3

    .line 759
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isRectangle()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 760
    check-cast p0, Lorg/locationtech/jts/geom/Polygon;

    .end local p0    # "this":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {p0, p1}, Lorg/locationtech/jts/operation/predicate/RectangleIntersects;->intersects(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v3

    goto :goto_0

    .line 762
    .restart local p0    # "this":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isRectangle()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 763
    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {p1, p0}, Lorg/locationtech/jts/operation/predicate/RectangleIntersects;->intersects(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v3

    goto :goto_0

    .line 765
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isGeometryCollection()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isGeometryCollection()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 766
    :cond_4
    const/4 v2, 0x0

    .line 767
    .local v2, "r":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 768
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 769
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Geometry;->intersects(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 770
    const/4 v3, 0x1

    goto :goto_0

    .line 768
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 767
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 777
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "r":Z
    :cond_7
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->relate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/IntersectionMatrix;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isIntersects()Z

    move-result v3

    goto :goto_0
.end method

.method public abstract isEmpty()Z
.end method

.method protected isEquivalentClass(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 1763
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isGeometryCollection()Z
    .locals 2

    .prologue
    .line 1789
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/locationtech/jts/geom/GeometryCollection;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRectangle()Z
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public isSimple()Z
    .locals 2

    .prologue
    .line 410
    new-instance v0, Lorg/locationtech/jts/operation/IsSimpleOp;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/IsSimpleOp;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 411
    .local v0, "op":Lorg/locationtech/jts/operation/IsSimpleOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/IsSimpleOp;->isSimple()Z

    move-result v1

    return v1
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 426
    invoke-static {p0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->isValid(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public isWithinDistance(Lorg/locationtech/jts/geom/Geometry;D)Z
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "distance"    # D

    .prologue
    .line 461
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Envelope;->distance(Lorg/locationtech/jts/geom/Envelope;)D

    move-result-wide v0

    .line 462
    .local v0, "envDist":D
    cmpl-double v2, v0, p2

    if-lez v2, :cond_0

    .line 463
    const/4 v2, 0x0

    .line 464
    :goto_0
    return v2

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/locationtech/jts/operation/distance/DistanceOp;->isWithinDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)Z

    move-result v2

    goto :goto_0
.end method

.method public norm()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 1655
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 1656
    .local v0, "copy":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->normalize()V

    .line 1657
    return-object v0
.end method

.method public abstract normalize()V
.end method

.method public overlaps(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 3
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 905
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    const/4 v0, 0x0

    .line 907
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->relate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/IntersectionMatrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v1

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isOverlaps(II)Z

    move-result v0

    goto :goto_0
.end method

.method public relate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/IntersectionMatrix;
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 1024
    invoke-virtual {p0, p0}, Lorg/locationtech/jts/geom/Geometry;->checkNotGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)V

    .line 1025
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->checkNotGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)V

    .line 1026
    invoke-static {p0, p1}, Lorg/locationtech/jts/operation/relate/RelateOp;->relate(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/IntersectionMatrix;

    move-result-object v0

    return-object v0
.end method

.method public relate(Lorg/locationtech/jts/geom/Geometry;Ljava/lang/String;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "intersectionPattern"    # Ljava/lang/String;

    .prologue
    .line 1013
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->relate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/IntersectionMatrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract reverse()Lorg/locationtech/jts/geom/Geometry;
.end method

.method public setSRID(I)V
    .locals 0
    .param p1, "SRID"    # I

    .prologue
    .line 276
    iput p1, p0, Lorg/locationtech/jts/geom/Geometry;->SRID:I

    .line 277
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/Object;

    .prologue
    .line 330
    iput-object p1, p0, Lorg/locationtech/jts/geom/Geometry;->userData:Ljava/lang/Object;

    .line 331
    return-void
.end method

.method public symDifference(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v1, 0x4

    .line 1439
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1441
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1442
    iget-object v0, p0, Lorg/locationtech/jts/geom/Geometry;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {v1, p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->createEmptyResult(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 1451
    :goto_0
    return-object v0

    .line 1445
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    goto :goto_0

    .line 1446
    :cond_2
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    goto :goto_0

    .line 1449
    :cond_3
    invoke-virtual {p0, p0}, Lorg/locationtech/jts/geom/Geometry;->checkNotGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)V

    .line 1450
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->checkNotGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)V

    .line 1451
    invoke-static {p0, p1, v1}, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1130
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->toText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1141
    new-instance v0, Lorg/locationtech/jts/io/WKTWriter;

    invoke-direct {v0}, Lorg/locationtech/jts/io/WKTWriter;-><init>()V

    .line 1142
    .local v0, "writer":Lorg/locationtech/jts/io/WKTWriter;
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/io/WKTWriter;->write(Lorg/locationtech/jts/geom/Geometry;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public touches(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 3
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 708
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    const/4 v0, 0x0

    .line 710
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->relate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/IntersectionMatrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v1

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTouches(II)Z

    move-result v0

    goto :goto_0
.end method

.method public union()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 1476
    invoke-static {p0}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->union(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public union(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v1, 0x2

    .line 1374
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1375
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1376
    iget-object v0, p0, Lorg/locationtech/jts/geom/Geometry;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {v1, p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->createEmptyResult(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 1387
    :goto_0
    return-object v0

    .line 1379
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    goto :goto_0

    .line 1380
    :cond_2
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    goto :goto_0

    .line 1385
    :cond_3
    invoke-virtual {p0, p0}, Lorg/locationtech/jts/geom/Geometry;->checkNotGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)V

    .line 1386
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->checkNotGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)V

    .line 1387
    invoke-static {p0, p1, v1}, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method

.method public within(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 840
    invoke-virtual {p1, p0}, Lorg/locationtech/jts/geom/Geometry;->contains(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method
