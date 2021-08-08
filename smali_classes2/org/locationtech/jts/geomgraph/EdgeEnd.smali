.class public Lorg/locationtech/jts/geomgraph/EdgeEnd;
.super Ljava/lang/Object;
.source "EdgeEnd.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private dx:D

.field private dy:D

.field protected edge:Lorg/locationtech/jts/geomgraph/Edge;

.field protected label:Lorg/locationtech/jts/geomgraph/Label;

.field private node:Lorg/locationtech/jts/geomgraph/Node;

.field private p0:Lorg/locationtech/jts/geom/Coordinate;

.field private p1:Lorg/locationtech/jts/geom/Coordinate;

.field private quadrant:I


# direct methods
.method protected constructor <init>(Lorg/locationtech/jts/geomgraph/Edge;)V
    .locals 0
    .param p1, "edge"    # Lorg/locationtech/jts/geomgraph/Edge;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geomgraph/Edge;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "edge"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/locationtech/jts/geomgraph/EdgeEnd;-><init>(Lorg/locationtech/jts/geomgraph/Edge;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/Label;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geomgraph/Edge;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/Label;)V
    .locals 0
    .param p1, "edge"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "label"    # Lorg/locationtech/jts/geomgraph/Label;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;-><init>(Lorg/locationtech/jts/geomgraph/Edge;)V

    .line 54
    invoke-virtual {p0, p2, p3}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->init(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 55
    iput-object p4, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 56
    return-void
.end method


# virtual methods
.method public compareDirection(Lorg/locationtech/jts/geomgraph/EdgeEnd;)I
    .locals 4
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dx:D

    iget-wide v2, p1, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dx:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dy:D

    iget-wide v2, p1, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dy:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    .line 102
    :cond_0
    iget v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->quadrant:I

    iget v1, p1, Lorg/locationtech/jts/geomgraph/EdgeEnd;->quadrant:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->quadrant:I

    iget v1, p1, Lorg/locationtech/jts/geomgraph/EdgeEnd;->quadrant:I

    if-ge v0, v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p1, Lorg/locationtech/jts/geomgraph/EdgeEnd;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p1, Lorg/locationtech/jts/geomgraph/EdgeEnd;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 81
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 82
    .local v0, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->compareDirection(Lorg/locationtech/jts/geomgraph/EdgeEnd;)I

    move-result v1

    return v1
.end method

.method public computeLabel(Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V
    .locals 0
    .param p1, "boundaryNodeRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .prologue
    .line 112
    return-void
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->p0:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getDirectedCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->p1:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getDx()D
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dx:D

    return-wide v0
.end method

.method public getDy()D
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dy:D

    return-wide v0
.end method

.method public getEdge()Lorg/locationtech/jts/geomgraph/Edge;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    return-object v0
.end method

.method public getLabel()Lorg/locationtech/jts/geomgraph/Label;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->label:Lorg/locationtech/jts/geomgraph/Label;

    return-object v0
.end method

.method public getNode()Lorg/locationtech/jts/geomgraph/Node;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->node:Lorg/locationtech/jts/geomgraph/Node;

    return-object v0
.end method

.method public getQuadrant()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->quadrant:I

    return v0
.end method

.method protected init(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 6
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const-wide/16 v4, 0x0

    .line 60
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 61
    iput-object p2, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 62
    iget-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dx:D

    .line 63
    iget-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dy:D

    .line 64
    iget-wide v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dx:D

    iget-wide v2, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dy:D

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/geomgraph/Quadrant;->quadrant(DD)I

    move-result v0

    iput v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->quadrant:I

    .line 65
    iget-wide v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dx:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dy:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "EdgeEnd with identical endpoints found"

    invoke-static {v0, v1}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 66
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 10
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 115
    iget-wide v6, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dy:D

    iget-wide v8, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dx:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 116
    .local v0, "angle":D
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "className":Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 118
    .local v3, "lastDotPos":I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->quadrant:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public setNode(Lorg/locationtech/jts/geomgraph/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/locationtech/jts/geomgraph/Node;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->node:Lorg/locationtech/jts/geomgraph/Node;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 123
    iget-wide v6, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dy:D

    iget-wide v8, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->dx:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 124
    .local v0, "angle":D
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "className":Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 126
    .local v3, "lastDotPos":I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->quadrant:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/EdgeEnd;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
