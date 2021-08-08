.class public Lorg/osmdroid/util/BoundingBoxE6;
.super Ljava/lang/Object;
.source "BoundingBoxE6.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/osmdroid/util/BoundingBoxE6;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x2L


# instance fields
.field protected final mLatNorthE6:I

.field protected final mLatSouthE6:I

.field protected final mLonEastE6:I

.field protected final mLonWestE6:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lorg/osmdroid/util/BoundingBoxE6$1;

    invoke-direct {v0}, Lorg/osmdroid/util/BoundingBoxE6$1;-><init>()V

    sput-object v0, Lorg/osmdroid/util/BoundingBoxE6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 5
    .param p1, "north"    # D
    .param p3, "east"    # D
    .param p5, "south"    # D
    .param p7, "west"    # D

    .prologue
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    mul-double v0, p1, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    .line 68
    mul-double v0, p3, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    .line 69
    mul-double v0, p5, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    .line 70
    mul-double v0, p7, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    .line 71
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "northE6"    # I
    .param p2, "eastE6"    # I
    .param p3, "southE6"    # I
    .param p4, "westE6"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    .line 53
    iput p2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    .line 54
    iput p3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    .line 55
    iput p4, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-static {p0}, Lorg/osmdroid/util/BoundingBoxE6;->readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    return-object v0
.end method

.method public static fromGeoPoints(Ljava/util/ArrayList;)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/BoundingBoxE6;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "partialPolyLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lorg/osmdroid/util/GeoPoint;>;"
    const v5, 0x7fffffff

    .line 220
    .local v5, "minLat":I
    const v6, 0x7fffffff

    .line 221
    .local v6, "minLon":I
    const/high16 v3, -0x80000000

    .line 222
    .local v3, "maxLat":I
    const/high16 v4, -0x80000000

    .line 223
    .local v4, "maxLon":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 224
    .local v0, "gp":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v1

    .line 225
    .local v1, "latitudeE6":I
    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v2

    .line 227
    .local v2, "longitudeE6":I
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 228
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 229
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 230
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 231
    goto :goto_0

    .line 233
    .end local v0    # "gp":Lorg/osmdroid/util/GeoPoint;
    .end local v1    # "latitudeE6":I
    .end local v2    # "longitudeE6":I
    :cond_0
    new-instance v7, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-direct {v7, v3, v4, v5, v6}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(IIII)V

    return-object v7
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 291
    .local v0, "latNorthE6":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .local v2, "lonEastE6":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    .local v1, "latSouthE6":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 294
    .local v3, "lonWestE6":I
    new-instance v4, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-direct {v4, v0, v2, v1, v3}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public bringToBoundingBox(II)Lorg/osmdroid/util/GeoPoint;
    .locals 4
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I

    .prologue
    .line 214
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    iget v3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    .line 215
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    .line 214
    return-object v0
.end method

.method public contains(II)Z
    .locals 3
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I

    .prologue
    const/4 v0, 0x1

    .line 241
    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    if-ge p1, v1, :cond_2

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    if-le p1, v1, :cond_2

    .line 242
    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    if-ge v1, v2, :cond_1

    .line 243
    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    if-ge p2, v1, :cond_2

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    if-le p2, v1, :cond_2

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    if-lt p2, v1, :cond_0

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    if-gt p2, v1, :cond_0

    .line 253
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 2
    .param p1, "pGeoPoint"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 237
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/util/BoundingBoxE6;->contains(II)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public getCenter()Lorg/osmdroid/util/GeoPoint;
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    iget v3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public getDiagonalLengthInMeters()I
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    iget v3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v0

    return v0
.end method

