.class Lorg/locationtech/jts/noding/NodeVertexIterator;
.super Ljava/lang/Object;
.source "SegmentNodeList.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private currNode:Lorg/locationtech/jts/noding/SegmentNode;

.field private currSegIndex:I

.field private edge:Lorg/locationtech/jts/noding/NodedSegmentString;

.field private nextNode:Lorg/locationtech/jts/noding/SegmentNode;

.field private nodeIt:Ljava/util/Iterator;

.field private nodeList:Lorg/locationtech/jts/noding/SegmentNodeList;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/noding/SegmentNodeList;)V
    .locals 1
    .param p1, "nodeList"    # Lorg/locationtech/jts/noding/SegmentNodeList;

    .prologue
    const/4 v0, 0x0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currNode:Lorg/locationtech/jts/noding/SegmentNode;

    .line 313
    iput-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nextNode:Lorg/locationtech/jts/noding/SegmentNode;

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currSegIndex:I

    .line 318
    iput-object p1, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nodeList:Lorg/locationtech/jts/noding/SegmentNodeList;

    .line 319
    invoke-virtual {p1}, Lorg/locationtech/jts/noding/SegmentNodeList;->getEdge()Lorg/locationtech/jts/noding/NodedSegmentString;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    .line 320
    invoke-virtual {p1}, Lorg/locationtech/jts/noding/SegmentNodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nodeIt:Ljava/util/Iterator;

    .line 321
    invoke-direct {p0}, Lorg/locationtech/jts/noding/NodeVertexIterator;->readNextNode()V

    .line 322
    return-void
.end method

.method private readNextNode()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nodeIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nodeIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/noding/SegmentNode;

    iput-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nextNode:Lorg/locationtech/jts/noding/SegmentNode;

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nextNode:Lorg/locationtech/jts/noding/SegmentNode;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nextNode:Lorg/locationtech/jts/noding/SegmentNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 331
    iget-object v1, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currNode:Lorg/locationtech/jts/noding/SegmentNode;

    if-nez v1, :cond_1

    .line 332
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nextNode:Lorg/locationtech/jts/noding/SegmentNode;

    iput-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currNode:Lorg/locationtech/jts/noding/SegmentNode;

    .line 333
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currNode:Lorg/locationtech/jts/noding/SegmentNode;

    iget v0, v0, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    iput v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currSegIndex:I

    .line 334
    invoke-direct {p0}, Lorg/locationtech/jts/noding/NodeVertexIterator;->readNextNode()V

    .line 335
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currNode:Lorg/locationtech/jts/noding/SegmentNode;

    .line 350
    :cond_0
    :goto_0
    return-object v0

    .line 338
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nextNode:Lorg/locationtech/jts/noding/SegmentNode;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nextNode:Lorg/locationtech/jts/noding/SegmentNode;

    iget v1, v1, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    iget-object v2, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currNode:Lorg/locationtech/jts/noding/SegmentNode;

    iget v2, v2, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    if-ne v1, v2, :cond_2

    .line 341
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nextNode:Lorg/locationtech/jts/noding/SegmentNode;

    iput-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currNode:Lorg/locationtech/jts/noding/SegmentNode;

    .line 342
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currNode:Lorg/locationtech/jts/noding/SegmentNode;

    iget v0, v0, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    iput v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currSegIndex:I

    .line 343
    invoke-direct {p0}, Lorg/locationtech/jts/noding/NodeVertexIterator;->readNextNode()V

    .line 344
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currNode:Lorg/locationtech/jts/noding/SegmentNode;

    goto :goto_0

    .line 347
    :cond_2
    iget-object v1, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->nextNode:Lorg/locationtech/jts/noding/SegmentNode;

    iget v1, v1, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    iget-object v2, p0, Lorg/locationtech/jts/noding/NodeVertexIterator;->currNode:Lorg/locationtech/jts/noding/SegmentNode;

    iget v2, v2, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    if-le v1, v2, :cond_0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
