.class public Lorg/locationtech/jts/operation/union/UnionInteracting;
.super Ljava/lang/Object;
.source "UnionInteracting.java"


# instance fields
.field private g0:Lorg/locationtech/jts/geom/Geometry;

.field private g1:Lorg/locationtech/jts/geom/Geometry;

.field private geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private interacts0:[Z

.field private interacts1:[Z


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->g0:Lorg/locationtech/jts/geom/Geometry;

    .line 52
    iput-object p2, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->g1:Lorg/locationtech/jts/geom/Geometry;

    .line 53
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 54
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->interacts0:[Z

    .line 55
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->interacts1:[Z

    .line 56
    return-void
.end method

.method private bufferUnion(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 93
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    .line 94
    .local v0, "factory":Lorg/locationtech/jts/geom/GeometryFactory;
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/locationtech/jts/geom/Geometry;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v1

    .line 95
    .local v1, "gColl":Lorg/locationtech/jts/geom/Geometry;
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/locationtech/jts/geom/Geometry;->buffer(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 96
    .local v2, "unionAll":Lorg/locationtech/jts/geom/Geometry;
    return-object v2
.end method

.method private computeInteracting()V
    .locals 4

    .prologue
    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->g0:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 102
    iget-object v2, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->g0:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 103
    .local v0, "elem":Lorg/locationtech/jts/geom/Geometry;
    iget-object v2, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->interacts0:[Z

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/union/UnionInteracting;->computeInteracting(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v3

    aput-boolean v3, v2, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "elem":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void
.end method

.method private computeInteracting(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 6
    .param p1, "elem0"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, "interactsWithAny":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->g1:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 111
    iget-object v4, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->g1:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 112
    .local v0, "elem1":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v2

    .line 113
    .local v2, "interacts":Z
    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->interacts1:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 114
    :cond_0
    if-eqz v2, :cond_1

    .line 115
    const/4 v3, 0x1

    .line 110
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "elem1":Lorg/locationtech/jts/geom/Geometry;
    .end local v2    # "interacts":Z
    :cond_2
    return v3
.end method

.method private extractElements(Lorg/locationtech/jts/geom/Geometry;[ZZ)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "interacts"    # [Z
    .param p3, "isInteracting"    # Z

    .prologue
    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v1, "extractedGeoms":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 125
    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 126
    .local v0, "elem":Lorg/locationtech/jts/geom/Geometry;
    aget-boolean v3, p2, v2

    if-ne v3, p3, :cond_0

    .line 127
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "elem":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    iget-object v3, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v3, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    return-object v3
.end method

.method public static union(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 36
    new-instance v0, Lorg/locationtech/jts/operation/union/UnionInteracting;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/operation/union/UnionInteracting;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 37
    .local v0, "uue":Lorg/locationtech/jts/operation/union/UnionInteracting;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/union/UnionInteracting;->union()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public union()Lorg/locationtech/jts/geom/Geometry;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 60
    invoke-direct {p0}, Lorg/locationtech/jts/operation/union/UnionInteracting;->computeInteracting()V

    .line 64
    iget-object v6, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->g0:Lorg/locationtech/jts/geom/Geometry;

    iget-object v7, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->interacts0:[Z

    invoke-direct {p0, v6, v7, v9}, Lorg/locationtech/jts/operation/union/UnionInteracting;->extractElements(Lorg/locationtech/jts/geom/Geometry;[ZZ)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 65
    .local v2, "int0":Lorg/locationtech/jts/geom/Geometry;
    iget-object v6, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->g1:Lorg/locationtech/jts/geom/Geometry;

    iget-object v7, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->interacts1:[Z

    invoke-direct {p0, v6, v7, v9}, Lorg/locationtech/jts/operation/union/UnionInteracting;->extractElements(Lorg/locationtech/jts/geom/Geometry;[ZZ)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    .line 70
    .local v3, "int1":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "found empty!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    :cond_1
    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Geometry;->union(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    .line 82
    .local v5, "union":Lorg/locationtech/jts/geom/Geometry;
    iget-object v6, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->g0:Lorg/locationtech/jts/geom/Geometry;

    iget-object v7, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->interacts0:[Z

    invoke-direct {p0, v6, v7, v8}, Lorg/locationtech/jts/operation/union/UnionInteracting;->extractElements(Lorg/locationtech/jts/geom/Geometry;[ZZ)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 83
    .local v0, "disjoint0":Lorg/locationtech/jts/geom/Geometry;
    iget-object v6, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->g1:Lorg/locationtech/jts/geom/Geometry;

    iget-object v7, p0, Lorg/locationtech/jts/operation/union/UnionInteracting;->interacts1:[Z

    invoke-direct {p0, v6, v7, v8}, Lorg/locationtech/jts/operation/union/UnionInteracting;->extractElements(Lorg/locationtech/jts/geom/Geometry;[ZZ)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 85
    .local v1, "disjoint1":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {v5, v0, v1}, Lorg/locationtech/jts/geom/util/GeometryCombiner;->combine(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    .line 87
    .local v4, "overallUnion":Lorg/locationtech/jts/geom/Geometry;
    return-object v4
.end method
