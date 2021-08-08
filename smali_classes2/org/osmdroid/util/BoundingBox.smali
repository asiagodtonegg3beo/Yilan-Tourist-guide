.class public Lorg/osmdroid/util/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/osmdroid/util/BoundingBox;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x2L


# instance fields
.field protected final mLatNorth:D

.field protected final mLatSouth:D

.field protected final mLonEast:D

.field protected final mLonWest:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lorg/osmdroid/util/BoundingBox$1;

    invoke-direct {v0}, Lorg/osmdroid/util/BoundingBox$1;-><init>()V

    sput-object v0, Lorg/osmdroid/util/BoundingBox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1
    .param p1, "north"    # D
    .param p3, "east"    # D
    .param p5, "south"    # D
    .param p7, "west"    # D

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    .line 46
    iput-wide p3, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 47
    iput-wide p5, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    .line 48
    iput-wide p7, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    .line 49
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-static {p0}, Lorg/osmdroid/util/BoundingBox;->readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/BoundingBox;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "partialPolyLine":Ljava/util/List;, "Ljava/util/List<+Lorg/osmdroid/api/IGeoPoint;>;"
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 209
    .local v6, "minLat":D
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 210
    .local v8, "minLon":D
    const-wide v2, -0x10000000000001L

    .line 211
    .local v2, "maxLat":D
    const-wide v4, -0x10000000000001L

    .line 212
    .local v4, "maxLon":D
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    .line 213
    .local v0, "gp":Lorg/osmdroid/api/IGeoPoint;
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v10

    .line 214
    .local v10, "latitude":D
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v12

    .line 216
    .local v12, "longitude":D
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 217
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 218
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 219
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 220
    goto :goto_0

    .line 222
    .end local v0    # "gp":Lorg/osmdroid/api/IGeoPoint;
    .end local v10    # "latitude":D
    .end local v12    # "longitude":D
    :cond_0
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v1
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;
    .locals 10
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 269
    .local v2, "latNorth":D
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 270
    .local v4, "lonEast":D
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 271
    .local v6, "latSouth":D
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 272
    .local v8, "lonWest":D
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v1
.end method


# virtual methods
.method public bringToBoundingBox(DD)Lorg/osmdroid/util/GeoPoint;
    .locals 9
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .prologue
    .line 203
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    iget-wide v6, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 204
    invoke-static {v6, v7, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 203
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->clone()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/util/BoundingBox;
    .locals 10

    .prologue
    .line 52
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v6, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v8, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v1
.end method

.method public concat(Lorg/osmdroid/util/BoundingBox;)Lorg/osmdroid/util/BoundingBox;
    .locals 12
    .param p1, "bb2"    # Lorg/osmdroid/util/BoundingBox;

    .prologue
    .line 57
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    .line 58
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 59
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    .line 60
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iget-wide v8, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    .line 61
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 57
    return-object v1
.end method

.method public contains(DD)Z
    .locals 3
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .prologue
    .line 230
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    cmpl-double v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 4
    .param p1, "pGeoPoint"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 226
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/util/BoundingBox;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public getCenter()Lorg/osmdroid/util/GeoPoint;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 72
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v6, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    add-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public getDiagonalLengthInMeters()D
    .locals 6

    .prologue
    .line 77
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public getGeoPointOfRelativePositionWithExactGudermannInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 14
    .param p1, "relX"    # F
    .param p2, "relY"    # F

    .prologue
    .line 157
    iget-wide v8, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v8, v9}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v0

    .line 158
    .local v0, "gudNorth":D
    iget-wide v8, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v8, v9}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v2

    .line 159
    .local v2, "gudSouth":D
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v8, v8, p2

    float-to-double v8, v8

    sub-double v10, v0, v2

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    invoke-static {v8, v9}, Lorg/osmdroid/util/MyMath;->gudermann(D)D

    move-result-wide v4

    .line 160
    .local v4, "lat":D
    iget-wide v8, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v10

    float-to-double v12, p1

    mul-double/2addr v10, v12

    add-double v6, v8, v10

    .line 163
    .local v6, "lon":D
    :goto_0
    const-wide v8, 0x4056a00000000000L    # 90.5

    cmpl-double v8, v4, v8

    if-lez v8, :cond_0

    .line 164
    const-wide v8, 0x4056a00000000000L    # 90.5

    sub-double/2addr v4, v8

    goto :goto_0

    .line 165
    :cond_0
    :goto_1
    const-wide v8, -0x3fa9600000000000L    # -90.5

    cmpg-double v8, v4, v8

    if-gez v8, :cond_1

    .line 166
    const-wide v8, 0x4056a00000000000L    # 90.5

    add-double/2addr v4, v8

    goto :goto_1

    .line 169
    :cond_1
    :goto_2
    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_2

    .line 170
    const-wide v8, 0x4066800000000000L    # 180.0

    sub-double/2addr v6, v8

    goto :goto_2

    .line 171
    :cond_2
    :goto_3
    const-wide v8, -0x3f99800000000000L    # -180.0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_3

    .line 172
    const-wide v8, 0x4066800000000000L    # 180.0

    add-double/2addr v6, v8

    goto :goto_3

    .line 174
    :cond_3
    new-instance v8, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v8, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v8
