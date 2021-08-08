.class public Lorg/locationtech/jts/geom/IntersectionMatrix;
.super Ljava/lang/Object;
.source "IntersectionMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private matrix:[[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    .line 61
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAll(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "elements"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/locationtech/jts/geom/IntersectionMatrix;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/IntersectionMatrix;->set(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 5
    .param p1, "other"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Lorg/locationtech/jts/geom/IntersectionMatrix;-><init>()V

    .line 83
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, v2

    iget-object v1, p1, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    aput v1, v0, v2

    .line 84
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, v2

    iget-object v1, p1, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v2

    aget v1, v1, v3

    aput v1, v0, v3

    .line 85
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, v2

    iget-object v1, p1, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v2

    aget v1, v1, v4

    aput v1, v0, v4

    .line 86
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, v3

    iget-object v1, p1, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v3

    aget v1, v1, v2

    aput v1, v0, v2

    .line 87
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, v3

    iget-object v1, p1, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v3

    aget v1, v1, v3

    aput v1, v0, v3

    .line 88
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, v3

    iget-object v1, p1, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v3

    aget v1, v1, v4

    aput v1, v0, v4

    .line 89
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, v4

    iget-object v1, p1, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v4

    aget v1, v1, v2

    aput v1, v0, v2

    .line 90
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, v4

    iget-object v1, p1, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v4

    aget v1, v1, v3

    aput v1, v0, v3

    .line 91
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, v4

    iget-object v1, p1, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v4

    aget v1, v1, v4

    aput v1, v0, v4

    .line 92
    return-void
.end method

.method public static isTrue(I)Z
    .locals 1
    .param p0, "actualDimensionValue"    # I

    .prologue
    .line 119
    if-gez p0, :cond_0

    const/4 v0, -0x2

    if-ne p0, v0, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static matches(IC)Z
    .locals 2
    .param p0, "actualDimensionValue"    # I
    .param p1, "requiredDimensionSymbol"    # C

    .prologue
    const/4 v0, 0x1

    .line 137
    const/16 v1, 0x2a

    if-ne p1, v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    const/16 v1, 0x54

    if-ne p1, v1, :cond_2

    if-gez p0, :cond_0

    const/4 v1, -0x2

    if-eq p0, v1, :cond_0

    .line 144
    :cond_2
    const/16 v1, 0x46

    if-ne p1, v1, :cond_3

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 147
    :cond_3
    const/16 v1, 0x30

    if-ne p1, v1, :cond_4

    if-eqz p0, :cond_0

    .line 150
    :cond_4
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    if-eq p0, v0, :cond_0

    .line 153
    :cond_5
    const/16 v1, 0x32

    if-ne p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 156
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "actualDimensionSymbols"    # Ljava/lang/String;
    .param p1, "requiredDimensionSymbols"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Lorg/locationtech/jts/geom/IntersectionMatrix;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/geom/IntersectionMatrix;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "m":Lorg/locationtech/jts/geom/IntersectionMatrix;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/IntersectionMatrix;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 4
    .param p1, "im"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    const/4 v3, 0x3

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 104
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 105
    invoke-virtual {p1, v0, v1}, Lorg/locationtech/jts/geom/IntersectionMatrix;->get(II)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeast(III)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public get(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public isContains()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 410
    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v1

    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v4

    aget v2, v2, v1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v4

    aget v2, v2, v0

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isCoveredBy()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 448
    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v2

    aget v3, v3, v2

    .line 449
    invoke-static {v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    .line 450
    invoke-static {v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    .line 451
    invoke-static {v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v3, v3, v1

    .line 452
    invoke-static {v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 454
    .local v0, "hasPointInCommon":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v2

    aget v3, v3, v5

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v3, v3, v5

    if-ne v3, v4, :cond_2

    :goto_1
    return v1

    .end local v0    # "hasPointInCommon":Z
    :cond_1
    move v0, v2

    .line 452
    goto :goto_0

    .restart local v0    # "hasPointInCommon":Z
    :cond_2
    move v1, v2

    .line 454
    goto :goto_1
.end method

.method public isCovers()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 426
    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v2

    aget v3, v3, v2

    .line 427
    invoke-static {v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    .line 428
    invoke-static {v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    .line 429
    invoke-static {v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v3, v3, v1

    .line 430
    invoke-static {v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 432
    .local v0, "hasPointInCommon":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v5

    aget v3, v3, v2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v5

    aget v3, v3, v1

    if-ne v3, v4, :cond_2

    :goto_1
    return v1

    .end local v0    # "hasPointInCommon":Z
    :cond_1
    move v0, v2

    .line 430
    goto :goto_0

    .restart local v0    # "hasPointInCommon":Z
    :cond_2
    move v1, v2

    .line 432
    goto :goto_1
.end method

.method public isCrosses(II)Z
    .locals 4
    .param p1, "dimensionOfGeometryA"    # I
    .param p2, "dimensionOfGeometryB"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    if-nez p1, :cond_0

    if-eq p2, v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eq p2, v3, :cond_2

    :cond_1
    if-ne p1, v0, :cond_5

    if-ne p2, v3, :cond_5

    .line 374
    :cond_2
    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v1

    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v3

    .line 375
    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 386
    :cond_3
    :goto_0
    return v0

    :cond_4
    move v0, v1

    .line 375
    goto :goto_0

    .line 377
    :cond_5
    if-ne p1, v0, :cond_6

    if-eqz p2, :cond_8

    :cond_6
    if-ne p1, v3, :cond_7

    if-eqz p2, :cond_8

    :cond_7
    if-ne p1, v3, :cond_a

    if-ne p2, v0, :cond_a

    .line 380
    :cond_8
    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v1

    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v3

    aget v2, v2, v1

    .line 381
    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_9
    move v0, v1

    goto :goto_0

    .line 383
    :cond_a
    if-ne p1, v0, :cond_b

    if-ne p2, v0, :cond_b

    .line 384
    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v1

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_b
    move v0, v1

    .line 386
    goto :goto_0
.end method

.method public isDisjoint()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v0

    aget v2, v2, v0

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isEquals(II)Z
    .locals 5
    .param p1, "dimensionOfGeometryA"    # I
    .param p2, "dimensionOfGeometryB"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 478
    if-eq p1, p2, :cond_0

    .line 481
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v1

    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v0

    aget v2, v2, v4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v4

    aget v2, v2, v1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v4

    aget v2, v2, v0

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isIntersects()Z
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isDisjoint()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverlaps(II)Z
    .locals 4
    .param p1, "dimensionOfGeometryA"    # I
    .param p2, "dimensionOfGeometryB"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 503
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-ne p1, v3, :cond_4

    if-ne p2, v3, :cond_4

    .line 505
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v1

    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v3

    .line 506
    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v3

    aget v2, v2, v1

    .line 507
    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 514
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 507
    goto :goto_0

    .line 509
    :cond_4
    if-ne p1, v0, :cond_6

    if-ne p2, v0, :cond_6

    .line 510
    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v1

    if-ne v2, v0, :cond_5

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v3

    .line 511
    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v3

    aget v2, v2, v1

    .line 512
    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 514
    goto :goto_0
.end method

.method public isTouches(II)Z
    .locals 4
    .param p1, "dimensionOfGeometryA"    # I
    .param p2, "dimensionOfGeometryB"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 328
    if-le p1, p2, :cond_1

    .line 330
    invoke-virtual {p0, p2, p1}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTouches(II)Z

    move-result v0

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    if-ne p1, v2, :cond_2

    if-eq p2, v2, :cond_6

    :cond_2
    if-ne p1, v0, :cond_3

    if-eq p2, v0, :cond_6

    :cond_3
    if-ne p1, v0, :cond_4

    if-eq p2, v2, :cond_6

    :cond_4
    if-nez p1, :cond_5

    if-eq p2, v2, :cond_6

    :cond_5
    if-nez p1, :cond_8

    if-ne p2, v0, :cond_8

    .line 337
    :cond_6
    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    .line 338
    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    .line 339
    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v0

    aget v2, v2, v0

    .line 340
    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 342
    goto :goto_0
.end method

.method public isWithin()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 397
    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v1

    invoke-static {v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->isTrue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v2, v2, v4

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v0

    aget v2, v2, v4

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 5
    .param p1, "requiredDimensionSymbols"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 528
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 529
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should be length 9: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 531
    :cond_0
    const/4 v0, 0x0

    .local v0, "ai":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 532
    const/4 v1, 0x0

    .local v1, "bi":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 533
    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    mul-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->matches(IC)Z

    move-result v2

    if-nez v2, :cond_1

    .line 535
    const/4 v2, 0x0

    .line 539
    .end local v1    # "bi":I
    :goto_2
    return v2

    .line 532
    .restart local v1    # "bi":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 531
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    .end local v1    # "bi":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public set(III)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "dimensionValue"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, p1

    aput p3, v0, p2

    .line 187
    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 5
    .param p1, "dimensionSymbols"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 198
    div-int/lit8 v2, v1, 0x3

    .line 199
    .local v2, "row":I
    rem-int/lit8 v0, v1, 0x3

    .line 200
    .local v0, "col":I
    iget-object v3, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v3, v3, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/locationtech/jts/geom/Dimension;->toDimensionValue(C)I

    move-result v4

    aput v4, v3, v0

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "col":I
    .end local v2    # "row":I
    :cond_0
    return-void
.end method

.method public setAll(I)V
    .locals 4
    .param p1, "dimensionValue"    # I

    .prologue
    const/4 v3, 0x3

    .line 267
    const/4 v0, 0x0

    .local v0, "ai":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 268
    const/4 v1, 0x0

    .local v1, "bi":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 269
    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v0

    aput p1, v2, v1

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v1    # "bi":I
    :cond_1
    return-void
.end method

.method public setAtLeast(III)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "minimumDimensionValue"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    if-ge v0, p3, :cond_0

    .line 218
    iget-object v0, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v0, v0, p1

    aput p3, v0, p2

    .line 220
    :cond_0
    return-void
.end method

.method public setAtLeast(Ljava/lang/String;)V
    .locals 4
    .param p1, "minimumDimensionSymbols"    # Ljava/lang/String;

    .prologue
    .line 251
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 252
    div-int/lit8 v2, v1, 0x3

    .line 253
    .local v2, "row":I
    rem-int/lit8 v0, v1, 0x3

    .line 254
    .local v0, "col":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/locationtech/jts/geom/Dimension;->toDimensionValue(C)I

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeast(III)V

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "col":I
    .end local v2    # "row":I
    :cond_0
    return-void
.end method

.method public setAtLeastIfValid(III)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "minimumDimensionValue"    # I

    .prologue
    .line 235
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 236
    invoke-virtual {p0, p1, p2, p3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeast(III)V

    .line 238
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "123456789"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "ai":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 570
    const/4 v1, 0x0

    .local v1, "bi":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 571
    mul-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    invoke-static {v4}, Lorg/locationtech/jts/geom/Dimension;->toDimensionSymbol(I)C

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 569
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    .end local v1    # "bi":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public transpose()Lorg/locationtech/jts/geom/IntersectionMatrix;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 548
    iget-object v1, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v4

    aget v0, v1, v3

    .line 549
    .local v0, "temp":I
    iget-object v1, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v4

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v3

    aget v2, v2, v4

    aput v2, v1, v3

    .line 550
    iget-object v1, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v3

    aput v0, v1, v4

    .line 551
    iget-object v1, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v5

    aget v0, v1, v3

    .line 552
    iget-object v1, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v5

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v3

    aget v2, v2, v5

    aput v2, v1, v3

    .line 553
    iget-object v1, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v3

    aput v0, v1, v5

    .line 554
    iget-object v1, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v5

    aget v0, v1, v4

    .line 555
    iget-object v1, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v5

    iget-object v2, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v2, v2, v4

    aget v2, v2, v5

    aput v2, v1, v4

    .line 556
    iget-object v1, p0, Lorg/locationtech/jts/geom/IntersectionMatrix;->matrix:[[I

    aget-object v1, v1, v4

    aput v0, v1, v5

    .line 557
    return-object p0
.end method
