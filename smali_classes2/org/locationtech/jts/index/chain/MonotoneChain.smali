.class public Lorg/locationtech/jts/index/chain/MonotoneChain;
.super Ljava/lang/Object;
.source "MonotoneChain.java"


# instance fields
.field private context:Ljava/lang/Object;

.field private end:I

.field private env:Lorg/locationtech/jts/geom/Envelope;

.field private id:I

.field private pts:[Lorg/locationtech/jts/geom/Coordinate;

.field private start:I


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;IILjava/lang/Object;)V
    .locals 1
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "context"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->env:Lorg/locationtech/jts/geom/Envelope;

    .line 68
    iput-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->context:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 74
    iput p2, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->start:I

    .line 75
    iput p3, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->end:I

    .line 76
    iput-object p4, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->context:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method private computeOverlaps(IILorg/locationtech/jts/index/chain/MonotoneChain;IILorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;)V
    .locals 22
    .param p1, "start0"    # I
    .param p2, "end0"    # I
    .param p3, "mc"    # Lorg/locationtech/jts/index/chain/MonotoneChain;
    .param p4, "start1"    # I
    .param p5, "end1"    # I
    .param p6, "mco"    # Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;

    .prologue
    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/index/chain/MonotoneChain;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v18, v5, p1

    .line 201
    .local v18, "p00":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/index/chain/MonotoneChain;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v19, v5, p2

    .line 202
    .local v19, "p01":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p3

    iget-object v5, v0, Lorg/locationtech/jts/index/chain/MonotoneChain;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v20, v5, p4

    .line 203
    .local v20, "p10":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p3

    iget-object v5, v0, Lorg/locationtech/jts/index/chain/MonotoneChain;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v21, v5, p5

    .line 206
    .local v21, "p11":Lorg/locationtech/jts/geom/Coordinate;
    sub-int v5, p2, p1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    sub-int v5, p5, p4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 207
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->overlap(Lorg/locationtech/jts/index/chain/MonotoneChain;ILorg/locationtech/jts/index/chain/MonotoneChain;I)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    move-object/from16 v0, p6

    iget-object v5, v0, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->tempEnv1:Lorg/locationtech/jts/geom/Envelope;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/locationtech/jts/geom/Envelope;->init(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 212
    move-object/from16 v0, p6

    iget-object v5, v0, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->tempEnv2:Lorg/locationtech/jts/geom/Envelope;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lorg/locationtech/jts/geom/Envelope;->init(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 213
    move-object/from16 v0, p6

    iget-object v5, v0, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->tempEnv1:Lorg/locationtech/jts/geom/Envelope;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->tempEnv2:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v5, v6}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 216
    add-int v5, p1, p2

    div-int/lit8 v7, v5, 0x2

    .line 217
    .local v7, "mid0":I
    add-int v5, p4, p5

    div-int/lit8 v10, v5, 0x2

    .line 221
    .local v10, "mid1":I
    move/from16 v0, p1

    if-ge v0, v7, :cond_3

    .line 222
    move/from16 v0, p4

    if-ge v0, v10, :cond_2

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lorg/locationtech/jts/index/chain/MonotoneChain;->computeOverlaps(IILorg/locationtech/jts/index/chain/MonotoneChain;IILorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;)V

    .line 223
    :cond_2
    move/from16 v0, p5

    if-ge v10, v0, :cond_3

    move-object/from16 v11, p0

    move/from16 v12, p1

    move v13, v7

    move-object/from16 v14, p3

    move v15, v10

    move/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v11 .. v17}, Lorg/locationtech/jts/index/chain/MonotoneChain;->computeOverlaps(IILorg/locationtech/jts/index/chain/MonotoneChain;IILorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;)V

    .line 225
    :cond_3
    move/from16 v0, p2

    if-ge v7, v0, :cond_0

    .line 226
    move/from16 v0, p4

    if-ge v0, v10, :cond_4

    move-object/from16 v11, p0

    move v12, v7

    move/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, v10

    move-object/from16 v17, p6

    invoke-direct/range {v11 .. v17}, Lorg/locationtech/jts/index/chain/MonotoneChain;->computeOverlaps(IILorg/locationtech/jts/index/chain/MonotoneChain;IILorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;)V

    .line 227
    :cond_4
    move/from16 v0, p5

    if-ge v10, v0, :cond_0

    move-object/from16 v6, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v12}, Lorg/locationtech/jts/index/chain/MonotoneChain;->computeOverlaps(IILorg/locationtech/jts/index/chain/MonotoneChain;IILorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;)V

    goto :goto_0
