.class public Lorg/locationtech/jts/geom/CoordinateArrays;
.super Ljava/lang/Object;
.source "CoordinateArrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/geom/CoordinateArrays$BidirectionalComparator;,
        Lorg/locationtech/jts/geom/CoordinateArrays$ForwardComparator;
    }
.end annotation


# static fields
.field private static final coordArrayType:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    sput-object v0, Lorg/locationtech/jts/geom/CoordinateArrays;->coordArrayType:[Lorg/locationtech/jts/geom/Coordinate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 1
    .param p0, "x0"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "x1"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lorg/locationtech/jts/geom/CoordinateArrays;->isEqualReversed([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    return v0
.end method

.method public static atLeastNCoordinatesOrNothing(I[Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p0, "n"    # I
    .param p1, "c"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 265
    array-length v0, p1

    if-lt v0, p0, :cond_0

    .end local p1    # "c":[Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object p1

    .restart local p1    # "c":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    const/4 v0, 0x0

    new-array p1, v0, [Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0
.end method

.method public static compare([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 4
    .param p0, "pts1"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "pts2"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 77
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 78
    .local v0, "compare":I
    if-eqz v0, :cond_0

    .line 86
    .end local v0    # "compare":I
    :goto_1
    return v0

    .line 80
    .restart local v0    # "compare":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_0

    .line 83
    .end local v0    # "compare":I
    :cond_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    .line 84
    :cond_2
    array-length v2, p0

    if-ge v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    .line 86
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static copyDeep([Lorg/locationtech/jts/geom/Coordinate;I[Lorg/locationtech/jts/geom/Coordinate;II)V
    .locals 4
    .param p0, "src"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "srcStart"    # I
    .param p2, "dest"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "destStart"    # I
    .param p4, "length"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 234
    add-int v1, p3, v0

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    add-int v3, p1, v0

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v2, p2, v1

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method

.method public static copyDeep([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .param p0, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 213
    array-length v2, p0

    new-array v0, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 214
    .local v0, "copy":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 215
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v2, v0, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-object v0
.end method

.method public static envelope([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Envelope;
    .locals 3
    .param p0, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 450
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    .line 451
    .local v0, "env":Lorg/locationtech/jts/geom/Envelope;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 452
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_0
    return-object v0
.end method

.method public static equals([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 5
    .param p0, "coord1"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "coord2"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 327
    if-ne p0, p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v1

    .line 328
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .line 329
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 330
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 331
    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 330
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;Ljava/util/Comparator;)Z
    .locals 5
    .param p0, "coord1"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "coord2"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "coordinateComparator"    # Ljava/util/Comparator;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    if-ne p0, p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v1

    .line 350
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .line 351
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 352
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 353
    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-interface {p2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 354
    goto :goto_0

    .line 352
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static extract([Lorg/locationtech/jts/geom/Coordinate;II)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 7
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 425
    const/4 v5, 0x0

    array-length v6, p0

    invoke-static {p1, v5, v6}, Lorg/locationtech/jts/math/MathUtil;->clamp(III)I

    move-result p1

    .line 426
    const/4 v5, -0x1

    array-length v6, p0

    invoke-static {p2, v5, v6}, Lorg/locationtech/jts/math/MathUtil;->clamp(III)I

    move-result p2

    .line 428
    sub-int v5, p2, p1

    add-int/lit8 v4, v5, 0x1

    .line 429
    .local v4, "npts":I
    if-gez p2, :cond_0

    const/4 v4, 0x0

    .line 430
    :cond_0
    array-length v5, p0

    if-lt p1, v5, :cond_1

    const/4 v4, 0x0

    .line 431
    :cond_1
    if-ge p2, p1, :cond_2

    const/4 v4, 0x0

    .line 433
    :cond_2
    new-array v0, v4, [Lorg/locationtech/jts/geom/Coordinate;

    .line 434
    .local v0, "extractPts":[Lorg/locationtech/jts/geom/Coordinate;
    if-nez v4, :cond_4

    .line 440
    :cond_3
    return-object v0

    .line 436
    :cond_4
    const/4 v2, 0x0

    .line 437
    .local v2, "iPts":I
    move v1, p1

    .local v1, "i":I
    move v3, v2

    .end local v2    # "iPts":I
    .local v3, "iPts":I
    :goto_0
    if-gt v1, p2, :cond_3

    .line 438
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "iPts":I
    .restart local v2    # "iPts":I
    aget-object v5, p0, v1

    aput-object v5, v0, v3

    .line 437
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "iPts":I
    .restart local v3    # "iPts":I
    goto :goto_0
.end method

.method public static hasRepeatedPoints([Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 3
    .param p0, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 252
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 253
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const/4 v1, 0x1

    .line 257
    :goto_1
    return v1

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static increasingDirection([Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 5
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_1

    .line 122
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int v2, v3, v1

    .line 124
    .local v2, "j":I
    aget-object v3, p0, v1

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 125
    .local v0, "comp":I
    if-eqz v0, :cond_0

    .line 129
    .end local v0    # "comp":I
    .end local v2    # "j":I
    :goto_1
    return v0

    .line 121
    .restart local v0    # "comp":I
    .restart local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "comp":I
    .end local v2    # "j":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static indexOf(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 2
    .param p0, "coordinate"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 403
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 402
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static intersection([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Envelope;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .param p0, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 465
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 466
    .local v0, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 467
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    aget-object v2, p0, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 466
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    return-object v2
.end method

.method private static isEqualReversed([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 4
    .param p0, "pts1"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "pts2"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 143
    aget-object v1, p0, v0

    .line 144
    .local v1, "p1":Lorg/locationtech/jts/geom/Coordinate;
    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v2, p1, v3

    .line 145
    .local v2, "p2":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const/4 v3, 0x0

    .line 148
    .end local v1    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .end local v2    # "p2":Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    return v3

    .line 142
    .restart local v1    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .restart local v2    # "p2":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .end local v2    # "p2":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isRing([Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 3
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v0, 0x0

    .line 43
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    aget-object v1, p0, v0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static minCoordinate([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p0, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 369
    .local v1, "minCoord":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 370
    if-eqz v1, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    .line 371
    :cond_0
    aget-object v1, p0, v0

    .line 369
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_2
    return-object v1
.end method

.method public static ptNotInList([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p0, "testPts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 58
    aget-object v1, p0, v0

    .line 59
    .local v1, "testPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v1, p1}, Lorg/locationtech/jts/geom/CoordinateArrays;->indexOf(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    if-gez v2, :cond_0

    .line 62
    .end local v1    # "testPt":Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    return-object v1

    .line 57
    .restart local v1    # "testPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "testPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static removeNull([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 6
    .param p0, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 289
    const/4 v4, 0x0

    .line 290
    .local v4, "nonNull":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_1

    .line 291
    aget-object v5, p0, v0

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 290
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_1
    new-array v3, v4, [Lorg/locationtech/jts/geom/Coordinate;

    .line 295
    .local v3, "newCoord":[Lorg/locationtech/jts/geom/Coordinate;
    if-nez v4, :cond_3

    .line 301
    :cond_2
    return-object v3

    .line 297
    :cond_3
    const/4 v1, 0x0

    .line 298
    .local v1, "j":I
    const/4 v0, 0x0

    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_2

    .line 299
    aget-object v5, p0, v0

    if-eqz v5, :cond_4

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aget-object v5, p0, v0

    aput-object v5, v3, v1

    move v1, v2

    .line 298
    .end local v2    # "j":I
    .restart local v1    # "j":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static removeRepeatedPoints([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p0, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 276
    invoke-static {p0}, Lorg/locationtech/jts/geom/CoordinateArrays;->hasRepeatedPoints([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    .end local p0    # "coord":[Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object p0

    .line 277
    .restart local p0    # "coord":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/locationtech/jts/geom/CoordinateList;-><init>([Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 278
    .local v0, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object p0

    goto :goto_0
.end method

.method public static reverse([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 5
    .param p0, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 309
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 310
    .local v1, "last":I
    div-int/lit8 v2, v1, 0x2

    .line 311
    .local v2, "mid":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 312
    aget-object v3, p0, v0

    .line 313
    .local v3, "tmp":Lorg/locationtech/jts/geom/Coordinate;
    sub-int v4, v1, v0

    aget-object v4, p0, v4

    aput-object v4, p0, v0

    .line 314
    sub-int v4, v1, v0

    aput-object v3, p0, v4

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v3    # "tmp":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-void
.end method

.method public static scroll([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p0, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "firstCoordinate"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v3, 0x0

    .line 384
    invoke-static {p1, p0}, Lorg/locationtech/jts/geom/CoordinateArrays;->indexOf(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    .line 385
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 386
    :cond_0
    array-length v2, p0

    new-array v1, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 387
    .local v1, "newCoordinates":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v2, p0

    sub-int/2addr v2, v0

    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    array-length v2, p0

    sub-int/2addr v2, v0

    invoke-static {p0, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    array-length v2, p0

    invoke-static {v1, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static toCoordinateArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p0, "coordList"    # Ljava/util/Collection;

    .prologue
    .line 243
    sget-object v0, Lorg/locationtech/jts/geom/CoordinateArrays;->coordArrayType:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/locationtech/jts/geom/Coordinate;

    check-cast v0, [Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method
