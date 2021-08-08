.class public Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;
.super Ljava/lang/Object;
.source "SimpleGeometryPrecisionReducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer$PrecisionReducerCoordinateOperation;
    }
.end annotation


# instance fields
.field private changePrecisionModel:Z

.field private newPrecisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

.field private removeCollapsed:Z


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 1
    .param p1, "pm"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;->removeCollapsed:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;->changePrecisionModel:Z

    .line 64
    iput-object p1, p0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;->newPrecisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 65
    return-void
.end method

.method static synthetic access$100(Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;)Lorg/locationtech/jts/geom/PrecisionModel;
    .locals 1
    .param p0, "x0"    # Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;->newPrecisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    return-object v0
.end method

.method static synthetic access$200(Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;->removeCollapsed:Z

    return v0
.end method

.method public static reduce(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "precModel"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 54
    new-instance v0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 55
    .local v0, "reducer":Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;->reduce(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public reduce(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 98
    iget-boolean v2, p0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;->changePrecisionModel:Z

    if-eqz v2, :cond_0

    .line 99
    new-instance v1, Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v2, p0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;->newPrecisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/GeometryFactory;->getSRID()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    .line 100
    .local v1, "newFactory":Lorg/locationtech/jts/geom/GeometryFactory;
    new-instance v0, Lorg/locationtech/jts/geom/util/GeometryEditor;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/util/GeometryEditor;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 106
    .end local v1    # "newFactory":Lorg/locationtech/jts/geom/GeometryFactory;
    .local v0, "geomEdit":Lorg/locationtech/jts/geom/util/GeometryEditor;
    :goto_0
    new-instance v2, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer$PrecisionReducerCoordinateOperation;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer$PrecisionReducerCoordinateOperation;-><init>(Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer$1;)V

    invoke-virtual {v0, p1, v2}, Lorg/locationtech/jts/geom/util/GeometryEditor;->edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    return-object v2

    .line 104
    .end local v0    # "geomEdit":Lorg/locationtech/jts/geom/util/GeometryEditor;
    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/util/GeometryEditor;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/util/GeometryEditor;-><init>()V

    .restart local v0    # "geomEdit":Lorg/locationtech/jts/geom/util/GeometryEditor;
    goto :goto_0
.end method

.method public setChangePrecisionModel(Z)V
    .locals 0
    .param p1, "changePrecisionModel"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;->changePrecisionModel:Z

    .line 93
    return-void
.end method

.method public setRemoveCollapsedComponents(Z)V
    .locals 0
    .param p1, "removeCollapsed"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/locationtech/jts/precision/SimpleGeometryPrecisionReducer;->removeCollapsed:Z

    .line 78
    return-void
.end method
