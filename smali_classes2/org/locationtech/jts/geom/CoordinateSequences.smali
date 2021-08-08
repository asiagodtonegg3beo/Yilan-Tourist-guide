.class public Lorg/locationtech/jts/geom/CoordinateSequences;
.super Ljava/lang/Object;
.source "CoordinateSequences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lorg/locationtech/jts/geom/CoordinateSequence;ILorg/locationtech/jts/geom/CoordinateSequence;II)V
    .locals 3
    .param p0, "src"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p1, "srcPos"    # I
    .param p2, "dest"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p3, "destPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 67
    add-int v1, p1, v0

    add-int v2, p3, v0

    invoke-static {p0, v1, p2, v2}, Lorg/locationtech/jts/geom/CoordinateSequences;->copyCoord(Lorg/locationtech/jts/geom/CoordinateSequence;ILorg/locationtech/jts/geom/CoordinateSequence;I)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public static copyCoord(Lorg/locationtech/jts/geom/CoordinateSequence;ILorg/locationtech/jts/geom/CoordinateSequence;I)V
    .locals 4
    .param p0, "src"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p1, "srcPos"    # I
    .param p2, "dest"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p3, "destPos"    # I

    .prologue
    .line 83
    invoke-interface {p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v2

    invoke-interface {p2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 84
    .local v1, "minDim":I
    const/4 v0, 0x0

    .local v0, "dim":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 85
    invoke-interface {p0, p1, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v2

    invoke-interface {p2, p3, v0, v2, v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->setOrdinate(IID)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method private static createClosedRing(Lorg/locationtech/jts/geom/CoordinateSequenceFactory;Lorg/locationtech/jts/geom/CoordinateSequence;I)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 5
    .param p0, "fact"    # Lorg/locationtech/jts/geom/CoordinateSequenceFactory;
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v3

    invoke-interface {p0, p2, v3}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create(II)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    .line 142
    .local v2, "newseq":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    .line 143
    .local v1, "n":I
    invoke-static {p1, v4, v2, v4, v1}, Lorg/locationtech/jts/geom/CoordinateSequences;->copy(Lorg/locationtech/jts/geom/CoordinateSequence;ILorg/locationtech/jts/geom/CoordinateSequence;II)V

    .line 145
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 146
    const/4 v3, 0x1

    invoke-static {p1, v4, v2, v0, v3}, Lorg/locationtech/jts/geom/CoordinateSequences;->copy(Lorg/locationtech/jts/geom/CoordinateSequence;ILorg/locationtech/jts/geom/CoordinateSequence;II)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-object v2
.end method

.method public static ensureValidRing(Lorg/locationtech/jts/geom/CoordinateSequenceFactory;Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 8
    .param p0, "fact"    # Lorg/locationtech/jts/geom/CoordinateSequenceFactory;
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    .line 127
    .local v1, "n":I
    if-nez v1, :cond_1

    .line 136
    .end local p1    # "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 129
    .restart local p1    # "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    :cond_1
    const/4 v3, 0x3

    if-gt v1, v3, :cond_2

    .line 130
    const/4 v2, 0x4

    invoke-static {p0, p1, v2}, Lorg/locationtech/jts/geom/CoordinateSequences;->createClosedRing(Lorg/locationtech/jts/geom/CoordinateSequenceFactory;Lorg/locationtech/jts/geom/CoordinateSequence;I)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object p1

    goto :goto_0

    .line 132
    :cond_2
    invoke-interface {p1, v2, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v4

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    .line 133
    invoke-interface {p1, v2, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v4

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    .line 134
    .local v0, "isClosed":Z
    :goto_1
    if-nez v0, :cond_0

    .line 136
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Lorg/locationtech/jts/geom/CoordinateSequences;->createClosedRing(Lorg/locationtech/jts/geom/CoordinateSequenceFactory;Lorg/locationtech/jts/geom/CoordinateSequence;I)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object p1

    goto :goto_0

    .end local v0    # "isClosed":Z
    :cond_3
    move v0, v2

    .line 133
    goto :goto_1
.end method

.method public static extend(Lorg/locationtech/jts/geom/CoordinateSequenceFactory;Lorg/locationtech/jts/geom/CoordinateSequence;I)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 5
    .param p0, "fact"    # Lorg/locationtech/jts/geom/CoordinateSequenceFactory;
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 152
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v3

    invoke-interface {p0, p2, v3}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create(II)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    .line 153
    .local v2, "newseq":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    .line 154
    .local v1, "n":I
    invoke-static {p1, v4, v2, v4, v1}, Lorg/locationtech/jts/geom/CoordinateSequences;->copy(Lorg/locationtech/jts/geom/CoordinateSequence;ILorg/locationtech/jts/geom/CoordinateSequence;II)V

    .line 156
    if-lez v1, :cond_0

    .line 157
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 158
    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x1

    invoke-static {p1, v3, v2, v0, v4}, Lorg/locationtech/jts/geom/CoordinateSequences;->copy(Lorg/locationtech/jts/geom/CoordinateSequence;ILorg/locationtech/jts/geom/CoordinateSequence;II)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_0
    return-object v2
.end method

.method public static isEqual(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/CoordinateSequence;)Z
    .locals 14
    .param p0, "cs1"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p1, "cs2"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    const/4 v5, 0x0

    .line 176
    invoke-interface {p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v0

    .line 177
    .local v0, "cs1Size":I
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    .line 178
    .local v1, "cs2Size":I
    if-eq v0, v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v5

    .line 179
    :cond_1
    invoke-interface {p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v10

    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 180
    .local v3, "dim":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 181
    const/4 v2, 0x0

    .local v2, "d":I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 182
    invoke-interface {p0, v4, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v6

    .line 183
    .local v6, "v1":D
    invoke-interface {p1, v4, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v8

    .line 184
    .local v8, "v2":D
    invoke-interface {p0, v4, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v10

    invoke-interface {p1, v4, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-nez v10, :cond_2

    .line 181
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 187
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_3

    .line 180
    .end local v6    # "v1":D
    .end local v8    # "v2":D
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 192
    .end local v2    # "d":I
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isRing(Lorg/locationtech/jts/geom/CoordinateSequence;)Z
    .locals 8
    .param p0, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-interface {p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v0

    .line 102
    .local v0, "n":I
    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    const/4 v3, 0x3

    if-gt v0, v3, :cond_2

    move v1, v2

    .line 105
    goto :goto_0

    .line 107
    :cond_2
    invoke-interface {p0, v2, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v4

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    .line 108
    invoke-interface {p0, v2, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v4

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static reverse(Lorg/locationtech/jts/geom/CoordinateSequence;)V
    .locals 4
    .param p0, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 29
    invoke-interface {p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 30
    .local v1, "last":I
    div-int/lit8 v2, v1, 0x2

    .line 31
    .local v2, "mid":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 32
    sub-int v3, v1, v0

    invoke-static {p0, v0, v3}, Lorg/locationtech/jts/geom/CoordinateSequences;->swap(Lorg/locationtech/jts/geom/CoordinateSequence;II)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public static swap(Lorg/locationtech/jts/geom/CoordinateSequence;II)V
    .locals 6
    .param p0, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 45
    if-ne p1, p2, :cond_1

    .line 51
    :cond_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    .local v0, "dim":I
    :goto_0
    invoke-interface {p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 47
    invoke-interface {p0, p1, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v2

    .line 48
    .local v2, "tmp":D
    invoke-interface {p0, p2, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v4

    invoke-interface {p0, p1, v0, v4, v5}, Lorg/locationtech/jts/geom/CoordinateSequence;->setOrdinate(IID)V

    .line 49
    invoke-interface {p0, p2, v0, v2, v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->setOrdinate(IID)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toString(Lorg/locationtech/jts/geom/CoordinateSequence;)Ljava/lang/String;
    .locals 8
    .param p0, "cs"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 207
    invoke-interface {p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v4

    .line 208
    .local v4, "size":I
    if-nez v4, :cond_0

    .line 209
    const-string v5, "()"

    .line 221
    :goto_0
    return-object v5

    .line 210
    :cond_0
    invoke-interface {p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v2

    .line 211
    .local v2, "dim":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 214
    if-lez v3, :cond_1

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_1
    const/4 v1, 0x0

    .local v1, "d":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 216
    if-lez v1, :cond_2

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_2
    invoke-interface {p0, v3, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/locationtech/jts/util/StringUtil;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 213
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 220
    .end local v1    # "d":I
    :cond_4
    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
