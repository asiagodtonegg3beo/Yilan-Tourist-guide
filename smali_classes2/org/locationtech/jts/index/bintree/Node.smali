.class public Lorg/locationtech/jts/index/bintree/Node;
.super Lorg/locationtech/jts/index/bintree/NodeBase;
.source "Node.java"


# instance fields
.field private centre:D

.field private interval:Lorg/locationtech/jts/index/bintree/Interval;

.field private level:I


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/index/bintree/Interval;I)V
    .locals 4
    .param p1, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;
    .param p2, "level"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/locationtech/jts/index/bintree/NodeBase;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/locationtech/jts/index/bintree/Node;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    .line 51
    iput p2, p0, Lorg/locationtech/jts/index/bintree/Node;->level:I

    .line 52
    invoke-virtual {p1}, Lorg/locationtech/jts/index/bintree/Interval;->getMin()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/locationtech/jts/index/bintree/Interval;->getMax()D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/index/bintree/Node;->centre:D

    .line 53
    return-void
.end method

.method public static createExpanded(Lorg/locationtech/jts/index/bintree/Node;Lorg/locationtech/jts/index/bintree/Interval;)Lorg/locationtech/jts/index/bintree/Node;
    .locals 3
    .param p0, "node"    # Lorg/locationtech/jts/index/bintree/Node;
    .param p1, "addInterval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 36
    new-instance v0, Lorg/locationtech/jts/index/bintree/Interval;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/index/bintree/Interval;-><init>(Lorg/locationtech/jts/index/bintree/Interval;)V

    .line 37
    .local v0, "expandInt":Lorg/locationtech/jts/index/bintree/Interval;
    if-eqz p0, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/Node;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/index/bintree/Interval;->expandToInclude(Lorg/locationtech/jts/index/bintree/Interval;)V

    .line 39
    :cond_0
    invoke-static {v0}, Lorg/locationtech/jts/index/bintree/Node;->createNode(Lorg/locationtech/jts/index/bintree/Interval;)Lorg/locationtech/jts/index/bintree/Node;

    move-result-object v1

    .line 40
    .local v1, "largerNode":Lorg/locationtech/jts/index/bintree/Node;
    if-eqz p0, :cond_1

    invoke-virtual {v1, p0}, Lorg/locationtech/jts/index/bintree/Node;->insert(Lorg/locationtech/jts/index/bintree/Node;)V

    .line 41
    :cond_1
    return-object v1
.end method

.method public static createNode(Lorg/locationtech/jts/index/bintree/Interval;)Lorg/locationtech/jts/index/bintree/Node;
    .locals 4
    .param p0, "itemInterval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 27
    new-instance v0, Lorg/locationtech/jts/index/bintree/Key;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/index/bintree/Key;-><init>(Lorg/locationtech/jts/index/bintree/Interval;)V

    .line 30
    .local v0, "key":Lorg/locationtech/jts/index/bintree/Key;
    new-instance v1, Lorg/locationtech/jts/index/bintree/Node;

    invoke-virtual {v0}, Lorg/locationtech/jts/index/bintree/Key;->getInterval()Lorg/locationtech/jts/index/bintree/Interval;

    move-result-object v2

    invoke-virtual {v0}, Lorg/locationtech/jts/index/bintree/Key;->getLevel()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/locationtech/jts/index/bintree/Node;-><init>(Lorg/locationtech/jts/index/bintree/Interval;I)V

    .line 31
    .local v1, "node":Lorg/locationtech/jts/index/bintree/Node;
    return-object v1
.end method

