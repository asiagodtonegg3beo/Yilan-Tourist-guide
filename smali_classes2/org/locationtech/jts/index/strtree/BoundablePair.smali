.class Lorg/locationtech/jts/index/strtree/BoundablePair;
.super Ljava/lang/Object;
.source "BoundablePair.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private boundable1:Lorg/locationtech/jts/index/strtree/Boundable;

.field private boundable2:Lorg/locationtech/jts/index/strtree/Boundable;

.field private distance:D

.field private itemDistance:Lorg/locationtech/jts/index/strtree/ItemDistance;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/ItemDistance;)V
    .locals 2
    .param p1, "boundable1"    # Lorg/locationtech/jts/index/strtree/Boundable;
    .param p2, "boundable2"    # Lorg/locationtech/jts/index/strtree/Boundable;
    .param p3, "itemDistance"    # Lorg/locationtech/jts/index/strtree/ItemDistance;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable1:Lorg/locationtech/jts/index/strtree/Boundable;

    .line 46
    iput-object p2, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable2:Lorg/locationtech/jts/index/strtree/Boundable;

    .line 47
    iput-object p3, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->itemDistance:Lorg/locationtech/jts/index/strtree/ItemDistance;

    .line 48
    invoke-direct {p0}, Lorg/locationtech/jts/index/strtree/BoundablePair;->distance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->distance:D

    .line 49
    return-void
.end method

.method private static area(Lorg/locationtech/jts/index/strtree/Boundable;)D
    .locals 2
    .param p0, "b"    # Lorg/locationtech/jts/index/strtree/Boundable;

    .prologue
    .line 155
    invoke-interface {p0}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getArea()D

    move-result-wide v0

    return-wide v0
.end method

.method private distance()D
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/BoundablePair;->isLeaves()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v2, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->itemDistance:Lorg/locationtech/jts/index/strtree/ItemDistance;

    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable1:Lorg/locationtech/jts/index/strtree/Boundable;

    check-cast v0, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    iget-object v1, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable2:Lorg/locationtech/jts/index/strtree/Boundable;

    check-cast v1, Lorg/locationtech/jts/index/strtree/ItemBoundable;

    invoke-interface {v2, v0, v1}, Lorg/locationtech/jts/index/strtree/ItemDistance;->distance(Lorg/locationtech/jts/index/strtree/ItemBoundable;Lorg/locationtech/jts/index/strtree/ItemBoundable;)D

    move-result-wide v0

    .line 81
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable1:Lorg/locationtech/jts/index/strtree/Boundable;

    invoke-interface {v0}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Envelope;

    iget-object v1, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable2:Lorg/locationtech/jts/index/strtree/Boundable;

    .line 82
    invoke-interface {v1}, Lorg/locationtech/jts/index/strtree/Boundable;->getBounds()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Envelope;

    .line 81
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->distance(Lorg/locationtech/jts/geom/Envelope;)D

    move-result-wide v0

    goto :goto_0
.end method

.method private expand(Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/util/PriorityQueue;D)V
    .locals 6
    .param p1, "bndComposite"    # Lorg/locationtech/jts/index/strtree/Boundable;
    .param p2, "bndOther"    # Lorg/locationtech/jts/index/strtree/Boundable;
    .param p3, "priQ"    # Lorg/locationtech/jts/util/PriorityQueue;
    .param p4, "minDistance"    # D

    .prologue
    .line 200
    check-cast p1, Lorg/locationtech/jts/index/strtree/AbstractNode;

    .end local p1    # "bndComposite":Lorg/locationtech/jts/index/strtree/Boundable;
    invoke-virtual {p1}, Lorg/locationtech/jts/index/strtree/AbstractNode;->getChildBoundables()Ljava/util/List;

    move-result-object v2

    .line 201
    .local v2, "children":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/index/strtree/Boundable;

    .line 203
    .local v1, "child":Lorg/locationtech/jts/index/strtree/Boundable;
    new-instance v0, Lorg/locationtech/jts/index/strtree/BoundablePair;

    iget-object v4, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->itemDistance:Lorg/locationtech/jts/index/strtree/ItemDistance;

    invoke-direct {v0, v1, p2, v4}, Lorg/locationtech/jts/index/strtree/BoundablePair;-><init>(Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/ItemDistance;)V

    .line 206
    .local v0, "bp":Lorg/locationtech/jts/index/strtree/BoundablePair;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/strtree/BoundablePair;->getDistance()D

    move-result-wide v4

    cmpg-double v4, v4, p4

    if-gez v4, :cond_0

    .line 207
    invoke-virtual {p3, v0}, Lorg/locationtech/jts/util/PriorityQueue;->add(Ljava/lang/Comparable;)V

    goto :goto_0

    .line 210
    .end local v0    # "bp":Lorg/locationtech/jts/index/strtree/BoundablePair;
    .end local v1    # "child":Lorg/locationtech/jts/index/strtree/Boundable;
    :cond_1
    return-void