.end method

.method public getGeoPointOfRelativePositionWithLinearInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 10
    .param p1, "relX"    # F
    .param p2, "relY"    # F

    .prologue
    .line 135
    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v6

    float-to-double v8, p2

    mul-double/2addr v6, v8

    sub-double v0, v4, v6

    .line 137
    .local v0, "lat":D
    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v6

    float-to-double v8, p1

    mul-double/2addr v6, v8

    add-double v2, v4, v6

    .line 140
    .local v2, "lon":D
    :goto_0
    const-wide v4, 0x4056a00000000000L    # 90.5

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    .line 141
    const-wide v4, 0x4056a00000000000L    # 90.5

    sub-double/2addr v0, v4

    goto :goto_0

    .line 142
    :cond_0
    :goto_1
    const-wide v4, -0x3fa9600000000000L    # -90.5

    cmpg-double v4, v0, v4

    if-gez v4, :cond_1

    .line 143
    const-wide v4, 0x4056a00000000000L    # 90.5

    add-double/2addr v0, v4

    goto :goto_1

    .line 146
    :cond_1
    :goto_2
    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_2

    .line 147
    const-wide v4, 0x4066800000000000L    # 180.0

    sub-double/2addr v2, v4

    goto :goto_2

    .line 148
    :cond_2
    :goto_3
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    .line 149
    const-wide v4, 0x4066800000000000L    # 180.0

    add-double/2addr v2, v4

    goto :goto_3

    .line 151
    :cond_3
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v4
.end method

.method public getLatNorth()D
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    return-wide v0
.end method

.method public getLatSouth()D
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    return-wide v0
.end method

.method public getLatitudeSpan()D
    .locals 4

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitudeSpanE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLonEast()D
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    return-wide v0
.end method

.method public getLonWest()D
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    return-wide v0
.end method

.method public getLongitudeSpan()D
    .locals 4

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeSpanE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 11
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "reuse"    # Landroid/graphics/PointF;

    .prologue
    .line 125
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    .line 126
    .local v0, "out":Landroid/graphics/PointF;
    :goto_0
    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v4, v5}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v4

    invoke-static {p1, p2}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v6, v7}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v6

    iget-wide v8, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v8, v9}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 127
    .local v2, "y":F
    const/high16 v3, 0x3f800000    # 1.0f

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    sub-double/2addr v4, p3

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v4, v4

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

.method public getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 9
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "reuse"    # Landroid/graphics/PointF;

    .prologue
    .line 116
    if-eqz p5, :cond_0

    move-object v0, p5

    .line 117
    .local v0, "out":Landroid/graphics/PointF;
    :goto_0
    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    sub-double/2addr v4, p1

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 118
    .local v2, "y":F
    const/high16 v3, 0x3f800000    # 1.0f

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    sub-double/2addr v4, p3

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    sub-float v1, v3, v4

    .line 119
    .local v1, "x":F
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 120
    return-object v0

    .line 116
    .end local v0    # "out":Landroid/graphics/PointF;
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    goto :goto_0
.end method

.method public increaseByScale(F)Lorg/osmdroid/util/BoundingBox;
    .locals 14
    .param p1, "pBoundingboxPaddingRelativeScale"    # F

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 178
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    .line 179
    .local v0, "pCenter":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    div-double v10, v2, v6

    .line 180
    .local v10, "mLatSpanPadded_2":D
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    div-double v12, v2, v6

    .line 182
    .local v12, "mLonSpanPadded_2":D
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    add-double/2addr v2, v10

    .line 183
    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    add-double/2addr v4, v12

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    sub-double/2addr v6, v10

    .line 184
    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    sub-double/2addr v8, v12

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 182
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "N:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; E:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 194
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    .line 195
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 261
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 262
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 263
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 264
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 265
    return-void
.end method