.method private createSubnode(I)Lorg/locationtech/jts/index/bintree/Node;
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 134
    const-wide/16 v2, 0x0

    .line 135
    .local v2, "min":D
    const-wide/16 v0, 0x0

    .line 137
    .local v0, "max":D
    packed-switch p1, :pswitch_data_0

    .line 147
    :goto_0
    new-instance v5, Lorg/locationtech/jts/index/bintree/Interval;

    invoke-direct {v5, v2, v3, v0, v1}, Lorg/locationtech/jts/index/bintree/Interval;-><init>(DD)V

    .line 148
    .local v5, "subInt":Lorg/locationtech/jts/index/bintree/Interval;
    new-instance v4, Lorg/locationtech/jts/index/bintree/Node;

    iget v6, p0, Lorg/locationtech/jts/index/bintree/Node;->level:I

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v4, v5, v6}, Lorg/locationtech/jts/index/bintree/Node;-><init>(Lorg/locationtech/jts/index/bintree/Interval;I)V

    .line 149
    .local v4, "node":Lorg/locationtech/jts/index/bintree/Node;
    return-object v4

    .line 139
    .end local v4    # "node":Lorg/locationtech/jts/index/bintree/Node;
    .end local v5    # "subInt":Lorg/locationtech/jts/index/bintree/Interval;
    :pswitch_0
    iget-object v6, p0, Lorg/locationtech/jts/index/bintree/Node;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    invoke-virtual {v6}, Lorg/locationtech/jts/index/bintree/Interval;->getMin()D

    move-result-wide v2

    .line 140
    iget-wide v0, p0, Lorg/locationtech/jts/index/bintree/Node;->centre:D

    .line 141
    goto :goto_0

    .line 143
    :pswitch_1
    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Node;->centre:D

    .line 144
    iget-object v6, p0, Lorg/locationtech/jts/index/bintree/Node;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    invoke-virtual {v6}, Lorg/locationtech/jts/index/bintree/Interval;->getMax()D

    move-result-wide v0

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSubnode(I)Lorg/locationtech/jts/index/bintree/Node;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Node;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Node;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    invoke-direct {p0, p1}, Lorg/locationtech/jts/index/bintree/Node;->createSubnode(I)Lorg/locationtech/jts/index/bintree/Node;

    move-result-object v1

    aput-object v1, v0, p1

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Node;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public find(Lorg/locationtech/jts/index/bintree/Interval;)Lorg/locationtech/jts/index/bintree/NodeBase;
    .locals 4
    .param p1, "searchInterval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 90
    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Node;->centre:D

    invoke-static {p1, v2, v3}, Lorg/locationtech/jts/index/bintree/Node;->getSubnodeIndex(Lorg/locationtech/jts/index/bintree/Interval;D)I

    move-result v1

    .line 91
    .local v1, "subnodeIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 99
    .end local p0    # "this":Lorg/locationtech/jts/index/bintree/Node;
    :cond_0
    :goto_0
    return-object p0

    .line 93
    .restart local p0    # "this":Lorg/locationtech/jts/index/bintree/Node;
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/Node;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/Node;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aget-object v0, v2, v1

    .line 96
    .local v0, "node":Lorg/locationtech/jts/index/bintree/Node;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/index/bintree/Node;->find(Lorg/locationtech/jts/index/bintree/Interval;)Lorg/locationtech/jts/index/bintree/NodeBase;

    move-result-object p0

    goto :goto_0
.end method

.method public getInterval()Lorg/locationtech/jts/index/bintree/Interval;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Node;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    return-object v0
.end method

.method public getNode(Lorg/locationtech/jts/index/bintree/Interval;)Lorg/locationtech/jts/index/bintree/Node;
    .locals 4
    .param p1, "searchInterval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 71
    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Node;->centre:D

    invoke-static {p1, v2, v3}, Lorg/locationtech/jts/index/bintree/Node;->getSubnodeIndex(Lorg/locationtech/jts/index/bintree/Interval;D)I

    move-result v1

    .line 73
    .local v1, "subnodeIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 75
    invoke-direct {p0, v1}, Lorg/locationtech/jts/index/bintree/Node;->getSubnode(I)Lorg/locationtech/jts/index/bintree/Node;

    move-result-object v0

    .line 77
    .local v0, "node":Lorg/locationtech/jts/index/bintree/Node;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/index/bintree/Node;->getNode(Lorg/locationtech/jts/index/bintree/Interval;)Lorg/locationtech/jts/index/bintree/Node;

    move-result-object p0

    .line 80
    .end local v0    # "node":Lorg/locationtech/jts/index/bintree/Node;
    .end local p0    # "this":Lorg/locationtech/jts/index/bintree/Node;
    :cond_0
    return-object p0
.end method

.method insert(Lorg/locationtech/jts/index/bintree/Node;)V
    .locals 6
    .param p1, "node"    # Lorg/locationtech/jts/index/bintree/Node;

    .prologue
    .line 104
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/Node;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/Node;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    iget-object v3, p1, Lorg/locationtech/jts/index/bintree/Node;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/index/bintree/Interval;->contains(Lorg/locationtech/jts/index/bintree/Interval;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 105
    iget-object v2, p1, Lorg/locationtech/jts/index/bintree/Node;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    iget-wide v4, p0, Lorg/locationtech/jts/index/bintree/Node;->centre:D

    invoke-static {v2, v4, v5}, Lorg/locationtech/jts/index/bintree/Node;->getSubnodeIndex(Lorg/locationtech/jts/index/bintree/Interval;D)I

    move-result v1

    .line 106
    .local v1, "index":I
    iget v2, p1, Lorg/locationtech/jts/index/bintree/Node;->level:I

    iget v3, p0, Lorg/locationtech/jts/index/bintree/Node;->level:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    .line 107
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/Node;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aput-object p1, v2, v1

    .line 116
    :goto_1
    return-void

    .line 104
    .end local v1    # "index":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 112
    .restart local v1    # "index":I
    :cond_2
    invoke-direct {p0, v1}, Lorg/locationtech/jts/index/bintree/Node;->createSubnode(I)Lorg/locationtech/jts/index/bintree/Node;

    move-result-object v0

    .line 113
    .local v0, "childNode":Lorg/locationtech/jts/index/bintree/Node;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/index/bintree/Node;->insert(Lorg/locationtech/jts/index/bintree/Node;)V

    .line 114
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/Node;->subnode:[Lorg/locationtech/jts/index/bintree/Node;

    aput-object v0, v2, v1

    goto :goto_1
.end method

.method protected isSearchMatch(Lorg/locationtech/jts/index/bintree/Interval;)Z
    .locals 1
    .param p1, "itemInterval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Node;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/index/bintree/Interval;->overlaps(Lorg/locationtech/jts/index/bintree/Interval;)Z

    move-result v0

    return v0
.end method
