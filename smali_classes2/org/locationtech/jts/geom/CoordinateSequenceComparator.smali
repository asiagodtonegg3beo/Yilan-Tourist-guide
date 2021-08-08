.class public Lorg/locationtech/jts/geom/CoordinateSequenceComparator;
.super Ljava/lang/Object;
.source "CoordinateSequenceComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field protected dimensionLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const v0, 0x7fffffff

    iput v0, p0, Lorg/locationtech/jts/geom/CoordinateSequenceComparator;->dimensionLimit:I

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "dimensionLimit"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lorg/locationtech/jts/geom/CoordinateSequenceComparator;->dimensionLimit:I

    .line 74
    return-void
.end method

.method public static compare(DD)I
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 41
    cmpg-double v3, p0, p2

    if-gez v3, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    cmpl-double v3, p0, p2

    if-lez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 49
    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 50
    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 13
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 85
    move-object v6, p1

    check-cast v6, Lorg/locationtech/jts/geom/CoordinateSequence;

    .local v6, "s1":Lorg/locationtech/jts/geom/CoordinateSequence;
    move-object v7, p2

    .line 86
    check-cast v7, Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 88
    .local v7, "s2":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-interface {v6}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v8

    .line 89
    .local v8, "size1":I
    invoke-interface {v7}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v9

    .line 91
    .local v9, "size2":I
    invoke-interface {v6}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v0

    .line 92
    .local v0, "dim1":I
    invoke-interface {v7}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v1

    .line 94
    .local v1, "dim2":I
    move v4, v0

    .line 95
    .local v4, "minDim":I
    if-ge v1, v4, :cond_0

    .line 96
    move v4, v1

    .line 97
    :cond_0
    const/4 v2, 0x0

    .line 98
    .local v2, "dimLimited":Z
    iget v12, p0, Lorg/locationtech/jts/geom/CoordinateSequenceComparator;->dimensionLimit:I

    if-gt v12, v4, :cond_1

    .line 99
    iget v4, p0, Lorg/locationtech/jts/geom/CoordinateSequenceComparator;->dimensionLimit:I

    .line 100
    const/4 v2, 0x1

    .line 104
    :cond_1
    if-nez v2, :cond_4

    .line 105
    if-ge v0, v1, :cond_3

    move v5, v10

    .line 119
    :cond_2
    :goto_0
    return v5

    .line 106
    :cond_3
    if-le v0, v1, :cond_4

    move v5, v11

    goto :goto_0

    .line 110
    :cond_4
    const/4 v3, 0x0

    .line 111
    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_5

    if-ge v3, v9, :cond_5

    .line 112
    invoke-virtual {p0, v6, v7, v3, v4}, Lorg/locationtech/jts/geom/CoordinateSequenceComparator;->compareCoordinate(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/CoordinateSequence;II)I

    move-result v5

    .line 113
    .local v5, "ptComp":I
    if-nez v5, :cond_2

    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 115
    goto :goto_1

    .line 116
    .end local v5    # "ptComp":I
    :cond_5
    if-ge v3, v8, :cond_6

    move v5, v11

    goto :goto_0

    .line 117
    :cond_6
    if-ge v3, v9, :cond_7

    move v5, v10

    goto :goto_0

    .line 119
    :cond_7
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected compareCoordinate(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/CoordinateSequence;II)I
    .locals 6
    .param p1, "s1"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "s2"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p3, "i"    # I
    .param p4, "dimension"    # I

    .prologue
    .line 134
    const/4 v1, 0x0

    .local v1, "d":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 135
    invoke-interface {p1, p3, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v2

    .line 136
    .local v2, "ord1":D
    invoke-interface {p2, p3, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v4

    .line 137
    .local v4, "ord2":D
    invoke-static {v2, v3, v4, v5}, Lorg/locationtech/jts/geom/CoordinateSequenceComparator;->compare(DD)I

    move-result v0

    .line 138
    .local v0, "comp":I
    if-eqz v0, :cond_0

    .line 140
    .end local v0    # "comp":I
    .end local v2    # "ord1":D
    .end local v4    # "ord2":D
    :goto_1
    return v0

    .line 134
    .restart local v0    # "comp":I
    .restart local v2    # "ord1":D
    .restart local v4    # "ord2":D
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "comp":I
    .end local v2    # "ord1":D
    .end local v4    # "ord2":D
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
