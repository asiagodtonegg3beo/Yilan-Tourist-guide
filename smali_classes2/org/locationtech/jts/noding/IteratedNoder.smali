.class public Lorg/locationtech/jts/noding/IteratedNoder;
.super Ljava/lang/Object;
.source "IteratedNoder.java"

# interfaces
.implements Lorg/locationtech/jts/noding/Noder;


# static fields
.field public static final MAX_ITER:I = 0x5


# instance fields
.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field private maxIter:I

.field private nodedSegStrings:Ljava/util/Collection;

.field private pm:Lorg/locationtech/jts/geom/PrecisionModel;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 1
    .param p1, "pm"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Lorg/locationtech/jts/noding/IteratedNoder;->maxIter:I

    .line 47
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/IteratedNoder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 48
    iput-object p1, p0, Lorg/locationtech/jts/noding/IteratedNoder;->pm:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 49
    iget-object v0, p0, Lorg/locationtech/jts/noding/IteratedNoder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/algorithm/LineIntersector;->setPrecisionModel(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 50
    return-void
.end method

.method private node(Ljava/util/Collection;[I)V
    .locals 4
    .param p1, "segStrings"    # Ljava/util/Collection;
    .param p2, "numInteriorIntersections"    # [I

    .prologue
    .line 113
    new-instance v1, Lorg/locationtech/jts/noding/IntersectionAdder;

    iget-object v2, p0, Lorg/locationtech/jts/noding/IteratedNoder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-direct {v1, v2}, Lorg/locationtech/jts/noding/IntersectionAdder;-><init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V

    .line 114
    .local v1, "si":Lorg/locationtech/jts/noding/IntersectionAdder;
    new-instance v0, Lorg/locationtech/jts/noding/MCIndexNoder;

    invoke-direct {v0}, Lorg/locationtech/jts/noding/MCIndexNoder;-><init>()V

    .line 115
    .local v0, "noder":Lorg/locationtech/jts/noding/MCIndexNoder;
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/noding/MCIndexNoder;->setSegmentIntersector(Lorg/locationtech/jts/noding/SegmentIntersector;)V

    .line 116
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/noding/MCIndexNoder;->computeNodes(Ljava/util/Collection;)V

    .line 117
    invoke-virtual {v0}, Lorg/locationtech/jts/noding/MCIndexNoder;->getNodedSubstrings()Ljava/util/Collection;

    move-result-object v2

    iput-object v2, p0, Lorg/locationtech/jts/noding/IteratedNoder;->nodedSegStrings:Ljava/util/Collection;

    .line 118
    const/4 v2, 0x0

    iget v3, v1, Lorg/locationtech/jts/noding/IntersectionAdder;->numInteriorIntersections:I

    aput v3, p2, v2

    .line 120
    return-void
.end method


# virtual methods
.method public computeNodes(Ljava/util/Collection;)V
    .locals 7
    .param p1, "segStrings"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/locationtech/jts/geom/TopologyException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v4, 0x1

    new-array v3, v4, [I

    .line 81
    .local v3, "numInteriorIntersections":[I
    iput-object p1, p0, Lorg/locationtech/jts/noding/IteratedNoder;->nodedSegStrings:Ljava/util/Collection;

    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, "nodingIterationCount":I
    const/4 v0, -0x1

    .line 85
    .local v0, "lastNodesCreated":I
    :cond_0
    iget-object v4, p0, Lorg/locationtech/jts/noding/IteratedNoder;->nodedSegStrings:Ljava/util/Collection;

    invoke-direct {p0, v4, v3}, Lorg/locationtech/jts/noding/IteratedNoder;->node(Ljava/util/Collection;[I)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    const/4 v4, 0x0

    aget v1, v3, v4

    .line 94
    .local v1, "nodesCreated":I
    if-lez v0, :cond_1

    if-lt v1, v0, :cond_1

    iget v4, p0, Lorg/locationtech/jts/noding/IteratedNoder;->maxIter:I

    if-le v2, v4, :cond_1

    .line 97
    new-instance v4, Lorg/locationtech/jts/geom/TopologyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Iterated noding failed to converge after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iterations"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/locationtech/jts/geom/TopologyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_1
    move v0, v1

    .line 102
    if-gtz v0, :cond_0

    .line 104
    return-void
.end method

.method public getNodedSubstrings()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/locationtech/jts/noding/IteratedNoder;->nodedSegStrings:Ljava/util/Collection;

    return-object v0
.end method

.method public setMaximumIterations(I)V
    .locals 0
    .param p1, "maxIter"    # I

    .prologue
    .line 63
    iput p1, p0, Lorg/locationtech/jts/noding/IteratedNoder;->maxIter:I

    .line 64
    return-void
.end method