.end method

.method public static isComposite(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "item"    # Ljava/lang/Object;

    .prologue
    .line 150
    instance-of v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;

    return v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 132
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/index/strtree/BoundablePair;

    .line 133
    .local v0, "nd":Lorg/locationtech/jts/index/strtree/BoundablePair;
    iget-wide v2, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->distance:D

    iget-wide v4, v0, Lorg/locationtech/jts/index/strtree/BoundablePair;->distance:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, -0x1

    .line 135
    :goto_0
    return v1

    .line 134
    :cond_0
    iget-wide v2, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->distance:D

    iget-wide v4, v0, Lorg/locationtech/jts/index/strtree/BoundablePair;->distance:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public expandToQueue(Lorg/locationtech/jts/util/PriorityQueue;D)V
    .locals 8
    .param p1, "priQ"    # Lorg/locationtech/jts/util/PriorityQueue;
    .param p2, "minDistance"    # D

    .prologue
    .line 167
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable1:Lorg/locationtech/jts/index/strtree/Boundable;

    invoke-static {v0}, Lorg/locationtech/jts/index/strtree/BoundablePair;->isComposite(Ljava/lang/Object;)Z

    move-result v6

    .line 168
    .local v6, "isComp1":Z
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable2:Lorg/locationtech/jts/index/strtree/Boundable;

    invoke-static {v0}, Lorg/locationtech/jts/index/strtree/BoundablePair;->isComposite(Ljava/lang/Object;)Z

    move-result v7

    .line 175
    .local v7, "isComp2":Z
    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    .line 176
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable1:Lorg/locationtech/jts/index/strtree/Boundable;

    invoke-static {v0}, Lorg/locationtech/jts/index/strtree/BoundablePair;->area(Lorg/locationtech/jts/index/strtree/Boundable;)D

    move-result-wide v0

    iget-object v2, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable2:Lorg/locationtech/jts/index/strtree/Boundable;

    invoke-static {v2}, Lorg/locationtech/jts/index/strtree/BoundablePair;->area(Lorg/locationtech/jts/index/strtree/Boundable;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 177
    iget-object v1, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable1:Lorg/locationtech/jts/index/strtree/Boundable;

    iget-object v2, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable2:Lorg/locationtech/jts/index/strtree/Boundable;

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/locationtech/jts/index/strtree/BoundablePair;->expand(Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/util/PriorityQueue;D)V

    .line 191
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable2:Lorg/locationtech/jts/index/strtree/Boundable;

    iget-object v2, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable1:Lorg/locationtech/jts/index/strtree/Boundable;

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/locationtech/jts/index/strtree/BoundablePair;->expand(Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/util/PriorityQueue;D)V

    goto :goto_0

    .line 185
    :cond_1
    if-eqz v6, :cond_2

    .line 186
    iget-object v1, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable1:Lorg/locationtech/jts/index/strtree/Boundable;

    iget-object v2, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable2:Lorg/locationtech/jts/index/strtree/Boundable;

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/locationtech/jts/index/strtree/BoundablePair;->expand(Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/util/PriorityQueue;D)V

    goto :goto_0

    .line 189
    :cond_2
    if-eqz v7, :cond_3

    .line 190
    iget-object v1, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable2:Lorg/locationtech/jts/index/strtree/Boundable;

    iget-object v2, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable1:Lorg/locationtech/jts/index/strtree/Boundable;

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/locationtech/jts/index/strtree/BoundablePair;->expand(Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/index/strtree/Boundable;Lorg/locationtech/jts/util/PriorityQueue;D)V

    goto :goto_0

    .line 194
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "neither boundable is composite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoundable(I)Lorg/locationtech/jts/index/strtree/Boundable;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 60
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable1:Lorg/locationtech/jts/index/strtree/Boundable;

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable2:Lorg/locationtech/jts/index/strtree/Boundable;

    goto :goto_0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->distance:D

    return-wide v0
.end method

.method public isLeaves()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable1:Lorg/locationtech/jts/index/strtree/Boundable;

    invoke-static {v0}, Lorg/locationtech/jts/index/strtree/BoundablePair;->isComposite(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/BoundablePair;->boundable2:Lorg/locationtech/jts/index/strtree/Boundable;

    invoke-static {v0}, Lorg/locationtech/jts/index/strtree/BoundablePair;->isComposite(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
