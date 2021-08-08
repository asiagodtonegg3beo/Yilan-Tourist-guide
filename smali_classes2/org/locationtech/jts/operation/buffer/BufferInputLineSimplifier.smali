.class public Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;
.super Ljava/lang/Object;
.source "BufferInputLineSimplifier.java"


# static fields
.field private static final DELETE:I = 0x1

.field private static final INIT:I = 0x0

.field private static final KEEP:I = 0x1

.field private static final NUM_PTS_TO_CHECK:I = 0xa


# instance fields
.field private angleOrientation:I

.field private distanceTol:D

.field private inputLine:[Lorg/locationtech/jts/geom/Coordinate;

.field private isDeleted:[B


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "inputLine"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->angleOrientation:I

    .line 80
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->inputLine:[Lorg/locationtech/jts/geom/Coordinate;

    .line 81
    return-void
.end method

.method private collapseLine()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4

    .prologue
    .line 166
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 167
    .local v0, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->inputLine:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 168
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->isDeleted:[B

    aget-byte v2, v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 169
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->inputLine:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    return-object v2
.end method

.method private deleteShallowConcavities()Z
    .locals 9

    .prologue
    .line 122
    const/4 v1, 0x1

    .line 123
    .local v1, "index":I
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->inputLine:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    .line 125
    .local v8, "maxIndex":I
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->findNextNonDeletedIndex(I)I

    move-result v2

    .line 126
    .local v2, "midIndex":I
    invoke-direct {p0, v2}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->findNextNonDeletedIndex(I)I

    move-result v3

    .line 128
    .local v3, "lastIndex":I
    const/4 v6, 0x0

    .line 129
    .local v6, "isChanged":Z
    :goto_0
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->inputLine:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    if-ge v3, v0, :cond_2

    .line 131
    const/4 v7, 0x0

    .line 132
    .local v7, "isMiddleVertexDeleted":Z
    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->distanceTol:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->isDeletable(IIID)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->isDeleted:[B

    const/4 v4, 0x1

    aput-byte v4, v0, v2

    .line 135
    const/4 v7, 0x1

    .line 136
    const/4 v6, 0x1

    .line 139
    :cond_0
    if-eqz v7, :cond_1

    .line 140
    move v1, v3

    .line 144
    :goto_1
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->findNextNonDeletedIndex(I)I

    move-result v2

    .line 145
    invoke-direct {p0, v2}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->findNextNonDeletedIndex(I)I

    move-result v3

    .line 146
    goto :goto_0

    .line 142
    :cond_1
    move v1, v2

    goto :goto_1

    .line 147
    .end local v7    # "isMiddleVertexDeleted":Z
    :cond_2
    return v6
.end method

.method private findNextNonDeletedIndex(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 158
    add-int/lit8 v0, p1, 0x1

    .line 159
    .local v0, "next":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->inputLine:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->isDeleted:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return v0
.end method

.method private isConcave(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 3
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 236
    invoke-static {p1, p2, p3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v1

    .line 237
    .local v1, "orientation":I
    iget v2, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->angleOrientation:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 238
    .local v0, "isConcave":Z
    :goto_0
    return v0

    .line 237
    .end local v0    # "isConcave":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeletable(IIID)Z
    .locals 12
    .param p1, "i0"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "distanceTol"    # D

    .prologue
    .line 177
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->inputLine:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v0, p1

    .line 178
    .local v1, "p0":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->inputLine:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v0, p2

    .line 179
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->inputLine:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v0, p3

    .line 181
    .local v3, "p2":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v1, v2, v3}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->isConcave(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-wide/from16 v4, p4

    .line 182
    invoke-direct/range {v0 .. v5}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->isShallow(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v5, p0

    move-object v6, v1

    move-object v7, v2

    move v8, p1

    move v9, p3

    move-wide/from16 v10, p4

    .line 187
    invoke-direct/range {v5 .. v11}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->isShallowSampled(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;IID)Z

    move-result v0

    goto :goto_0
.end method

.method private isShallow(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)Z
    .locals 4
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "distanceTol"    # D

    .prologue
    .line 229
    invoke-static {p2, p1, p3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 230
    .local v0, "dist":D
    cmpg-double v2, v0, p4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isShallowConcavity(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)Z
    .locals 8
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "distanceTol"    # D

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 192
    invoke-static {p1, p2, p3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v3

    .line 193
    .local v3, "orientation":I
    iget v6, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->angleOrientation:I

    if-ne v3, v6, :cond_0

    move v2, v4

    .line 194
    .local v2, "isAngleToSimplify":Z
    :goto_0
    if-nez v2, :cond_1

    .line 198
    :goto_1
    return v5

    .end local v2    # "isAngleToSimplify":Z
    :cond_0
    move v2, v5

    .line 193
    goto :goto_0

    .line 197
    .restart local v2    # "isAngleToSimplify":Z
    :cond_1
    invoke-static {p2, p1, p3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 198
    .local v0, "dist":D
    cmpg-double v6, v0, p4

    if-gez v6, :cond_2

    :goto_2
    move v5, v4

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method private isShallowSampled(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;IID)Z
    .locals 9
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "i0"    # I
    .param p4, "i2"    # I
    .param p5, "distanceTol"    # D

    .prologue
    .line 218
    sub-int v0, p4, p3

    div-int/lit8 v7, v0, 0xa

    .line 219
    .local v7, "inc":I
    if-gtz v7, :cond_0

    const/4 v7, 0x1

    .line 221
    :cond_0
    move v6, p3

    .local v6, "i":I
    :goto_0
    if-ge v6, p4, :cond_2

    .line 222
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->inputLine:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v0, v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->isShallow(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 224
    :goto_1
    return v0

    .line 221
    :cond_1
    add-int/2addr v6, v7

    goto :goto_0

    .line 224
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static simplify([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p0, "inputLine"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "distanceTol"    # D

    .prologue
    .line 65
    new-instance v0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 66
    .local v0, "simp":Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->simplify(D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public simplify(D)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 5
    .param p1, "distanceTol"    # D

    .prologue
    .line 95
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->distanceTol:D

    .line 96
    const-wide/16 v2, 0x0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_0

    .line 97
    const/4 v1, -0x1

    iput v1, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->angleOrientation:I

    .line 100
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->inputLine:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->isDeleted:[B

    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "isChanged":Z
    :cond_1
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->deleteShallowConcavities()Z

    move-result v0

    .line 105
    if-nez v0, :cond_1

    .line 107
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->collapseLine()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method
