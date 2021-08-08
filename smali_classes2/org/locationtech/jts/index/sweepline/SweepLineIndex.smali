.class public Lorg/locationtech/jts/index/sweepline/SweepLineIndex;
.super Ljava/lang/Object;
.source "SweepLineIndex.java"


# instance fields
.field events:Ljava/util/List;

.field private indexBuilt:Z

.field private nOverlaps:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->events:Ljava/util/List;

    .line 34
    return-void
.end method

.method private buildIndex()V
    .locals 3

    .prologue
    .line 50
    iget-boolean v2, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->indexBuilt:Z

    if-eqz v2, :cond_0

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->events:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 54
    iget-object v2, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;

    .line 55
    .local v0, "ev":Lorg/locationtech/jts/index/sweepline/SweepLineEvent;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->isDelete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v0}, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->getInsertEvent()Lorg/locationtech/jts/index/sweepline/SweepLineEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->setDeleteEventIndex(I)V

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "ev":Lorg/locationtech/jts/index/sweepline/SweepLineEvent;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->indexBuilt:Z

    goto :goto_0
.end method

.method private processOverlaps(IILorg/locationtech/jts/index/sweepline/SweepLineInterval;Lorg/locationtech/jts/index/sweepline/SweepLineOverlapAction;)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "s0"    # Lorg/locationtech/jts/index/sweepline/SweepLineInterval;
    .param p4, "action"    # Lorg/locationtech/jts/index/sweepline/SweepLineOverlapAction;

    .prologue
    .line 83
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 84
    iget-object v3, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->events:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;

    .line 85
    .local v0, "ev":Lorg/locationtech/jts/index/sweepline/SweepLineEvent;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->isInsert()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v0}, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->getInterval()Lorg/locationtech/jts/index/sweepline/SweepLineInterval;

    move-result-object v2

    .line 87
    .local v2, "s1":Lorg/locationtech/jts/index/sweepline/SweepLineInterval;
    invoke-interface {p4, p3, v2}, Lorg/locationtech/jts/index/sweepline/SweepLineOverlapAction;->overlap(Lorg/locationtech/jts/index/sweepline/SweepLineInterval;Lorg/locationtech/jts/index/sweepline/SweepLineInterval;)V

    .line 88
    iget v3, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->nOverlaps:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->nOverlaps:I

    .line 83
    .end local v2    # "s1":Lorg/locationtech/jts/index/sweepline/SweepLineInterval;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "ev":Lorg/locationtech/jts/index/sweepline/SweepLineEvent;
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/index/sweepline/SweepLineInterval;)V
    .locals 6
    .param p1, "sweepInt"    # Lorg/locationtech/jts/index/sweepline/SweepLineInterval;

    .prologue
    .line 38
    new-instance v0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;

    invoke-virtual {p1}, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;->getMin()D

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1, p1}, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;-><init>(DLorg/locationtech/jts/index/sweepline/SweepLineEvent;Lorg/locationtech/jts/index/sweepline/SweepLineInterval;)V

    .line 39
    .local v0, "insertEvent":Lorg/locationtech/jts/index/sweepline/SweepLineEvent;
    iget-object v1, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->events:Ljava/util/List;

    new-instance v2, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;

    invoke-virtual {p1}, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;->getMax()D

    move-result-wide v4

    invoke-direct {v2, v4, v5, v0, p1}, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;-><init>(DLorg/locationtech/jts/index/sweepline/SweepLineEvent;Lorg/locationtech/jts/index/sweepline/SweepLineInterval;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public computeOverlaps(Lorg/locationtech/jts/index/sweepline/SweepLineOverlapAction;)V
    .locals 4
    .param p1, "action"    # Lorg/locationtech/jts/index/sweepline/SweepLineOverlapAction;

    .prologue
    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->nOverlaps:I

    .line 65
    invoke-direct {p0}, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->buildIndex()V

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 69
    iget-object v2, p0, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;

    .line 70
    .local v0, "ev":Lorg/locationtech/jts/index/sweepline/SweepLineEvent;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->isInsert()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v0}, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->getDeleteEventIndex()I

    move-result v2

    invoke-virtual {v0}, Lorg/locationtech/jts/index/sweepline/SweepLineEvent;->getInterval()Lorg/locationtech/jts/index/sweepline/SweepLineInterval;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, p1}, Lorg/locationtech/jts/index/sweepline/SweepLineIndex;->processOverlaps(IILorg/locationtech/jts/index/sweepline/SweepLineInterval;Lorg/locationtech/jts/index/sweepline/SweepLineOverlapAction;)V

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "ev":Lorg/locationtech/jts/index/sweepline/SweepLineEvent;
    :cond_1
    return-void
.end method
