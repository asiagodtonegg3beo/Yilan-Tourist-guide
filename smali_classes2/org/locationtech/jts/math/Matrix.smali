.class public Lorg/locationtech/jts/math/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static solve([[D[D)[D
    .locals 18
    .param p0, "a"    # [[D
    .param p1, "b"    # [D

    .prologue
    .line 56
    move-object/from16 v0, p1

    array-length v6, v0

    .line 57
    .local v6, "n":I
    move-object/from16 v0, p0

    array-length v12, v0

    if-ne v12, v6, :cond_0

    const/4 v12, 0x0

    aget-object v12, p0, v12

    array-length v12, v12

    if-eq v12, v6, :cond_1

    .line 58
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Matrix A is incorrectly sized"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 62
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_8

    .line 64
    move v5, v2

    .line 65
    .local v5, "maxElementRow":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 66
    aget-object v12, p0, v3

    aget-wide v12, v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    aget-object v14, p0, v5

    aget-wide v14, v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    .line 67
    move v5, v3

    .line 65
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 69
    :cond_3
    aget-object v12, p0, v5

    aget-wide v12, v12, v2

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_5

    .line 70
    const/4 v7, 0x0

    .line 96
    .end local v5    # "maxElementRow":I
    :cond_4
    return-object v7

    .line 73
    .restart local v5    # "maxElementRow":I
    :cond_5
    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lorg/locationtech/jts/math/Matrix;->swapRows([[DII)V

    .line 74
    move-object/from16 v0, p1

    invoke-static {v0, v2, v5}, Lorg/locationtech/jts/math/Matrix;->swapRows([DII)V

    .line 77
    add-int/lit8 v3, v2, 0x1

    :goto_2
    if-ge v3, v6, :cond_7

    .line 78
    aget-object v12, p0, v3

    aget-wide v12, v12, v2

    aget-object v14, p0, v2

    aget-wide v14, v14, v2

    div-double v8, v12, v14

    .line 79
    .local v8, "rowFactor":D
    add-int/lit8 v4, v6, -0x1

    .local v4, "k":I
    :goto_3
    if-lt v4, v2, :cond_6

    .line 80
    aget-object v12, p0, v3

    aget-wide v14, v12, v4

    aget-object v13, p0, v2

    aget-wide v16, v13, v4

    mul-double v16, v16, v8

    sub-double v14, v14, v16

    aput-wide v14, v12, v4

    .line 79
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 81
    :cond_6
    aget-wide v12, p1, v3

    aget-wide v14, p1, v2

    mul-double/2addr v14, v8

    sub-double/2addr v12, v14

    aput-wide v12, p1, v3

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 62
    .end local v4    # "k":I
    .end local v8    # "rowFactor":D
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v3    # "j":I
    .end local v5    # "maxElementRow":I
    :cond_8
    new-array v7, v6, [D

    .line 90
    .local v7, "solution":[D
    add-int/lit8 v3, v6, -0x1

    .restart local v3    # "j":I
    :goto_4
    if-ltz v3, :cond_4

    .line 91
    const-wide/16 v10, 0x0

    .line 92
    .local v10, "t":D
    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "k":I
    :goto_5
    if-ge v4, v6, :cond_9

    .line 93
    aget-object v12, p0, v3

    aget-wide v12, v12, v4

    aget-wide v14, v7, v4

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 94
    :cond_9
    aget-wide v12, p1, v3

    sub-double/2addr v12, v10

    aget-object v14, p0, v3

    aget-wide v14, v14, v3

    div-double/2addr v12, v14

    aput-wide v12, v7, v3

    .line 90
    add-int/lit8 v3, v3, -0x1

    goto :goto_4
.end method

.method private static swapRows([DII)V
    .locals 4
    .param p0, "m"    # [D
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 35
    if-ne p1, p2, :cond_0

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    aget-wide v0, p0, p1

    .line 37
    .local v0, "temp":D
    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    .line 38
    aput-wide v0, p0, p2

    goto :goto_0
.end method

.method private static swapRows([[DII)V
    .locals 6
    .param p0, "m"    # [[D
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 25
    if-ne p1, p2, :cond_1

    .line 31
    :cond_0
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    const/4 v1, 0x0

    aget-object v1, p0, v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 27
    aget-object v1, p0, p1

    aget-wide v2, v1, v0

    .line 28
    .local v2, "temp":D
    aget-object v1, p0, p1

    aget-object v4, p0, p2

    aget-wide v4, v4, v0

    aput-wide v4, v1, v0

    .line 29
    aget-object v1, p0, p2

    aput-wide v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