.end method

.method private computeSelect(Lorg/locationtech/jts/geom/Envelope;IILorg/locationtech/jts/index/chain/MonotoneChainSelectAction;)V
    .locals 5
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "start0"    # I
    .param p3, "end0"    # I
    .param p4, "mcs"    # Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;

    .prologue
    .line 147
    iget-object v3, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v3, p2

    .line 148
    .local v1, "p0":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v3, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v3, p3

    .line 149
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v3, p4, Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;->tempEnv1:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v3, v1, v2}, Lorg/locationtech/jts/geom/Envelope;->init(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 153
    sub-int v3, p3, p2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 155
    invoke-virtual {p4, p0, p2}, Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;->select(Lorg/locationtech/jts/index/chain/MonotoneChain;I)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v3, p4, Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;->tempEnv1:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {p1, v3}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    add-int v3, p2, p3

    div-int/lit8 v0, v3, 0x2

    .line 167
    .local v0, "mid":I
    if-ge p2, v0, :cond_2

    .line 168
    invoke-direct {p0, p1, p2, v0, p4}, Lorg/locationtech/jts/index/chain/MonotoneChain;->computeSelect(Lorg/locationtech/jts/geom/Envelope;IILorg/locationtech/jts/index/chain/MonotoneChainSelectAction;)V

    .line 170
    :cond_2
    if-ge v0, p3, :cond_0

    .line 171
    invoke-direct {p0, p1, v0, p3, p4}, Lorg/locationtech/jts/index/chain/MonotoneChain;->computeSelect(Lorg/locationtech/jts/geom/Envelope;IILorg/locationtech/jts/index/chain/MonotoneChainSelectAction;)V

    goto :goto_0
.end method


# virtual methods
.method public computeOverlaps(Lorg/locationtech/jts/index/chain/MonotoneChain;Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;)V
    .locals 7
    .param p1, "mc"    # Lorg/locationtech/jts/index/chain/MonotoneChain;
    .param p2, "mco"    # Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;

    .prologue
    .line 191
    iget v1, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->start:I

    iget v2, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->end:I

    iget v4, p1, Lorg/locationtech/jts/index/chain/MonotoneChain;->start:I

    iget v5, p1, Lorg/locationtech/jts/index/chain/MonotoneChain;->end:I

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/locationtech/jts/index/chain/MonotoneChain;->computeOverlaps(IILorg/locationtech/jts/index/chain/MonotoneChain;IILorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;)V

    .line 192
    return-void
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 6

    .prologue
    .line 114
    iget v4, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->end:I

    iget v5, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->start:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Lorg/locationtech/jts/geom/Coordinate;

    .line 115
    .local v0, "coord":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .line 116
    .local v2, "index":I
    iget v1, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->start:I

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->end:I

    if-gt v1, v4, :cond_0

    .line 117
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    iget-object v4, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, v4, v1

    aput-object v4, v0, v2

    .line 116
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 119
    :cond_0
    return-object v0
.end method

.method public getEndIndex()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->end:I

    return v0
.end method

.method public getEnvelope()Lorg/locationtech/jts/geom/Envelope;
    .locals 4

    .prologue
    .line 86
    iget-object v2, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->env:Lorg/locationtech/jts/geom/Envelope;

    if-nez v2, :cond_0

    .line 87
    iget-object v2, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget v3, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->start:I

    aget-object v0, v2, v3

    .line 88
    .local v0, "p0":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget v3, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->end:I

    aget-object v1, v2, v3

    .line 89
    .local v1, "p1":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v2, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v2, v0, v1}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v2, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->env:Lorg/locationtech/jts/geom/Envelope;

    .line 91
    .end local v0    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v1    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->env:Lorg/locationtech/jts/geom/Envelope;

    return-object v2
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->id:I

    return v0
.end method

.method public getLineSegment(ILorg/locationtech/jts/geom/LineSegment;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "ls"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    iput-object v0, p2, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 106
    iget-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p2, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 107
    return-void
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->start:I

    return v0
.end method

.method public select(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;)V
    .locals 2
    .param p1, "searchEnv"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "mcs"    # Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;

    .prologue
    .line 139
    iget v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->start:I

    iget v1, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->end:I

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/locationtech/jts/index/chain/MonotoneChain;->computeSelect(Lorg/locationtech/jts/geom/Envelope;IILorg/locationtech/jts/index/chain/MonotoneChainSelectAction;)V

    .line 140
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 79
    iput p1, p0, Lorg/locationtech/jts/index/chain/MonotoneChain;->id:I

    return-void
.end method
