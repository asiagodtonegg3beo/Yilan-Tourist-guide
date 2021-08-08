.class public Lorg/locationtech/jts/geom/util/GeometryCombiner;
.super Ljava/lang/Object;
.source "GeometryCombiner.java"


# instance fields
.field private geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private inputGeoms:Ljava/util/Collection;

.field private skipEmpty:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "geoms"    # Ljava/util/Collection;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/geom/util/GeometryCombiner;->skipEmpty:Z

    .line 121
    invoke-static {p1}, Lorg/locationtech/jts/geom/util/GeometryCombiner;->extractFactory(Ljava/util/Collection;)Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryCombiner;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 122
    iput-object p1, p0, Lorg/locationtech/jts/geom/util/GeometryCombiner;->inputGeoms:Ljava/util/Collection;

    .line 123
    return-void
.end method

.method public static combine(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "geoms"    # Ljava/util/Collection;

    .prologue
    .line 48
    new-instance v0, Lorg/locationtech/jts/geom/util/GeometryCombiner;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/geom/util/GeometryCombiner;-><init>(Ljava/util/Collection;)V

    .line 49
    .local v0, "combiner":Lorg/locationtech/jts/geom/util/GeometryCombiner;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/util/GeometryCombiner;->combine()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public static combine(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 61
    new-instance v0, Lorg/locationtech/jts/geom/util/GeometryCombiner;

    invoke-static {p0, p1}, Lorg/locationtech/jts/geom/util/GeometryCombiner;->createList(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/util/GeometryCombiner;-><init>(Ljava/util/Collection;)V

    .line 62
    .local v0, "combiner":Lorg/locationtech/jts/geom/util/GeometryCombiner;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/util/GeometryCombiner;->combine()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public static combine(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g2"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 75
    new-instance v0, Lorg/locationtech/jts/geom/util/GeometryCombiner;

    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/geom/util/GeometryCombiner;->createList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/util/GeometryCombiner;-><init>(Ljava/util/Collection;)V

    .line 76
    .local v0, "combiner":Lorg/locationtech/jts/geom/util/GeometryCombiner;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/util/GeometryCombiner;->combine()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method private static createList(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "obj0"    # Ljava/lang/Object;
    .param p1, "obj1"    # Ljava/lang/Object;

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v0
.end method

.method private static createList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "obj0"    # Ljava/lang/Object;
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-object v0
.end method

.method private extractElements(Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)V
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "elems"    # Ljava/util/List;

    .prologue
    .line 164
    if-nez p1, :cond_1

    .line 173
    :cond_0
    return-void

    .line 167
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 168
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 169
    .local v0, "elemGeom":Lorg/locationtech/jts/geom/Geometry;
    iget-boolean v2, p0, Lorg/locationtech/jts/geom/util/GeometryCombiner;->skipEmpty:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static extractFactory(Ljava/util/Collection;)Lorg/locationtech/jts/geom/GeometryFactory;
    .locals 1
    .param p0, "geoms"    # Ljava/util/Collection;

    .prologue
    .line 132
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public combine()Lorg/locationtech/jts/geom/Geometry;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "elems":Ljava/util/List;
    iget-object v4, p0, Lorg/locationtech/jts/geom/util/GeometryCombiner;->inputGeoms:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Geometry;

    .line 148
    .local v1, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v1, v0}, Lorg/locationtech/jts/geom/util/GeometryCombiner;->extractElements(Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)V

    goto :goto_0

    .line 151
    .end local v1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 152
    iget-object v4, p0, Lorg/locationtech/jts/geom/util/GeometryCombiner;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    if-eqz v4, :cond_1

    .line 154
    iget-object v4, p0, Lorg/locationtech/jts/geom/util/GeometryCombiner;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v4, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v3

    .line 159
    :cond_1
    :goto_1
    return-object v3

    :cond_2
    iget-object v3, p0, Lorg/locationtech/jts/geom/util/GeometryCombiner;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v3, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    goto :goto_1
.end method
