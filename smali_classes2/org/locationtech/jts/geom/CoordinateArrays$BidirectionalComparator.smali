.class public Lorg/locationtech/jts/geom/CoordinateArrays$BidirectionalComparator;
.super Ljava/lang/Object;
.source "CoordinateArrays.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/geom/CoordinateArrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BidirectionalComparator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OLDcompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 180
    check-cast p1, [Lorg/locationtech/jts/geom/Coordinate;

    .end local p1    # "o1":Ljava/lang/Object;
    move-object v6, p1

    check-cast v6, [Lorg/locationtech/jts/geom/Coordinate;

    .line 181
    .local v6, "pts1":[Lorg/locationtech/jts/geom/Coordinate;
    check-cast p2, [Lorg/locationtech/jts/geom/Coordinate;

    .end local p2    # "o2":Ljava/lang/Object;
    move-object v7, p2

    check-cast v7, [Lorg/locationtech/jts/geom/Coordinate;

    .line 183
    .local v7, "pts2":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v9, v6

    array-length v10, v7

    if-ge v9, v10, :cond_1

    const/4 v8, -0x1

    .line 201
    :cond_0
    :goto_0
    return v8

    .line 184
    :cond_1
    array-length v9, v6

    array-length v10, v7

    if-le v9, v10, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    .line 186
    :cond_2
    array-length v9, v6

    if-eqz v9, :cond_0

    .line 188
    invoke-static {v6}, Lorg/locationtech/jts/geom/CoordinateArrays;->increasingDirection([Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v1

    .line 189
    .local v1, "dir1":I
    invoke-static {v7}, Lorg/locationtech/jts/geom/CoordinateArrays;->increasingDirection([Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    .line 191
    .local v2, "dir2":I
    if-lez v1, :cond_3

    move v4, v8

    .line 192
    .local v4, "i1":I
    :goto_1
    if-lez v2, :cond_4

    move v5, v8

    .line 194
    .local v5, "i2":I
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v9, v6

    if-ge v3, v9, :cond_0

    .line 195
    aget-object v9, v6, v4

    aget-object v10, v7, v5

    invoke-virtual {v9, v10}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 196
    .local v0, "comparePt":I
    if-eqz v0, :cond_5

    move v8, v0

    .line 197
    goto :goto_0

    .line 191
    .end local v0    # "comparePt":I
    .end local v3    # "i":I
    .end local v4    # "i1":I
    .end local v5    # "i2":I
    :cond_3
    array-length v9, v6

    add-int/lit8 v4, v9, -0x1

    goto :goto_1

    .line 192
    .restart local v4    # "i1":I
    :cond_4
    array-length v9, v6

    add-int/lit8 v5, v9, -0x1

    goto :goto_2

    .line 198
    .restart local v0    # "comparePt":I
    .restart local v3    # "i":I
    .restart local v5    # "i2":I
    :cond_5
    add-int/2addr v4, v1

    .line 199
    add-int/2addr v5, v2

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 164
    check-cast p1, [Lorg/locationtech/jts/geom/Coordinate;

    .end local p1    # "o1":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 165
    .local v2, "pts1":[Lorg/locationtech/jts/geom/Coordinate;
    check-cast p2, [Lorg/locationtech/jts/geom/Coordinate;

    .end local p2    # "o2":Ljava/lang/Object;
    move-object v3, p2

    check-cast v3, [Lorg/locationtech/jts/geom/Coordinate;

    .line 167
    .local v3, "pts2":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v5, v2

    array-length v6, v3

    if-ge v5, v6, :cond_1

    const/4 v0, -0x1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    array-length v5, v2

    array-length v6, v3

    if-le v5, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :cond_2
    array-length v5, v2

    if-nez v5, :cond_3

    move v0, v4

    goto :goto_0

    .line 172
    :cond_3
    invoke-static {v2, v3}, Lorg/locationtech/jts/geom/CoordinateArrays;->compare([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    .line 173
    .local v0, "forwardComp":I
    invoke-static {v2, v3}, Lorg/locationtech/jts/geom/CoordinateArrays;->access$000([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    .line 174
    .local v1, "isEqualRev":Z
    if-eqz v1, :cond_0

    move v0, v4

    .line 175
    goto :goto_0
.end method
