.class public Lorg/locationtech/jts/precision/GeometryPrecisionReducer;
.super Ljava/lang/Object;
.source "GeometryPrecisionReducer.java"


# instance fields
.field private changePrecisionModel:Z

.field private isPointwise:Z

.field private removeCollapsed:Z

.field private targetPM:Lorg/locationtech/jts/geom/PrecisionModel;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 2
    .param p1, "pm"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->removeCollapsed:Z

    .line 67
    iput-boolean v1, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->changePrecisionModel:Z

    .line 68
    iput-boolean v1, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->isPointwise:Z

    .line 72
    iput-object p1, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->targetPM:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 73
    return-void
.end method

.method private changePM(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "newPM"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 192
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->createEditor(Lorg/locationtech/jts/geom/GeometryFactory;Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/geom/util/GeometryEditor;

    move-result-object v0

    .line 194
    .local v0, "geomEditor":Lorg/locationtech/jts/geom/util/GeometryEditor;
    new-instance v1, Lorg/locationtech/jts/geom/util/GeometryEditor$NoOpGeometryOperation;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/util/GeometryEditor$NoOpGeometryOperation;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/locationtech/jts/geom/util/GeometryEditor;->edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method private createEditor(Lorg/locationtech/jts/geom/GeometryFactory;Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/geom/util/GeometryEditor;
    .locals 3
    .param p1, "geomFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .param p2, "newPM"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 200
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryFactory;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 201
    new-instance v0, Lorg/locationtech/jts/geom/util/GeometryEditor;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/util/GeometryEditor;-><init>()V

    .line 205
    :goto_0
    return-object v0

    .line 203
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->createFactory(Lorg/locationtech/jts/geom/GeometryFactory;Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v1

    .line 204
    .local v1, "newFactory":Lorg/locationtech/jts/geom/GeometryFactory;
    new-instance v0, Lorg/locationtech/jts/geom/util/GeometryEditor;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/util/GeometryEditor;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 205
    .local v0, "geomEdit":Lorg/locationtech/jts/geom/util/GeometryEditor;
    goto :goto_0
.end method

.method private createFactory(Lorg/locationtech/jts/geom/GeometryFactory;Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/geom/GeometryFactory;
    .locals 3
    .param p1, "inputFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .param p2, "pm"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 210
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    .line 212
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryFactory;->getSRID()I

    move-result v1

    .line 213
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;ILorg/locationtech/jts/geom/CoordinateSequenceFactory;)V

    .line 214
    .local v0, "newFactory":Lorg/locationtech/jts/geom/GeometryFactory;
    return-object v0
.end method

.method private fixPolygonalTopology(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 167
    move-object v2, p1

    .line 168
    .local v2, "geomToBuffer":Lorg/locationtech/jts/geom/Geometry;
    iget-boolean v3, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->changePrecisionModel:Z

    if-nez v3, :cond_0

    .line 169
    iget-object v3, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->targetPM:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-direct {p0, p1, v3}, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->changePM(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 172
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/locationtech/jts/geom/Geometry;->buffer(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 174
    .local v0, "bufGeom":Lorg/locationtech/jts/geom/Geometry;
    move-object v1, v0

    .line 175
    .local v1, "finalGeom":Lorg/locationtech/jts/geom/Geometry;
    iget-boolean v3, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->changePrecisionModel:Z

    if-nez v3, :cond_1

    .line 177
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometry(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 179
    :cond_1
    return-object v1
.end method

.method public static reduce(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "precModel"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 43
    new-instance v0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 44
    .local v0, "reducer":Lorg/locationtech/jts/precision/GeometryPrecisionReducer;
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->reduce(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method private reducePointwise(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 139
    iget-boolean v4, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->changePrecisionModel:Z

    if-eqz v4, :cond_1

    .line 140
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v4

    iget-object v5, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->targetPM:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-direct {p0, v4, v5}, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->createFactory(Lorg/locationtech/jts/geom/GeometryFactory;Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    .line 141
    .local v2, "newFactory":Lorg/locationtech/jts/geom/GeometryFactory;
    new-instance v1, Lorg/locationtech/jts/geom/util/GeometryEditor;

    invoke-direct {v1, v2}, Lorg/locationtech/jts/geom/util/GeometryEditor;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 151
    .end local v2    # "newFactory":Lorg/locationtech/jts/geom/GeometryFactory;
    .local v1, "geomEdit":Lorg/locationtech/jts/geom/util/GeometryEditor;
    :goto_0
    iget-boolean v0, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->removeCollapsed:Z

    .line 152
    .local v0, "finalRemoveCollapsed":Z
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 155
    :cond_0
    new-instance v4, Lorg/locationtech/jts/precision/PrecisionReducerCoordinateOperation;

    iget-object v5, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->targetPM:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-direct {v4, v5, v0}, Lorg/locationtech/jts/precision/PrecisionReducerCoordinateOperation;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;Z)V

    invoke-virtual {v1, p1, v4}, Lorg/locationtech/jts/geom/util/GeometryEditor;->edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    .line 158
    .local v3, "reduceGeom":Lorg/locationtech/jts/geom/Geometry;
    return-object v3

    .line 145
    .end local v0    # "finalRemoveCollapsed":Z
    .end local v1    # "geomEdit":Lorg/locationtech/jts/geom/util/GeometryEditor;
    .end local v3    # "reduceGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    new-instance v1, Lorg/locationtech/jts/geom/util/GeometryEditor;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/util/GeometryEditor;-><init>()V

    .restart local v1    # "geomEdit":Lorg/locationtech/jts/geom/util/GeometryEditor;
    goto :goto_0
.end method

.method public static reducePointwise(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "precModel"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 60
    new-instance v0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 61
    .local v0, "reducer":Lorg/locationtech/jts/precision/GeometryPrecisionReducer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->setPointwise(Z)V

    .line 62
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->reduce(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public reduce(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->reducePointwise(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 121
    .local v0, "reducePW":Lorg/locationtech/jts/geom/Geometry;
    iget-boolean v1, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->isPointwise:Z

    if-eqz v1, :cond_1

    .line 133
    .end local v0    # "reducePW":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    :goto_0
    return-object v0

    .line 125
    .restart local v0    # "reducePW":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v1, v0, Lorg/locationtech/jts/geom/Polygonal;

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-direct {p0, v0}, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->fixPolygonalTopology(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method

.method public setChangePrecisionModel(Z)V
    .locals 0
    .param p1, "changePrecisionModel"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->changePrecisionModel:Z

    .line 101
    return-void
.end method

.method public setPointwise(Z)V
    .locals 0
    .param p1, "isPointwise"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->isPointwise:Z

    .line 116
    return-void
.end method

.method public setRemoveCollapsedComponents(Z)V
    .locals 0
    .param p1, "removeCollapsed"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lorg/locationtech/jts/precision/GeometryPrecisionReducer;->removeCollapsed:Z

    .line 86
    return-void
.end method
