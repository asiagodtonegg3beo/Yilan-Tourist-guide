.class public Lorg/locationtech/jts/geom/util/GeometryEditor;
.super Ljava/lang/Object;
.source "GeometryEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateSequenceOperation;,
        Lorg/locationtech/jts/geom/util/GeometryEditor$CoordinateOperation;,
        Lorg/locationtech/jts/geom/util/GeometryEditor$NoOpGeometryOperation;,
        Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;
    }
.end annotation


# instance fields
.field private factory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private isUserDataCopied:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->isUserDataCopied:Z

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 1
    .param p1, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->isUserDataCopied:Z

    .line 105
    iput-object p1, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 106
    return-void
.end method

.method private editGeometryCollection(Lorg/locationtech/jts/geom/GeometryCollection;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/GeometryCollection;
    .locals 7
    .param p1, "collection"    # Lorg/locationtech/jts/geom/GeometryCollection;
    .param p2, "operation"    # Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;

    .prologue
    const/4 v6, 0x0

    .line 201
    iget-object v4, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-interface {p2, p1, v4}, Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;->edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 205
    .local v0, "collectionForType":Lorg/locationtech/jts/geom/GeometryCollection;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v1, "geometries":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 207
    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lorg/locationtech/jts/geom/util/GeometryEditor;->edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 208
    .local v2, "geometry":Lorg/locationtech/jts/geom/Geometry;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    .end local v2    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/locationtech/jts/geom/MultiPoint;

    if-ne v4, v5, :cond_3

    .line 215
    iget-object v5, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    new-array v4, v6, [Lorg/locationtech/jts/geom/Point;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/locationtech/jts/geom/Point;

    check-cast v4, [Lorg/locationtech/jts/geom/Point;

    invoke-virtual {v5, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Point;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v4

    .line 226
    :goto_2
    return-object v4

    .line 218
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/locationtech/jts/geom/MultiLineString;

    if-ne v4, v5, :cond_4

    .line 219
    iget-object v5, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    new-array v4, v6, [Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/locationtech/jts/geom/LineString;

    check-cast v4, [Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v5, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v4

    goto :goto_2

    .line 222
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/locationtech/jts/geom/MultiPolygon;

    if-ne v4, v5, :cond_5

    .line 223
    iget-object v5, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    new-array v4, v6, [Lorg/locationtech/jts/geom/Polygon;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/locationtech/jts/geom/Polygon;

    check-cast v4, [Lorg/locationtech/jts/geom/Polygon;

    invoke-virtual {v5, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object v4

    goto :goto_2

    .line 226
    :cond_5
    iget-object v5, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    new-array v4, v6, [Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/locationtech/jts/geom/Geometry;

    check-cast v4, [Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v5, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v4

    goto :goto_2
.end method

.method private editInternal(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "operation"    # Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 146
    :cond_0
    instance-of v0, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_1

    .line 147
    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geom/util/GeometryEditor;->editGeometryCollection(Lorg/locationtech/jts/geom/GeometryCollection;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 151
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_2

    .line 152
    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geom/util/GeometryEditor;->editPolygon(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    goto :goto_0

    .line 155
    .restart local p1    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-interface {p2, p1, v0}, Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;->edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_3
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-interface {p2, p1, v0}, Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;->edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Geometry class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private editPolygon(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/Polygon;
    .locals 8
    .param p1, "polygon"    # Lorg/locationtech/jts/geom/Polygon;
    .param p2, "operation"    # Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;

    .prologue
    const/4 v6, 0x0

    .line 169
    iget-object v5, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-interface {p2, p1, v5}, Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;->edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Polygon;

    .line 171
    .local v3, "newPolygon":Lorg/locationtech/jts/geom/Polygon;
    if-nez v3, :cond_0

    .line 172
    iget-object v7, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object v5, v6

    check-cast v5, Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-virtual {v7, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v3

    .line 173
    :cond_0
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Polygon;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    .end local v3    # "newPolygon":Lorg/locationtech/jts/geom/Polygon;
    :goto_0
    return-object v3

    .line 178
    .restart local v3    # "newPolygon":Lorg/locationtech/jts/geom/Polygon;
    :cond_1
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lorg/locationtech/jts/geom/util/GeometryEditor;->edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geom/LinearRing;

    .line 179
    .local v4, "shell":Lorg/locationtech/jts/geom/LinearRing;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/LinearRing;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 181
    :cond_2
    iget-object v5, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v5, v6, v6}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v3

    goto :goto_0

    .line 184
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "holes":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 186
    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lorg/locationtech/jts/geom/util/GeometryEditor;->edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LinearRing;

    .line 187
    .local v0, "hole":Lorg/locationtech/jts/geom/LinearRing;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LinearRing;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 185
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 190
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 193
    .end local v0    # "hole":Lorg/locationtech/jts/geom/LinearRing;
    :cond_6
    iget-object v6, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/locationtech/jts/geom/LinearRing;

    .line 194
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/locationtech/jts/geom/LinearRing;

    check-cast v5, [Lorg/locationtech/jts/geom/LinearRing;

    .line 193
    invoke-virtual {v6, v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "operation"    # Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;

    .prologue
    .line 131
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geom/util/GeometryEditor;->editInternal(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 134
    .local v0, "result":Lorg/locationtech/jts/geom/Geometry;
    iget-boolean v1, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->isUserDataCopied:Z

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getUserData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->setUserData(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCopyUserData(Z)V
    .locals 0
    .param p1, "isUserDataCopied"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lorg/locationtech/jts/geom/util/GeometryEditor;->isUserDataCopied:Z

    .line 117
    return-void
.end method
