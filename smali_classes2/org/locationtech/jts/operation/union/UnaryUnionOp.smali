.class public Lorg/locationtech/jts/operation/union/UnaryUnionOp;
.super Ljava/lang/Object;
.source "UnaryUnionOp.java"


# instance fields
.field private geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

.field private lines:Ljava/util/List;

.field private points:Ljava/util/List;

.field private polygons:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "geoms"    # Ljava/util/Collection;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->polygons:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->lines:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->points:Ljava/util/List;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 144
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->extract(Ljava/util/Collection;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 1
    .param p1, "geoms"    # Ljava/util/Collection;
    .param p2, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->polygons:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->lines:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->points:Ljava/util/List;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 131
    iput-object p2, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 132
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->extract(Ljava/util/Collection;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->polygons:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->lines:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->points:Ljava/util/List;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 154
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->extract(Lorg/locationtech/jts/geom/Geometry;)V

    .line 155
    return-void
.end method

.method private extract(Ljava/util/Collection;)V
    .locals 3
    .param p1, "geoms"    # Ljava/util/Collection;

    .prologue
    .line 159
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 161
    .local v0, "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->extract(Lorg/locationtech/jts/geom/Geometry;)V

    goto :goto_0

    .line 163
    .end local v0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void
.end method

.method private extract(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 167
    iget-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 175
    :cond_0
    const-class v0, Lorg/locationtech/jts/geom/Polygon;

    iget-object v1, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->polygons:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/locationtech/jts/geom/util/GeometryExtracter;->extract(Lorg/locationtech/jts/geom/Geometry;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 176
    const-class v0, Lorg/locationtech/jts/geom/LineString;

    iget-object v1, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->lines:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/locationtech/jts/geom/util/GeometryExtracter;->extract(Lorg/locationtech/jts/geom/Geometry;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 177
    const-class v0, Lorg/locationtech/jts/geom/Point;

    iget-object v1, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->points:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/locationtech/jts/geom/util/GeometryExtracter;->extract(Lorg/locationtech/jts/geom/Geometry;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 178
    return-void
.end method

.method public static union(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "geoms"    # Ljava/util/Collection;

    .prologue
    .line 80
    new-instance v0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v0, "op":Lorg/locationtech/jts/operation/union/UnaryUnionOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->union()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public static union(Ljava/util/Collection;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "geoms"    # Ljava/util/Collection;
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 98
    new-instance v0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;-><init>(Ljava/util/Collection;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 99
    .local v0, "op":Lorg/locationtech/jts/operation/union/UnaryUnionOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->union()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public static union(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 112
    new-instance v0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 113
    .local v0, "op":Lorg/locationtech/jts/operation/union/UnaryUnionOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->union()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method private unionNoOpt(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 274
    iget-object v2, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v1, 0x0

    check-cast v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    .line 275
    .local v0, "empty":Lorg/locationtech/jts/geom/Geometry;
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lorg/locationtech/jts/operation/overlay/snap/SnapIfNeededOverlayOp;->overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method private unionWithNull(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 0
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 249
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 250
    const/4 p1, 0x0

    .line 257
    .end local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    :goto_0
    return-object p1

    .line 252
    .restart local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    if-eqz p2, :cond_0

    .line 254
    if-nez p1, :cond_2

    move-object p1, p2

    .line 255
    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Geometry;->union(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public union()Lorg/locationtech/jts/geom/Geometry;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 192
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    if-nez v8, :cond_1

    move-object v2, v7

    .line 235
    :cond_0
    :goto_0
    return-object v2

    .line 202
    :cond_1
    const/4 v5, 0x0

    .line 203
    .local v5, "unionPoints":Lorg/locationtech/jts/geom/Geometry;
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->points:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 204
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v9, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->points:Ljava/util/List;

    invoke-virtual {v8, v9}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 205
    .local v1, "ptGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->unionNoOpt(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    .line 208
    .end local v1    # "ptGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    const/4 v4, 0x0

    .line 209
    .local v4, "unionLines":Lorg/locationtech/jts/geom/Geometry;
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->lines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 210
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v9, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->lines:Ljava/util/List;

    invoke-virtual {v8, v9}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 211
    .local v0, "lineGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->unionNoOpt(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    .line 214
    .end local v0    # "lineGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    const/4 v6, 0x0

    .line 215
    .local v6, "unionPolygons":Lorg/locationtech/jts/geom/Geometry;
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->polygons:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 216
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->polygons:Ljava/util/List;

    invoke-static {v8}, Lorg/locationtech/jts/operation/union/CascadedPolygonUnion;->union(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    .line 223
    :cond_4
    invoke-direct {p0, v4, v6}, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->unionWithNull(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    .line 224
    .local v3, "unionLA":Lorg/locationtech/jts/geom/Geometry;
    const/4 v2, 0x0

    .line 225
    .local v2, "union":Lorg/locationtech/jts/geom/Geometry;
    if-nez v5, :cond_5

    .line 226
    move-object v2, v3

    .line 232
    .end local v5    # "unionPoints":Lorg/locationtech/jts/geom/Geometry;
    :goto_1
    if-nez v2, :cond_0

    .line 233
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/UnaryUnionOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v8, v7}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v2

    goto :goto_0

    .line 227
    .restart local v5    # "unionPoints":Lorg/locationtech/jts/geom/Geometry;
    :cond_5
    if-nez v3, :cond_6

    .line 228
    move-object v2, v5

    goto :goto_1

    .line 230
    :cond_6
    check-cast v5, Lorg/locationtech/jts/geom/Puntal;

    .end local v5    # "unionPoints":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {v5, v3}, Lorg/locationtech/jts/operation/union/PointGeometryUnion;->union(Lorg/locationtech/jts/geom/Puntal;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    goto :goto_1
.end method
