.class public Lorg/locationtech/jts/noding/SimpleSegmentSetMutualIntersector;
.super Ljava/lang/Object;
.source "SimpleSegmentSetMutualIntersector.java"

# interfaces
.implements Lorg/locationtech/jts/noding/SegmentSetMutualIntersector;


# instance fields
.field private final baseSegStrings:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .param p1, "segStrings"    # Ljava/util/Collection;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/locationtech/jts/noding/SimpleSegmentSetMutualIntersector;->baseSegStrings:Ljava/util/Collection;

    .line 39
    return-void
.end method

.method private intersect(Lorg/locationtech/jts/noding/SegmentString;Lorg/locationtech/jts/noding/SegmentString;Lorg/locationtech/jts/noding/SegmentIntersector;)V
    .locals 5
    .param p1, "ss0"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p2, "ss1"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p3, "segInt"    # Lorg/locationtech/jts/noding/SegmentIntersector;

    .prologue
    .line 71
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 72
    .local v2, "pts0":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p2}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 73
    .local v3, "pts1":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .local v0, "i0":I
    :goto_0
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 74
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 75
    invoke-interface {p3, p1, v0, p2, v1}, Lorg/locationtech/jts/noding/SegmentIntersector;->processIntersections(Lorg/locationtech/jts/noding/SegmentString;ILorg/locationtech/jts/noding/SegmentString;I)V

    .line 76
    invoke-interface {p3}, Lorg/locationtech/jts/noding/SegmentIntersector;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    .end local v1    # "i1":I
    :cond_0
    return-void

    .line 74
    .restart local v1    # "i1":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public process(Ljava/util/Collection;Lorg/locationtech/jts/noding/SegmentIntersector;)V
    .locals 5
    .param p1, "segStrings"    # Ljava/util/Collection;
    .param p2, "segInt"    # Lorg/locationtech/jts/noding/SegmentIntersector;

    .prologue
    .line 50
    iget-object v4, p0, Lorg/locationtech/jts/noding/SimpleSegmentSetMutualIntersector;->baseSegStrings:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/noding/SegmentString;

    .line 52
    .local v0, "baseSS":Lorg/locationtech/jts/noding/SegmentString;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "j":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/noding/SegmentString;

    .line 54
    .local v3, "ss":Lorg/locationtech/jts/noding/SegmentString;
    invoke-direct {p0, v0, v3, p2}, Lorg/locationtech/jts/noding/SimpleSegmentSetMutualIntersector;->intersect(Lorg/locationtech/jts/noding/SegmentString;Lorg/locationtech/jts/noding/SegmentString;Lorg/locationtech/jts/noding/SegmentIntersector;)V

    .line 55
    invoke-interface {p2}, Lorg/locationtech/jts/noding/SegmentIntersector;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    .end local v0    # "baseSS":Lorg/locationtech/jts/noding/SegmentString;
    .end local v2    # "j":Ljava/util/Iterator;
    .end local v3    # "ss":Lorg/locationtech/jts/noding/SegmentString;
    :cond_2
    return-void
.end method
