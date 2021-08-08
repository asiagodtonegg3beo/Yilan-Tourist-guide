.class public Lorg/locationtech/jts/operation/relate/EdgeEndBundle;
.super Lorg/locationtech/jts/geomgraph/EdgeEnd;
.source "EdgeEndBundle.java"


# instance fields
.field private edgeEnds:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/algorithm/BoundaryNodeRule;Lorg/locationtech/jts/geomgraph/EdgeEnd;)V
    .locals 5
    .param p1, "boundaryNodeRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;
    .param p2, "e"    # Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .prologue
    .line 45
    invoke-virtual {p2}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v0

    invoke-virtual {p2}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {p2}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getDirectedCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    new-instance v3, Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {p2}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/locationtech/jts/geomgraph/Label;-><init>(Lorg/locationtech/jts/geomgraph/Label;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/geomgraph/EdgeEnd;-><init>(Lorg/locationtech/jts/geomgraph/Edge;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/Label;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->edgeEnds:Ljava/util/List;

    .line 46
    invoke-virtual {p0, p2}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->insert(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V
    .locals 1
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;-><init>(Lorg/locationtech/jts/algorithm/BoundaryNodeRule;Lorg/locationtech/jts/geomgraph/EdgeEnd;)V

    .line 58
    return-void
.end method

.method private computeLabelOn(ILorg/locationtech/jts/algorithm/BoundaryNodeRule;)V
    .locals 6
    .param p1, "geomIndex"    # I
    .param p2, "boundaryNodeRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "boundaryCount":I
    const/4 v2, 0x0

    .line 123
    .local v2, "foundInterior":Z
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 125
    .local v1, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v4

    .line 126
    .local v4, "loc":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 127
    :cond_1
    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .end local v4    # "loc":I
    :cond_2
    const/4 v4, -0x1

    .line 130
    .restart local v4    # "loc":I
    if-eqz v2, :cond_3

    const/4 v4, 0x0

    .line 131
    :cond_3
    if-lez v0, :cond_4

    .line 132
    invoke-static {p2, v0}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->determineBoundary(Lorg/locationtech/jts/algorithm/BoundaryNodeRule;I)I

    move-result v4

    .line 134
    :cond_4
    iget-object v5, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v5, p1, v4}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(II)V

    .line 136
    return-void
.end method

.method private computeLabelSide(II)V
    .locals 5
    .param p1, "geomIndex"    # I
    .param p2, "side"    # I

    .prologue
    const/4 v4, 0x2

    .line 162
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 164
    .local v0, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/Label;->isArea()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v2

    .line 166
    .local v2, "loc":I
    if-nez v2, :cond_2

    .line 167
    iget-object v3, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->label:Lorg/locationtech/jts/geomgraph/Label;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, v4}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(III)V

    .line 174
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .end local v2    # "loc":I
    :cond_1
    return-void

    .line 170
    .restart local v0    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .restart local v2    # "loc":I
    :cond_2
    if-ne v2, v4, :cond_0

    .line 171
    iget-object v3, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v3, p1, p2, v4}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(III)V

    goto :goto_0
.end method

.method private computeLabelSides(I)V
    .locals 1
    .param p1, "geomIndex"    # I

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->computeLabelSide(II)V

    .line 143
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->computeLabelSide(II)V

    .line 144
    return-void
.end method


# virtual methods
.method public computeLabel(Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V
    .locals 6
    .param p1, "boundaryNodeRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .prologue
    const/4 v5, -0x1

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "isArea":Z
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 82
    .local v0, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/Label;->isArea()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    :cond_1
    if-eqz v2, :cond_3

    .line 85
    new-instance v4, Lorg/locationtech/jts/geomgraph/Label;

    invoke-direct {v4, v5, v5, v5}, Lorg/locationtech/jts/geomgraph/Label;-><init>(III)V

    iput-object v4, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 90
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v4, 0x2

    if-ge v1, v4, :cond_4

    .line 91
    invoke-direct {p0, v1, p1}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->computeLabelOn(ILorg/locationtech/jts/algorithm/BoundaryNodeRule;)V

    .line 92
    if-eqz v2, :cond_2

    .line 93
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->computeLabelSides(I)V

    .line 90
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 87
    .end local v1    # "i":I
    :cond_3
    new-instance v4, Lorg/locationtech/jts/geomgraph/Label;

    invoke-direct {v4, v5}, Lorg/locationtech/jts/geomgraph/Label;-><init>(I)V

    iput-object v4, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->label:Lorg/locationtech/jts/geomgraph/Label;

    goto :goto_1

    .line 95
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method

.method public getEdgeEnds()Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->edgeEnds:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Lorg/locationtech/jts/geomgraph/Label;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->label:Lorg/locationtech/jts/geomgraph/Label;

    return-object v0
.end method

.method public insert(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V
    .locals 1
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->edgeEnds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->edgeEnds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EdgeEndBundle--> Label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 188
    .local v0, "ee":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->print(Ljava/io/PrintStream;)V

    .line 189
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    goto :goto_0

    .line 191
    .end local v0    # "ee":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    :cond_0
    return-void
.end method

.method updateIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 1
    .param p1, "im"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    .line 181
    iget-object v0, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-static {v0, p1}, Lorg/locationtech/jts/geomgraph/Edge;->updateIM(Lorg/locationtech/jts/geomgraph/Label;Lorg/locationtech/jts/geom/IntersectionMatrix;)V

    .line 182
    return-void
.end method
