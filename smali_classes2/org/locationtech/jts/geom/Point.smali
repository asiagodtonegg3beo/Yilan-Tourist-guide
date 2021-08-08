.class public Lorg/locationtech/jts/geom/Point;
.super Lorg/locationtech/jts/geom/Geometry;
.source "Point.java"

# interfaces
.implements Lorg/locationtech/jts/geom/Puntal;


# static fields
.field private static final serialVersionUID:J = 0x44077bad161cbb2aL


# instance fields
.field private coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/PrecisionModel;I)V
    .locals 3
    .param p1, "coordinate"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p3, "SRID"    # I

    .prologue
    const/4 v2, 0x0

    .line 51
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0, p2, p3}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    invoke-direct {p0, v0}, Lorg/locationtech/jts/geom/Geometry;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 52
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    aput-object p1, v0, v2

    :goto_0
    invoke-interface {v1, v0}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/geom/Point;->init(Lorg/locationtech/jts/geom/CoordinateSequence;)V

    .line 54
    return-void

    .line 52
    :cond_0
    new-array v0, v2, [Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 0
    .param p1, "coordinates"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 61
    invoke-direct {p0, p2}, Lorg/locationtech/jts/geom/Geometry;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 62
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/Point;->init(Lorg/locationtech/jts/geom/CoordinateSequence;)V

    .line 63
    return-void
.end method

.method private init(Lorg/locationtech/jts/geom/CoordinateSequence;)V
    .locals 4
    .param p1, "coordinates"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v2

    new-array v3, v1, [Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v2, v3}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object p1

    .line 70
    :cond_0
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v2

    if-gt v2, v0, :cond_1

    :goto_0
    invoke-static {v0}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 71
    iput-object p1, p0, Lorg/locationtech/jts/geom/Point;->coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 72
    return-void

    :cond_1
    move v0, v1

    .line 70
    goto :goto_0
.end method


# virtual methods
.method public apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/locationtech/jts/geom/CoordinateFilter;

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/locationtech/jts/geom/CoordinateFilter;->filter(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0
.end method

.method public apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V
    .locals 2
    .param p1, "filter"    # Lorg/locationtech/jts/geom/CoordinateSequenceFilter;

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/geom/Point;->coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequenceFilter;->filter(Lorg/locationtech/jts/geom/CoordinateSequence;I)V

    .line 166
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFilter;->isGeometryChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->geometryChanged()V

    goto :goto_0
.end method

.method public apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/locationtech/jts/geom/GeometryComponentFilter;

    .prologue
    .line 175
    invoke-interface {p1, p0}, Lorg/locationtech/jts/geom/GeometryComponentFilter;->filter(Lorg/locationtech/jts/geom/Geometry;)V

    .line 176
    return-void
.end method

.method public apply(Lorg/locationtech/jts/geom/GeometryFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/locationtech/jts/geom/GeometryFilter;

    .prologue
    .line 171
    invoke-interface {p1, p0}, Lorg/locationtech/jts/geom/GeometryFilter;->filter(Lorg/locationtech/jts/geom/Geometry;)V

    .line 172
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Point;

    .line 186
    .local v0, "p":Lorg/locationtech/jts/geom/Point;
    iget-object v1, p0, Lorg/locationtech/jts/geom/Point;->coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/CoordinateSequence;

    iput-object v1, v0, Lorg/locationtech/jts/geom/Point;->coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 187
    return-object v0
.end method

.method protected compareToSameClass(Ljava/lang/Object;)I
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 201
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/Point;

    .line 202
    .local v0, "point":Lorg/locationtech/jts/geom/Point;
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method protected compareToSameClass(Ljava/lang/Object;Lorg/locationtech/jts/geom/CoordinateSequenceComparator;)I
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;
    .param p2, "comp"    # Lorg/locationtech/jts/geom/CoordinateSequenceComparator;

    .prologue
    .line 207
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/Point;

    .line 208
    .local v0, "point":Lorg/locationtech/jts/geom/Point;
    iget-object v1, p0, Lorg/locationtech/jts/geom/Point;->coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;

    iget-object v2, v0, Lorg/locationtech/jts/geom/Point;->coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-virtual {p2, v1, v2}, Lorg/locationtech/jts/geom/CoordinateSequenceComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method protected computeEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    .line 140
    :goto_0
    return-object v0

    .line 138
    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    .line 139
    .local v0, "env":Lorg/locationtech/jts/geom/Envelope;
    iget-object v1, p0, Lorg/locationtech/jts/geom/Point;->coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v1, v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->getX(I)D

    move-result-wide v2

    iget-object v1, p0, Lorg/locationtech/jts/geom/Point;->coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v1, v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->getY(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(DD)V

    goto :goto_0
.end method

.method public equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z
    .locals 4
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "tolerance"    # D

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Point;->isEquivalentClass(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    .end local p1    # "other":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    :goto_0
    return v0

    .line 147
    .restart local p1    # "other":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->isEmpty()Z

    move-result v1

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 153
    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "other":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/locationtech/jts/geom/Point;->equal(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)Z

    move-result v0

    goto :goto_0
.end method

.method public getBoundary()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v0

    return-object v0
.end method

.method public getBoundaryDimension()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, -0x1

    return v0
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/locationtech/jts/geom/Point;->coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/geom/Point;->coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/locationtech/jts/geom/Point;->coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;

    return-object v0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Lorg/locationtech/jts/geom/Coordinate;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    .line 76
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "Point"

    return-object v0
.end method

.method public getNumPoints()I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getSortIndex()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getX called on empty Point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getY called on empty Point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/locationtech/jts/geom/Point;->coordinates:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimple()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public reverse()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method
