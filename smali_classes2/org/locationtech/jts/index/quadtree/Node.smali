.class public Lorg/locationtech/jts/index/quadtree/Node;
.super Lorg/locationtech/jts/index/quadtree/NodeBase;
.source "Node.java"


# instance fields
.field private centrex:D

.field private centrey:D

.field private env:Lorg/locationtech/jts/geom/Envelope;

.field private level:I


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Envelope;I)V
    .locals 6
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "level"    # I

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 51
    invoke-direct {p0}, Lorg/locationtech/jts/index/quadtree/NodeBase;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    .line 54
    iput p2, p0, Lorg/locationtech/jts/index/quadtree/Node;->level:I

    .line 55
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v2

    add-double/2addr v0, v2

    div-double/2addr v0, v4

    iput-wide v0, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrex:D

    .line 56
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v2

    add-double/2addr v0, v2

    div-double/2addr v0, v4

    iput-wide v0, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrey:D

    .line 57
    return-void
.end method

.method public static createExpanded(Lorg/locationtech/jts/index/quadtree/Node;Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/index/quadtree/Node;
    .locals 3
    .param p0, "node"    # Lorg/locationtech/jts/index/quadtree/Node;
    .param p1, "addEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 37
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    .line 38
    .local v0, "expandEnv":Lorg/locationtech/jts/geom/Envelope;
    if-eqz p0, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Envelope;)V

    .line 40
    :cond_0
    invoke-static {v0}, Lorg/locationtech/jts/index/quadtree/Node;->createNode(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/index/quadtree/Node;

    move-result-object v1

    .line 41
    .local v1, "largerNode":Lorg/locationtech/jts/index/quadtree/Node;
    if-eqz p0, :cond_1

    invoke-virtual {v1, p0}, Lorg/locationtech/jts/index/quadtree/Node;->insertNode(Lorg/locationtech/jts/index/quadtree/Node;)V

    .line 42
    :cond_1
    return-object v1
.end method

.method public static createNode(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/index/quadtree/Node;
    .locals 4
    .param p0, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 30
    new-instance v0, Lorg/locationtech/jts/index/quadtree/Key;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/index/quadtree/Key;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    .line 31
    .local v0, "key":Lorg/locationtech/jts/index/quadtree/Key;
    new-instance v1, Lorg/locationtech/jts/index/quadtree/Node;

    invoke-virtual {v0}, Lorg/locationtech/jts/index/quadtree/Key;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    invoke-virtual {v0}, Lorg/locationtech/jts/index/quadtree/Key;->getLevel()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/locationtech/jts/index/quadtree/Node;-><init>(Lorg/locationtech/jts/geom/Envelope;I)V

    .line 32
    .local v1, "node":Lorg/locationtech/jts/index/quadtree/Node;
    return-object v1
.end method

.method private createSubnode(I)Lorg/locationtech/jts/index/quadtree/Node;
    .locals 11
    .param p1, "index"    # I

    .prologue
    .line 143
    const-wide/16 v2, 0x0

    .line 144
    .local v2, "minx":D
    const-wide/16 v4, 0x0

    .line 145
    .local v4, "maxx":D
    const-wide/16 v6, 0x0

    .line 146
    .local v6, "miny":D
    const-wide/16 v8, 0x0

    .line 148
    .local v8, "maxy":D
    packed-switch p1, :pswitch_data_0

    .line 174
    :goto_0
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;-><init>(DDDD)V

    .line 175
    .local v1, "sqEnv":Lorg/locationtech/jts/geom/Envelope;
    new-instance v0, Lorg/locationtech/jts/index/quadtree/Node;

    iget v10, p0, Lorg/locationtech/jts/index/quadtree/Node;->level:I

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v0, v1, v10}, Lorg/locationtech/jts/index/quadtree/Node;-><init>(Lorg/locationtech/jts/geom/Envelope;I)V

    .line 176
    .local v0, "node":Lorg/locationtech/jts/index/quadtree/Node;
    return-object v0

    .line 150
    .end local v0    # "node":Lorg/locationtech/jts/index/quadtree/Node;
    .end local v1    # "sqEnv":Lorg/locationtech/jts/geom/Envelope;
    :pswitch_0
    iget-object v10, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    .line 151
    iget-wide v4, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrex:D

    .line 152
    iget-object v10, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v6

    .line 153
    iget-wide v8, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrey:D

    .line 154
    goto :goto_0

    .line 156
    :pswitch_1
    iget-wide v2, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrex:D

    .line 157
    iget-object v10, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    .line 158
    iget-object v10, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v6

    .line 159
    iget-wide v8, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrey:D

    .line 160
    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v10, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    .line 163
    iget-wide v4, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrex:D

    .line 164
    iget-wide v6, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrey:D

    .line 165
    iget-object v10, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v8

    .line 166
    goto :goto_0

    .line 168
    :pswitch_3
    iget-wide v2, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrex:D

    .line 169
    iget-object v10, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    .line 170
    iget-wide v6, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrey:D

    .line 171
    iget-object v10, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v8

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSubnode(I)Lorg/locationtech/jts/index/quadtree/Node;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Node;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Node;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    invoke-direct {p0, p1}, Lorg/locationtech/jts/index/quadtree/Node;->createSubnode(I)Lorg/locationtech/jts/index/quadtree/Node;

    move-result-object v1

    aput-object v1, v0, p1

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Node;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public find(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/index/quadtree/NodeBase;
    .locals 6
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 95
    iget-wide v2, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrex:D

    iget-wide v4, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrey:D

    invoke-static {p1, v2, v3, v4, v5}, Lorg/locationtech/jts/index/quadtree/Node;->getSubnodeIndex(Lorg/locationtech/jts/geom/Envelope;DD)I

    move-result v1

    .line 96
    .local v1, "subnodeIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 104
    .end local p0    # "this":Lorg/locationtech/jts/index/quadtree/Node;
    :cond_0
    :goto_0
    return-object p0

    .line 98
    .restart local p0    # "this":Lorg/locationtech/jts/index/quadtree/Node;
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/Node;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/Node;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aget-object v0, v2, v1

    .line 101
    .local v0, "node":Lorg/locationtech/jts/index/quadtree/Node;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/index/quadtree/Node;->find(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/index/quadtree/NodeBase;

    move-result-object p0

    goto :goto_0
.end method

.method public getEnvelope()Lorg/locationtech/jts/geom/Envelope;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    return-object v0
.end method

.method public getNode(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/index/quadtree/Node;
    .locals 6
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 76
    iget-wide v2, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrex:D

    iget-wide v4, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrey:D

    invoke-static {p1, v2, v3, v4, v5}, Lorg/locationtech/jts/index/quadtree/Node;->getSubnodeIndex(Lorg/locationtech/jts/geom/Envelope;DD)I

    move-result v1

    .line 78
    .local v1, "subnodeIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 80
    invoke-direct {p0, v1}, Lorg/locationtech/jts/index/quadtree/Node;->getSubnode(I)Lorg/locationtech/jts/index/quadtree/Node;

    move-result-object v0

    .line 82
    .local v0, "node":Lorg/locationtech/jts/index/quadtree/Node;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/index/quadtree/Node;->getNode(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/index/quadtree/Node;

    move-result-object p0

    .line 85
    .end local v0    # "node":Lorg/locationtech/jts/index/quadtree/Node;
    .end local p0    # "this":Lorg/locationtech/jts/index/quadtree/Node;
    :cond_0
    return-object p0
.end method

.method insertNode(Lorg/locationtech/jts/index/quadtree/Node;)V
    .locals 8
    .param p1, "node"    # Lorg/locationtech/jts/index/quadtree/Node;

    .prologue
    .line 109
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    iget-object v3, p1, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 112
    iget-object v2, p1, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    iget-wide v4, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrex:D

    iget-wide v6, p0, Lorg/locationtech/jts/index/quadtree/Node;->centrey:D

    invoke-static {v2, v4, v5, v6, v7}, Lorg/locationtech/jts/index/quadtree/Node;->getSubnodeIndex(Lorg/locationtech/jts/geom/Envelope;DD)I

    move-result v1

    .line 114
    .local v1, "index":I
    iget v2, p1, Lorg/locationtech/jts/index/quadtree/Node;->level:I

    iget v3, p0, Lorg/locationtech/jts/index/quadtree/Node;->level:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    .line 115
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/Node;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aput-object p1, v2, v1

    .line 125
    :goto_1
    return-void

    .line 109
    .end local v1    # "index":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 121
    .restart local v1    # "index":I
    :cond_2
    invoke-direct {p0, v1}, Lorg/locationtech/jts/index/quadtree/Node;->createSubnode(I)Lorg/locationtech/jts/index/quadtree/Node;

    move-result-object v0

    .line 122
    .local v0, "childNode":Lorg/locationtech/jts/index/quadtree/Node;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/index/quadtree/Node;->insertNode(Lorg/locationtech/jts/index/quadtree/Node;)V

    .line 123
    iget-object v2, p0, Lorg/locationtech/jts/index/quadtree/Node;->subnode:[Lorg/locationtech/jts/index/quadtree/Node;

    aput-object v0, v2, v1

    goto :goto_1
.end method

.method protected isSearchMatch(Lorg/locationtech/jts/geom/Envelope;)Z
    .locals 1
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 63
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Node;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    goto :goto_0
.end method
