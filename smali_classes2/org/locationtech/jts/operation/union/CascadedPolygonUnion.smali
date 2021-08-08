.class public Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;
.super Ljava/lang/Object;
.source "CascadedPolygonUnion.java"


# static fields
.field private static final STRTREE_NODE_CAPACITY:I = 0x4


# instance fields
.field private geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private inputPolys:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "polys"    # Ljava/util/Collection;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 82
    iput-object p1, p0, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->inputPolys:Ljava/util/Collection;

    .line 84
    iget-object v0, p0, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->inputPolys:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->inputPolys:Ljava/util/Collection;

    .line 86
    :cond_0
    return-void
.end method

.method private binaryUnion(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geoms"    # Ljava/util/List;

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->binaryUnion(Ljava/util/List;II)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method private binaryUnion(Ljava/util/List;II)Lorg/locationtech/jts/geom/Geometry;
    .locals 5
    .param p1, "geoms"    # Ljava/util/List;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 216
    sub-int v3, p3, p2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 217
    invoke-static {p1, p2}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->getGeometry(Ljava/util/List;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 218
    .local v0, "g0":Lorg/locationtech/jts/geom/Geometry;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->unionSafe(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    .line 228
    .end local v0    # "g0":Lorg/locationtech/jts/geom/Geometry;
    :goto_0
    return-object v3

    .line 220
    :cond_0
    sub-int v3, p3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 221
    invoke-static {p1, p2}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->getGeometry(Ljava/util/List;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-static {p1, v4}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->getGeometry(Ljava/util/List;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->unionSafe(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    goto :goto_0

    .line 225
    :cond_1
    add-int v3, p3, p2

    div-int/lit8 v2, v3, 0x2

    .line 226
    .local v2, "mid":I
    invoke-direct {p0, p1, p2, v2}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->binaryUnion(Ljava/util/List;II)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 227
    .restart local v0    # "g0":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, v2, p3}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->binaryUnion(Ljava/util/List;II)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 228
    .local v1, "g1":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->unionSafe(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    goto :goto_0
.end method

.method private bufferUnion(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p1, "geoms"    # Ljava/util/List;

    .prologue
    .line 179
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    .line 180
    .local v0, "factory":Lorg/locationtech/jts/geom/GeometryFactory;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 181
    .local v1, "gColl":Lorg/locationtech/jts/geom/Geometry;
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/locationtech/jts/geom/Geometry;->buffer(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 182
    .local v2, "unionAll":Lorg/locationtech/jts/geom/Geometry;
    return-object v2
.end method

.method private bufferUnion(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 187
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    .line 188
    .local v0, "factory":Lorg/locationtech/jts/geom/GeometryFactory;
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/locationtech/jts/geom/Geometry;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v1

    .line 189
    .local v1, "gColl":Lorg/locationtech/jts/geom/Geometry;
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/locationtech/jts/geom/Geometry;->buffer(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 190
    .local v2, "unionAll":Lorg/locationtech/jts/geom/Geometry;
    return-object v2
.end method

.method private extractByEnvelope(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "disjointGeoms"    # Ljava/util/List;

    .prologue
    .line 356
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v2, "intersectingGeoms":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 358
    invoke-virtual {p2, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 359
    .local v0, "elem":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 364
    .end local v0    # "elem":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    iget-object v3, p0, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    return-object v3
.end method

.method private static getGeometry(Ljava/util/List;I)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p0, "list"    # Ljava/util/List;
    .param p1, "index"    # I

    .prologue
    .line 243
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    goto :goto_0
.end method

.method private reduceToGeometries(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "geomTree"    # Ljava/util/List;

    .prologue
    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v1, "geoms":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 259
    .local v3, "o":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 260
    .local v0, "geom":Lorg/locationtech/jts/geom/Geometry;
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 261
    check-cast v3, Ljava/util/List;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->unionTree(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 266
    :cond_0
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Lorg/locationtech/jts/geom/Geometry;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 264
    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    goto :goto_1

    .line 268
    .end local v0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    .end local v3    # "o":Ljava/lang/Object;
    :cond_2
    return-object v1
.end method

.method private repeatedUnion(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "geoms"    # Ljava/util/List;

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, "union":Lorg/locationtech/jts/geom/Geometry;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 169
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    if-nez v2, :cond_0

    .line 170
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "union":Lorg/locationtech/jts/geom/Geometry;
    check-cast v2, Lorg/locationtech/jts/geom/Geometry;

    .restart local v2    # "union":Lorg/locationtech/jts/geom/Geometry;
    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geom/Geometry;->union(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    goto :goto_0

    .line 174
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    return-object v2
.end method

.method private static restrictToPolygons(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 404
    instance-of v1, p0, Lorg/locationtech/jts/geom/Polygonal;

    if-eqz v1, :cond_0

    .line 410
    .end local p0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .local v0, "polygons":Ljava/util/List;
    :goto_0
    return-object p0

    .line 407
    .end local v0    # "polygons":Ljava/util/List;
    .restart local p0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    invoke-static {p0}, Lorg/locationtech/jts/geom/util/PolygonExtracter;->getPolygons(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v0

    .line 408
    .restart local v0    # "polygons":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 409
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Polygon;

    move-object p0, v1

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v1

    invoke-static {v0}, Lorg/locationtech/jts/geom/GeometryFactory;->toPolygonArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Polygon;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object p0

    goto :goto_0
.end method

.method public static union(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "polys"    # Ljava/util/Collection;

    .prologue
    .line 67
    new-instance v0, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;-><init>(Ljava/util/Collection;)V

    .line 68
    .local v0, "op":Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->union()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method private unionActual(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 386
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Geometry;->union(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-static {v0}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->restrictToPolygons(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method private unionOptimized(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v5, 0x1

    .line 295
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    .line 296
    .local v2, "g0Env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v3

    .line 298
    .local v3, "g1Env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 300
    invoke-static {p1, p2}, Lorg/locationtech/jts/geom/util/GeometryCombiner;->combine(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    .line 308
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v4

    if-gt v4, v5, :cond_1

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v4

    if-gt v4, v5, :cond_1

    .line 309
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->unionActual(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Envelope;->intersection(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    .line 315
    .local v1, "commonEnv":Lorg/locationtech/jts/geom/Envelope;
    invoke-direct {p0, p1, p2, v1}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->unionUsingEnvelopeIntersection(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method

.method private unionSafe(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 282
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 290
    :goto_0
    return-object v0

    .line 285
    :cond_0
    if-nez p1, :cond_1

    .line 286
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    goto :goto_0

    .line 287
    :cond_1
    if-nez p2, :cond_2

    .line 288
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    goto :goto_0

    .line 290
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->unionOptimized(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method

.method private unionTree(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geomTree"    # Ljava/util/List;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->reduceToGeometries(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, "geoms":Ljava/util/List;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->binaryUnion(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 153
    .local v1, "union":Lorg/locationtech/jts/geom/Geometry;
    return-object v1
.end method

.method private unionUsingEnvelopeIntersection(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Geometry;
    .locals 5
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "common"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "disjointPolys":Ljava/util/List;
    invoke-direct {p0, p3, p1, v0}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->extractByEnvelope(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 342
    .local v1, "g0Int":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p3, p2, v0}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->extractByEnvelope(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 345
    .local v2, "g1Int":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v1, v2}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->unionActual(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    .line 347
    .local v4, "union":Lorg/locationtech/jts/geom/Geometry;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-static {v0}, Lorg/locationtech/jts/geom/util/GeometryCombiner;->combine(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    .line 350
    .local v3, "overallUnion":Lorg/locationtech/jts/geom/Geometry;
    return-object v3
.end method


# virtual methods
.method public union()Lorg/locationtech/jts/geom/Geometry;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v5, p0, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->inputPolys:Ljava/util/Collection;

    if-nez v5, :cond_0

    .line 114
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "union() method cannot be called twice"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_0
    iget-object v5, p0, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->inputPolys:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    :goto_0
    return-object v4

    .line 117
    :cond_1
    iget-object v5, p0, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->inputPolys:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v5

    iput-object v5, p0, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 126
    new-instance v1, Lorg/locationtech/jts/index/strtree/STRtree;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Lorg/locationtech/jts/index/strtree/STRtree;-><init>(I)V

    .line 127
    .local v1, "index":Lorg/locationtech/jts/index/strtree/STRtree;
    iget-object v5, p0, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->inputPolys:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Geometry;

    .line 129
    .local v2, "item":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lorg/locationtech/jts/index/strtree/STRtree;->insert(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    .end local v2    # "item":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    iput-object v4, p0, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->inputPolys:Ljava/util/Collection;

    .line 134
    invoke-virtual {v1}, Lorg/locationtech/jts/index/strtree/STRtree;->itemsTree()Ljava/util/List;

    move-result-object v3

    .line 136
    .local v3, "itemTree":Ljava/util/List;
    invoke-direct {p0, v3}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->unionTree(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    .line 137
    .local v4, "unionAll":Lorg/locationtech/jts/geom/Geometry;
    goto :goto_0
.end method
