.class public Lorg/locationtech/jts/algorithm/MCPointInRing;
.super Ljava/lang/Object;
.source "MCPointInRing.java"

# interfaces
.implements Lorg/locationtech/jts/algorithm/PointInRing;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/algorithm/MCPointInRing$MCSelecter;
    }
.end annotation


# instance fields
.field private crossings:I

.field private interval:Lorg/locationtech/jts/index/bintree/Interval;

.field private ring:Lorg/locationtech/jts/geom/LinearRing;

.field private tree:Lorg/locationtech/jts/index/bintree/Bintree;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/LinearRing;)V
    .locals 1
    .param p1, "ring"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->crossings:I

    .line 84
    new-instance v0, Lorg/locationtech/jts/index/bintree/Interval;

    invoke-direct {v0}, Lorg/locationtech/jts/index/bintree/Interval;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    .line 63
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->ring:Lorg/locationtech/jts/geom/LinearRing;

    .line 64
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MCPointInRing;->buildIndex()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/algorithm/MCPointInRing;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 0
    .param p0, "x0"    # Lorg/locationtech/jts/algorithm/MCPointInRing;
    .param p1, "x1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "x2"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/algorithm/MCPointInRing;->testLineSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineSegment;)V

    return-void
.end method

.method private buildIndex()V
    .locals 8

    .prologue
    .line 70
    new-instance v5, Lorg/locationtech/jts/index/bintree/Bintree;

    invoke-direct {v5}, Lorg/locationtech/jts/index/bintree/Bintree;-><init>()V

    iput-object v5, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->tree:Lorg/locationtech/jts/index/bintree/Bintree;

    .line 72
    iget-object v5, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->ring:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    invoke-static {v5}, Lorg/locationtech/jts/geom/CoordinateArrays;->removeRepeatedPoints([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 73
    .local v4, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v4}, Lorg/locationtech/jts/index/chain/MonotoneChainBuilder;->getChains([Lorg/locationtech/jts/geom/Coordinate;)Ljava/util/List;

    move-result-object v3

    .line 75
    .local v3, "mcList":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 76
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/index/chain/MonotoneChain;

    .line 77
    .local v1, "mc":Lorg/locationtech/jts/index/chain/MonotoneChain;
    invoke-virtual {v1}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    .line 78
    .local v2, "mcEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-object v5, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v6

    iput-wide v6, v5, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    .line 79
    iget-object v5, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v6

    iput-wide v6, v5, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    .line 80
    iget-object v5, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->tree:Lorg/locationtech/jts/index/bintree/Bintree;

    iget-object v6, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    invoke-virtual {v5, v6, v1}, Lorg/locationtech/jts/index/bintree/Bintree;->insert(Lorg/locationtech/jts/index/bintree/Interval;Ljava/lang/Object;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "mc":Lorg/locationtech/jts/index/chain/MonotoneChain;
    .end local v2    # "mcEnv":Lorg/locationtech/jts/geom/Envelope;
    :cond_0
    return-void
.end method

.method private testLineSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 18
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "seg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 129
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 130
    .local v10, "p1":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p2

    iget-object v11, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 131
    .local v11, "p2":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v14, v10, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    sub-double v2, v14, v16

    .line 132
    .local v2, "x1":D
    iget-wide v14, v10, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v4, v14, v16

    .line 133
    .local v4, "y1":D
    iget-wide v14, v11, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    sub-double v6, v14, v16

    .line 134
    .local v6, "x2":D
    iget-wide v14, v11, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v8, v14, v16

    .line 136
    .local v8, "y2":D
    const-wide/16 v14, 0x0

    cmpl-double v14, v4, v14

    if-lez v14, :cond_0

    const-wide/16 v14, 0x0

    cmpg-double v14, v8, v14

    if-lez v14, :cond_1

    :cond_0
    const-wide/16 v14, 0x0

    cmpl-double v14, v8, v14

    if-lez v14, :cond_2

    const-wide/16 v14, 0x0

    cmpg-double v14, v4, v14

    if-gtz v14, :cond_2

    .line 141
    :cond_1
    invoke-static/range {v2 .. v9}, Lorg/locationtech/jts/algorithm/RobustDeterminant;->signOfDet2x2(DDDD)I

    move-result v14

    int-to-double v14, v14

    sub-double v16, v8, v4

    div-double v12, v14, v16

    .line 146
    .local v12, "xInt":D
    const-wide/16 v14, 0x0

    cmpg-double v14, v14, v12

    if-gez v14, :cond_2

    .line 147
    move-object/from16 v0, p0

    iget v14, v0, Lorg/locationtech/jts/algorithm/MCPointInRing;->crossings:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/locationtech/jts/algorithm/MCPointInRing;->crossings:I

    .line 150
    .end local v12    # "xInt":D
    :cond_2
    return-void
.end method

.method private testMonotoneChain(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/algorithm/MCPointInRing$MCSelecter;Lorg/locationtech/jts/index/chain/MonotoneChain;)V
    .locals 0
    .param p1, "rayEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "mcSelecter"    # Lorg/locationtech/jts/algorithm/MCPointInRing$MCSelecter;
    .param p3, "mc"    # Lorg/locationtech/jts/index/chain/MonotoneChain;

    .prologue
    .line 116
    invoke-virtual {p3, p1, p2}, Lorg/locationtech/jts/index/chain/MonotoneChain;->select(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;)V

    .line 117
    return-void
.end method


# virtual methods
.method public isInside(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 13
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 88
    const/4 v2, 0x0

    iput v2, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->crossings:I

    .line 91
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;-><init>(DDDD)V

    .line 93
    .local v1, "rayEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v4, v2, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    .line 94
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v4, v2, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    .line 95
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->tree:Lorg/locationtech/jts/index/bintree/Bintree;

    iget-object v3, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/index/bintree/Bintree;->query(Lorg/locationtech/jts/index/bintree/Interval;)Ljava/util/List;

    move-result-object v12

    .line 98
    .local v12, "segs":Ljava/util/List;
    new-instance v11, Lorg/locationtech/jts/algorithm/MCPointInRing$MCSelecter;

    invoke-direct {v11, p0, p1}, Lorg/locationtech/jts/algorithm/MCPointInRing$MCSelecter;-><init>(Lorg/locationtech/jts/algorithm/MCPointInRing;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 99
    .local v11, "mcSelecter":Lorg/locationtech/jts/algorithm/MCPointInRing$MCSelecter;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/locationtech/jts/index/chain/MonotoneChain;

    .line 101
    .local v10, "mc":Lorg/locationtech/jts/index/chain/MonotoneChain;
    invoke-direct {p0, v1, v11, v10}, Lorg/locationtech/jts/algorithm/MCPointInRing;->testMonotoneChain(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/algorithm/MCPointInRing$MCSelecter;Lorg/locationtech/jts/index/chain/MonotoneChain;)V

    goto :goto_0

    .line 107
    .end local v10    # "mc":Lorg/locationtech/jts/index/chain/MonotoneChain;
    :cond_0
    iget v2, p0, Lorg/locationtech/jts/algorithm/MCPointInRing;->crossings:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 108
    const/4 v2, 0x1

    .line 110
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
