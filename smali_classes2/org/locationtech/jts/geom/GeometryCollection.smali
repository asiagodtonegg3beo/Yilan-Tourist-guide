.class public Lorg/locationtech/jts/geom/GeometryCollection;
.super Lorg/locationtech/jts/geom/Geometry;
.source "GeometryCollection.java"


# static fields
.field private static final serialVersionUID:J = -0x4f07bcb1f857d89bL


# instance fields
.field protected geometries:[Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 2
    .param p1, "geometries"    # [Lorg/locationtech/jts/geom/Geometry;
    .param p2, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lorg/locationtech/jts/geom/Geometry;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 52
    if-nez p1, :cond_0

    .line 53
    const/4 v0, 0x0

    new-array p1, v0, [Lorg/locationtech/jts/geom/Geometry;

    .line 55
    :cond_0
    invoke-static {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->hasNullElements([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "geometries must not contain null elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iput-object p1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    .line 59
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/PrecisionModel;I)V
    .locals 1
    .param p1, "geometries"    # [Lorg/locationtech/jts/geom/Geometry;
    .param p2, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p3, "SRID"    # I

    .prologue
    .line 39
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0, p2, p3}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/geom/GeometryCollection;-><init>([Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 40
    return-void
.end method


# virtual methods
.method public apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V
    .locals 2
    .param p1, "filter"    # Lorg/locationtech/jts/geom/CoordinateFilter;

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method public apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V
    .locals 2
    .param p1, "filter"    # Lorg/locationtech/jts/geom/CoordinateSequenceFilter;

    .prologue
    .line 185
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 188
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V

    .line 189
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFilter;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    :cond_2
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFilter;->isGeometryChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/GeometryCollection;->geometryChanged()V

    goto :goto_0

    .line 187
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V
    .locals 2
    .param p1, "filter"    # Lorg/locationtech/jts/geom/GeometryComponentFilter;

    .prologue
    .line 205
    invoke-interface {p1, p0}, Lorg/locationtech/jts/geom/GeometryComponentFilter;->filter(Lorg/locationtech/jts/geom/Geometry;)V

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 207
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method

.method public apply(Lorg/locationtech/jts/geom/GeometryFilter;)V
    .locals 2
    .param p1, "filter"    # Lorg/locationtech/jts/geom/GeometryFilter;

    .prologue
    .line 198
    invoke-interface {p1, p0}, Lorg/locationtech/jts/geom/GeometryFilter;->filter(Lorg/locationtech/jts/geom/Geometry;)V

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryFilter;)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 218
    invoke-super {p0}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 219
    .local v0, "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    iget-object v2, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v2, v2

    new-array v2, v2, [Lorg/locationtech/jts/geom/Geometry;

    iput-object v2, v0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    .line 220
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 221
    iget-object v3, v0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    iget-object v2, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Geometry;

    aput-object v2, v3, v1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-object v0
.end method

.method protected compareToSameClass(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 242
    new-instance v1, Ljava/util/TreeSet;

    iget-object v2, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 243
    .local v1, "theseElements":Ljava/util/TreeSet;
    new-instance v0, Ljava/util/TreeSet;

    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p1, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 244
    .local v0, "otherElements":Ljava/util/TreeSet;
    invoke-virtual {p0, v1, v0}, Lorg/locationtech/jts/geom/GeometryCollection;->compare(Ljava/util/Collection;Ljava/util/Collection;)I

    move-result v2

    return v2
.end method

.method protected compareToSameClass(Ljava/lang/Object;Lorg/locationtech/jts/geom/CoordinateSequenceComparator;)I
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "comp"    # Lorg/locationtech/jts/geom/CoordinateSequenceComparator;

    .prologue
    .line 248
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 250
    .local v0, "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v3

    .line 251
    .local v3, "n1":I
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v4

    .line 252
    .local v4, "n2":I
    const/4 v2, 0x0

    .line 253
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    if-ge v2, v4, :cond_1

    .line 254
    invoke-virtual {p0, v2}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    .line 255
    .local v6, "thisGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    .line 256
    .local v5, "otherGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v6, v5, p2}, Lorg/locationtech/jts/geom/Geometry;->compareToSameClass(Ljava/lang/Object;Lorg/locationtech/jts/geom/CoordinateSequenceComparator;)I

    move-result v1

    .line 257
    .local v1, "holeComp":I
    if-eqz v1, :cond_0

    .line 262
    .end local v1    # "holeComp":I
    .end local v5    # "otherGeom":Lorg/locationtech/jts/geom/Geometry;
    .end local v6    # "thisGeom":Lorg/locationtech/jts/geom/Geometry;
    :goto_1
    return v1

    .line 258
    .restart local v1    # "holeComp":I
    .restart local v5    # "otherGeom":Lorg/locationtech/jts/geom/Geometry;
    .restart local v6    # "thisGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 259
    goto :goto_0

    .line 260
    .end local v1    # "holeComp":I
    .end local v5    # "otherGeom":Lorg/locationtech/jts/geom/Geometry;
    .end local v6    # "thisGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    if-ge v2, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 261
    :cond_2
    if-ge v2, v4, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    .line 262
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected computeEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;
    .locals 3

    .prologue
    .line 234
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    .line 235
    .local v0, "envelope":Lorg/locationtech/jts/geom/Envelope;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 236
    iget-object v2, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Envelope;)V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_0
    return-object v0
.end method

.method public equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z
    .locals 6
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "tolerance"    # D

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/GeometryCollection;->isEquivalentClass(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 166
    check-cast v1, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 167
    .local v1, "otherCollection":Lorg/locationtech/jts/geom/GeometryCollection;
    iget-object v3, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v3, v3

    iget-object v4, v1, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 171
    iget-object v3, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v3, v3, v0

    iget-object v4, v1, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, p2, p3}, Lorg/locationtech/jts/geom/Geometry;->equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getArea()D
    .locals 6

    .prologue
    .line 146
    const-wide/16 v0, 0x0

    .line 147
    .local v0, "area":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 148
    iget-object v3, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Geometry;->getArea()D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-wide v0
.end method

.method public getBoundary()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p0}, Lorg/locationtech/jts/geom/GeometryCollection;->checkNotGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)V

    .line 135
    invoke-static {}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere()V

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoundaryDimension()I
    .locals 3

    .prologue
    .line 106
    const/4 v0, -0x1

    .line 107
    .local v0, "dimension":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 108
    iget-object v2, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getBoundaryDimension()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return v0
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/GeometryCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    goto :goto_0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 6

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumPoints()I

    move-result v5

    new-array v1, v5, [Lorg/locationtech/jts/geom/Coordinate;

    .line 77
    .local v1, "coordinates":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v4, -0x1

    .line 78
    .local v4, "k":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 79
    iget-object v5, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 80
    .local v0, "childCoordinates":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    aget-object v5, v0, v3

    aput-object v5, v1, v4

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "childCoordinates":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public getDimension()I
    .locals 3

    .prologue
    .line 98
    const/4 v0, -0x1

    .line 99
    .local v0, "dimension":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 100
    iget-object v2, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return v0
.end method

.method public getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "GeometryCollection"

    return-object v0
.end method

.method public getLength()D
    .locals 6

    .prologue
    .line 155
    const-wide/16 v2, 0x0

    .line 156
    .local v2, "sum":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getLength()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-wide v2
.end method

.method public getNumGeometries()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v0, v0

    return v0
.end method

.method public getNumPoints()I
    .locals 3

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "numPoints":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 124
    iget-object v2, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getNumPoints()I

    move-result v2

    add-int/2addr v1, v2

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return v1
.end method

.method protected getSortIndex()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x7

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 94
    :goto_1
    return v1

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public normalize()V
    .locals 2

    .prologue
    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->normalize()V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public reverse()Lorg/locationtech/jts/geom/Geometry;
    .locals 4

    .prologue
    .line 279
    iget-object v3, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v1, v3

    .line 280
    .local v1, "n":I
    new-array v2, v1, [Lorg/locationtech/jts/geom/Geometry;

    .line 281
    .local v2, "revGeoms":[Lorg/locationtech/jts/geom/Geometry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 282
    iget-object v3, p0, Lorg/locationtech/jts/geom/GeometryCollection;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Geometry;->reverse()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    aput-object v3, v2, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/GeometryCollection;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v3

    return-object v3
.end method
