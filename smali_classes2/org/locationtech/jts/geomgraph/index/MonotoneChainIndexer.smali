.class public Lorg/locationtech/jts/geomgraph/index/MonotoneChainIndexer;
.super Ljava/lang/Object;
.source "MonotoneChainIndexer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private findChainEnd([Lorg/locationtech/jts/geom/Coordinate;I)I
    .locals 5
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "start"    # I

    .prologue
    .line 85
    aget-object v3, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-object v4, p1, v4

    invoke-static {v3, v4}, Lorg/locationtech/jts/geomgraph/Quadrant;->quadrant(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    .line 86
    .local v0, "chainQuad":I
    add-int/lit8 v1, p2, 0x1

    .line 87
    .local v1, "last":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 90
    add-int/lit8 v3, v1, -0x1

    aget-object v3, p1, v3

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Lorg/locationtech/jts/geomgraph/Quadrant;->quadrant(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    .line 91
    .local v2, "quad":I
    if-eq v2, v0, :cond_1

    .line 94
    .end local v2    # "quad":I
    :cond_0
    add-int/lit8 v3, v1, -0x1

    return v3

    .line 92
    .restart local v2    # "quad":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 93
    goto :goto_0
.end method

.method public static toIntArray(Ljava/util/List;)[I
    .locals 3
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 53
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    .line 54
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 55
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getChainStartIndices([Lorg/locationtech/jts/geom/Coordinate;)[I
    .locals 5
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "start":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v3, "startIndexList":Ljava/util/List;
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    invoke-direct {p0, p1, v1}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainIndexer;->findChainEnd([Lorg/locationtech/jts/geom/Coordinate;I)I

    move-result v0

    .line 71
    .local v0, "last":I
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    move v1, v0

    .line 73
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_0

    .line 75
    invoke-static {v3}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainIndexer;->toIntArray(Ljava/util/List;)[I

    move-result-object v2

    .line 76
    .local v2, "startIndex":[I
    return-object v2
.end method