.method public getGeoPointOfRelativePositionWithExactGudermannInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 12
    .param p1, "relX"    # F
    .param p2, "relY"    # F

    .prologue
    .line 166
    iget v8, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    int-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v0

    .line 167
    .local v0, "gudNorth":D
    iget v8, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    int-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v2

    .line 168
    .local v2, "gudSouth":D
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, p2

    float-to-double v8, v8

    sub-double v10, v0, v2

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    invoke-static {v8, v9}, Lorg/osmdroid/util/MyMath;->gudermann(D)D

    move-result-wide v6

    .line 169
    .local v6, "latD":D
    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v6

    double-to-int v4, v8

    .line 171
    .local v4, "lat":I
    iget v8, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, p1

    add-float/2addr v8, v9

    float-to-int v5, v8

    .line 174
    .local v5, "lon":I
    :goto_0
    const v8, 0x564eba0

    if-le v4, v8, :cond_0

    .line 175
    const v8, 0x564eba0

    sub-int/2addr v4, v8

    goto :goto_0

    .line 176
    :cond_0
    :goto_1
    const v8, -0x564eba0

    if-ge v4, v8, :cond_1

    .line 177
    const v8, 0x564eba0

    add-int/2addr v4, v8

    goto :goto_1

    .line 180
    :cond_1
    :goto_2
    const v8, 0xaba9500

    if-le v5, v8, :cond_2

    .line 181
    const v8, 0xaba9500

    sub-int/2addr v5, v8

    goto :goto_2

    .line 182
    :cond_2
    :goto_3
    const v8, -0xaba9500

    if-ge v5, v8, :cond_3

    .line 183
    const v8, 0xaba9500

    add-int/2addr v5, v8

    goto :goto_3

    .line 185
    :cond_3
    new-instance v8, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v8, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v8
.end method

.method public getGeoPointOfRelativePositionWithLinearInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 6
    .param p1, "relX"    # F
    .param p2, "relY"    # F

    .prologue
    const v5, 0xaba9500

    const v4, 0x564eba0

    .line 144
    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 146
    .local v0, "lat":I
    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 149
    .local v1, "lon":I
    :goto_0
    if-le v0, v4, :cond_0

    .line 150
    sub-int/2addr v0, v4

    goto :goto_0

    .line 151
    :cond_0
    :goto_1
    const v2, -0x564eba0

    if-ge v0, v2, :cond_1

    .line 152
    add-int/2addr v0, v4

    goto :goto_1

    .line 155
    :cond_1
    :goto_2
    if-le v1, v5, :cond_2

    .line 156
    sub-int/2addr v1, v5

    goto :goto_2

    .line 157
    :cond_2
    :goto_3
    const v2, -0xaba9500

    if-ge v1, v2, :cond_3

    .line 158
    add-int/2addr v1, v5

    goto :goto_3

    .line 160
    :cond_3
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v2, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v2
.end method

.method public getLatNorthE6()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    return v0
.end method

.method public getLatSouthE6()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    return v0
.end method

.method public getLatitudeSpanE6()I
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getLonEastE6()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    return v0
.end method

.method public getLonWestE6()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    return v0
.end method

.method public getLongitudeSpanE6()I
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(IILandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I
    .param p3, "reuse"    # Landroid/graphics/PointF;

    .prologue
    const-wide v10, 0x412e848000000000L    # 1000000.0

    .line 134
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 135
    .local v0, "out":Landroid/graphics/PointF;
    :goto_0
    iget v3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    int-to-double v4, v3

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v4

    int-to-double v6, p1

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget v3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    int-to-double v6, v3

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v6

    iget v3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    int-to-double v8, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 136
    .local v2, "y":F
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    sub-int/2addr v4, p2

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 137
    .local v1, "x":F
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 138
    return-object v0

    .line 134
    .end local v0    # "out":Landroid/graphics/PointF;
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    goto :goto_0
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(IILandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 6
    .param p1, "aLatitude"    # I
    .param p2, "aLongitude"    # I
    .param p3, "reuse"    # Landroid/graphics/PointF;

    .prologue
    .line 125
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 126
    .local v0, "out":Landroid/graphics/PointF;
    :goto_0
    iget v3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    sub-int/2addr v3, p1

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 127
    .local v2, "y":F
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    sub-int/2addr v4, p2

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 128
    .local v1, "x":F
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 129
    return-object v0

    .line 125
    .end local v0    # "out":Landroid/graphics/PointF;
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    goto :goto_0
.end method

.method public increaseByScale(F)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 8
    .param p1, "pBoundingboxPaddingRelativeScale"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 189
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    .line 190
    .local v2, "pCenter":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 191
    .local v0, "mLatSpanE6Padded_2":I
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 193
    .local v1, "mLonSpanE6Padded_2":I
    new-instance v3, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v4

    add-int/2addr v4, v0

    .line 194
    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v6

    sub-int/2addr v6, v0

    .line 195
    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(IIII)V

    .line 193
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "N:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; E:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 283
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    return-void
.end method
