.class public Lorg/locationtech/jts/geom/util/GeometryTransformer;
.super Ljava/lang/Object;
.source "GeometryTransformer.java"


# instance fields
.field protected factory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private inputGeom:Lorg/locationtech/jts/geom/Geometry;

.field private preserveCollections:Z

.field private preserveGeometryCollectionType:Z

.field private preserveType:Z

.field private pruneEmptyGeometry:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 84
    iput-boolean v2, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->pruneEmptyGeometry:Z

    .line 91
    iput-boolean v2, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->preserveGeometryCollectionType:Z

    .line 96
    iput-boolean v1, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->preserveCollections:Z

    .line 101
    iput-boolean v1, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->preserveType:Z

    .line 104
    return-void
.end method


# virtual methods
.method protected final copy(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 157
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/CoordinateSequence;

    return-object v0
.end method

.method protected final createCoordinateSequence([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "coords"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    return-object v0
.end method

.method public getInputGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method

.method public final transform(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p1, "inputGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v1, 0x0

    .line 115
    iput-object p1, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 116
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 118
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_0

    .line 119
    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, p1, v1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformPoint(Lorg/locationtech/jts/geom/Point;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 120
    .restart local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPoint;

    if-eqz v0, :cond_1

    .line 121
    check-cast p1, Lorg/locationtech/jts/geom/MultiPoint;

    .end local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, p1, v1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformMultiPoint(Lorg/locationtech/jts/geom/MultiPoint;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0

    .line 122
    .restart local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v0, p1, Lorg/locationtech/jts/geom/LinearRing;

    if-eqz v0, :cond_2

    .line 123
    check-cast p1, Lorg/locationtech/jts/geom/LinearRing;

    .end local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, p1, v1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformLinearRing(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0

    .line 124
    .restart local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_3

    .line 125
    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, p1, v1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformLineString(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0

    .line 126
    .restart local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiLineString;

    if-eqz v0, :cond_4

    .line 127
    check-cast p1, Lorg/locationtech/jts/geom/MultiLineString;

    .end local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, p1, v1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformMultiLineString(Lorg/locationtech/jts/geom/MultiLineString;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0

    .line 128
    .restart local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_5

    .line 129
    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, p1, v1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformPolygon(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0

    .line 130
    .restart local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_5
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPolygon;

    if-eqz v0, :cond_6

    .line 131
    check-cast p1, Lorg/locationtech/jts/geom/MultiPolygon;

    .end local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, p1, v1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformMultiPolygon(Lorg/locationtech/jts/geom/MultiPolygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0

    .line 132
    .restart local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_6
    instance-of v0, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_7

    .line 133
    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, p1, v1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformGeometryCollection(Lorg/locationtech/jts/geom/GeometryCollection;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0

    .line 135
    .restart local p1    # "inputGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Geometry subtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected transformCoordinates(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "coords"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->copy(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    return-object v0
.end method

.method protected transformGeometryCollection(Lorg/locationtech/jts/geom/GeometryCollection;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 5
    .param p1, "geom"    # Lorg/locationtech/jts/geom/GeometryCollection;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v1, "transGeomList":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 288
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transform(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 289
    .local v2, "transformGeom":Lorg/locationtech/jts/geom/Geometry;
    if-nez v2, :cond_1

    .line 287
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    iget-boolean v3, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->pruneEmptyGeometry:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    .end local v2    # "transformGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    iget-boolean v3, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->preserveGeometryCollectionType:Z

    if-eqz v3, :cond_4

    .line 294
    iget-object v3, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {v1}, Lorg/locationtech/jts/geom/GeometryFactory;->toGeometryArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v3

    .line 295
    :goto_2
    return-object v3

    :cond_4
    iget-object v3, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v3, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    goto :goto_2
.end method

.method protected transformLineString(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 226
    iget-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 227
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformCoordinates(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method

.method protected transformLinearRing(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 207
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformCoordinates(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    .line 208
    .local v0, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    if-nez v0, :cond_0

    .line 209
    iget-object v3, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v2, 0x0

    check-cast v2, Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v2

    .line 214
    :goto_0
    return-object v2

    .line 210
    :cond_0
    invoke-interface {v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    .line 212
    .local v1, "seqSize":I
    if-lez v1, :cond_1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-boolean v2, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->preserveType:Z

    if-nez v2, :cond_1

    .line 213
    iget-object v2, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    goto :goto_0

    .line 214
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v2

    goto :goto_0
.end method

.method protected transformMultiLineString(Lorg/locationtech/jts/geom/MultiLineString;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/MultiLineString;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "transGeomList":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiLineString;->getNumGeometries()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 233
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/MultiLineString;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {p0, v3, p1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformLineString(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 234
    .local v2, "transformGeom":Lorg/locationtech/jts/geom/Geometry;
    if-nez v2, :cond_1

    .line 232
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    .end local v2    # "transformGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    iget-object v3, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v3, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    return-object v3
.end method

.method protected transformMultiPoint(Lorg/locationtech/jts/geom/MultiPoint;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/MultiPoint;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v1, "transGeomList":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPoint;->getNumGeometries()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 185
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/MultiPoint;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Point;

    invoke-virtual {p0, v3, p1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformPoint(Lorg/locationtech/jts/geom/Point;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 186
    .local v2, "transformGeom":Lorg/locationtech/jts/geom/Geometry;
    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    .end local v2    # "transformGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    iget-object v3, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v3, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    return-object v3
.end method

.method protected transformMultiPolygon(Lorg/locationtech/jts/geom/MultiPolygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/MultiPolygon;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v1, "transGeomList":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPolygon;->getNumGeometries()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 277
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/MultiPolygon;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Polygon;

    invoke-virtual {p0, v3, p1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformPolygon(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 278
    .local v2, "transformGeom":Lorg/locationtech/jts/geom/Geometry;
    if-nez v2, :cond_1

    .line 276
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    .end local v2    # "transformGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    iget-object v3, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v3, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    return-object v3
.end method

.method protected transformPoint(Lorg/locationtech/jts/geom/Point;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Point;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 179
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformCoordinates(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method protected transformPolygon(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 8
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Polygon;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 242
    const/4 v4, 0x1

    .line 243
    .local v4, "isAllValidLinearRings":Z
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v6

    check-cast v6, Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {p0, v6, p1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformLinearRing(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    .line 245
    .local v5, "shell":Lorg/locationtech/jts/geom/Geometry;
    if-eqz v5, :cond_0

    instance-of v6, v5, Lorg/locationtech/jts/geom/LinearRing;

    if-eqz v6, :cond_0

    .line 247
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 248
    :cond_0
    const/4 v4, 0x0

    .line 251
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v2, "holes":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 253
    invoke-virtual {p1, v3}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v6

    check-cast v6, Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {p0, v6, p1}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformLinearRing(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 254
    .local v1, "hole":Lorg/locationtech/jts/geom/Geometry;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 252
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    :cond_3
    instance-of v6, v1, Lorg/locationtech/jts/geom/LinearRing;

    if-nez v6, :cond_4

    .line 258
    const/4 v4, 0x0

    .line 260
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    .end local v1    # "hole":Lorg/locationtech/jts/geom/Geometry;
    :cond_5
    if-eqz v4, :cond_6

    .line 264
    iget-object v7, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    check-cast v5, Lorg/locationtech/jts/geom/LinearRing;

    .end local v5    # "shell":Lorg/locationtech/jts/geom/Geometry;
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/locationtech/jts/geom/LinearRing;

    .line 265
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/locationtech/jts/geom/LinearRing;

    check-cast v6, [Lorg/locationtech/jts/geom/LinearRing;

    .line 264
    invoke-virtual {v7, v5, v6}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v6

    .line 270
    :goto_2
    return-object v6

    .line 267
    .restart local v5    # "shell":Lorg/locationtech/jts/geom/Geometry;
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "components":Ljava/util/List;
    if-eqz v5, :cond_7

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    iget-object v6, p0, Lorg/locationtech/jts/geom/util/GeometryTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v6, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    goto :goto_2
.end method
