.class Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;
.super Ljava/lang/Object;
.source "SimpleMinimumClearance.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateSequenceFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/precision/SimpleMinimumClearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComputeMCCoordinateSequenceFilter"
.end annotation


# instance fields
.field private queryPt:Lorg/locationtech/jts/geom/Coordinate;

.field final synthetic this$0:Lorg/locationtech/jts/precision/SimpleMinimumClearance;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/precision/SimpleMinimumClearance;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 0
    .param p2, "queryPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 121
    iput-object p1, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;->this$0:Lorg/locationtech/jts/precision/SimpleMinimumClearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;->queryPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 123
    return-void
.end method

.method private checkSegmentDistance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 7
    .param p1, "seg0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "seg1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;->queryPt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;->queryPt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;->queryPt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, p2, p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 147
    .local v2, "segDist":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_0

    .line 148
    iget-object v1, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;->this$0:Lorg/locationtech/jts/precision/SimpleMinimumClearance;

    iget-object v4, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;->queryPt:Lorg/locationtech/jts/geom/Coordinate;

    move-object v5, p2

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->access$200(Lorg/locationtech/jts/precision/SimpleMinimumClearance;DLorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0
.end method

.method private checkVertexDistance(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "vertex"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 136
    iget-object v2, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;->queryPt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 137
    .local v0, "vertexDist":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 138
    iget-object v2, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;->this$0:Lorg/locationtech/jts/precision/SimpleMinimumClearance;

    iget-object v3, p0, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;->queryPt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v2, v0, v1, v3, p1}, Lorg/locationtech/jts/precision/SimpleMinimumClearance;->access$100(Lorg/locationtech/jts/precision/SimpleMinimumClearance;DLorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/CoordinateSequence;I)V
    .locals 2
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "i"    # I

    .prologue
    .line 126
    invoke-interface {p1, p2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;->checkVertexDistance(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 129
    if-lez p2, :cond_0

    .line 130
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-interface {p1, p2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/precision/SimpleMinimumClearance$ComputeMCCoordinateSequenceFilter;->checkSegmentDistance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 132
    :cond_0
    return-void
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public isGeometryChanged()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method
