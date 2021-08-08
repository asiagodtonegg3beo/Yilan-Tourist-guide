.class public Lorg/locationtech/jts/noding/SimpleNoder;
.super Lorg/locationtech/jts/noding/SinglePassNoder;
.source "SimpleNoder.java"


# instance fields
.field private nodedSegStrings:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/locationtech/jts/noding/SinglePassNoder;-><init>()V

    .line 35
    return-void
.end method

.method private computeIntersects(Lorg/locationtech/jts/noding/SegmentString;Lorg/locationtech/jts/noding/SegmentString;)V
    .locals 5
    .param p1, "e0"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p2, "e1"    # Lorg/locationtech/jts/noding/SegmentString;

    .prologue
    .line 56
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 57
    .local v2, "pts0":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p2}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 58
    .local v3, "pts1":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .local v0, "i0":I
    :goto_0
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 59
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 60
    iget-object v4, p0, Lorg/locationtech/jts/noding/SimpleNoder;->segInt:Lorg/locationtech/jts/noding/SegmentIntersector;

    invoke-interface {v4, p1, v0, p2, v1}, Lorg/locationtech/jts/noding/SegmentIntersector;->processIntersections(Lorg/locationtech/jts/noding/SegmentString;ILorg/locationtech/jts/noding/SegmentString;I)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i1":I
    :cond_1
    return-void
.end method


# virtual methods
.method public computeNodes(Ljava/util/Collection;)V
    .locals 5
    .param p1, "inputSegStrings"    # Ljava/util/Collection;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/locationtech/jts/noding/SimpleNoder;->nodedSegStrings:Ljava/util/Collection;

    .line 45
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i0":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/noding/SegmentString;

    .line 47
    .local v0, "edge0":Lorg/locationtech/jts/noding/SegmentString;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i1":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/noding/SegmentString;

    .line 49
    .local v1, "edge1":Lorg/locationtech/jts/noding/SegmentString;
    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/noding/SimpleNoder;->computeIntersects(Lorg/locationtech/jts/noding/SegmentString;Lorg/locationtech/jts/noding/SegmentString;)V

    goto :goto_0

    .line 52
    .end local v0    # "edge0":Lorg/locationtech/jts/noding/SegmentString;
    .end local v1    # "edge1":Lorg/locationtech/jts/noding/SegmentString;
    .end local v3    # "i1":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public getNodedSubstrings()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/locationtech/jts/noding/SimpleNoder;->nodedSegStrings:Ljava/util/Collection;

    invoke-static {v0}, Lorg/locationtech/jts/noding/NodedSegmentString;->getNodedSubstrings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
