.class Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;
.super Ljava/lang/Object;
.source "TaggedLinesSimplifier.java"


# instance fields
.field private distanceTolerance:D

.field private inputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

.field private outputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/locationtech/jts/simplify/LineSegmentIndex;

    invoke-direct {v0}, Lorg/locationtech/jts/simplify/LineSegmentIndex;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;->inputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    .line 27
    new-instance v0, Lorg/locationtech/jts/simplify/LineSegmentIndex;

    invoke-direct {v0}, Lorg/locationtech/jts/simplify/LineSegmentIndex;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;->outputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;->distanceTolerance:D

    .line 33
    return-void
.end method


# virtual methods
.method public setDistanceTolerance(D)V
    .locals 1
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 43
    iput-wide p1, p0, Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;->distanceTolerance:D

    .line 44
    return-void
.end method

.method public simplify(Ljava/util/Collection;)V
    .locals 4
    .param p1, "taggedLines"    # Ljava/util/Collection;

    .prologue
    .line 52
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    iget-object v3, p0, Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;->inputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/simplify/TaggedLineString;

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/simplify/LineSegmentIndex;->add(Lorg/locationtech/jts/simplify/TaggedLineString;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    new-instance v1, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;

    iget-object v2, p0, Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;->inputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    iget-object v3, p0, Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;->outputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    invoke-direct {v1, v2, v3}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;-><init>(Lorg/locationtech/jts/simplify/LineSegmentIndex;Lorg/locationtech/jts/simplify/LineSegmentIndex;)V

    .line 58
    .local v1, "tlss":Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;
    iget-wide v2, p0, Lorg/locationtech/jts/simplify/TaggedLinesSimplifier;->distanceTolerance:D

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->setDistanceTolerance(D)V

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/simplify/TaggedLineString;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->simplify(Lorg/locationtech/jts/simplify/TaggedLineString;)V

    goto :goto_1

    .line 61
    .end local v1    # "tlss":Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;
    :cond_1
    return-void
.end method
