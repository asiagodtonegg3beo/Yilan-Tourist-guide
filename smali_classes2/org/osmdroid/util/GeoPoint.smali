.class public Lorg/osmdroid/util/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Lorg/osmdroid/api/IGeoPoint;
.implements Lorg/osmdroid/views/util/constants/MathConstants;
.implements Lorg/osmdroid/util/constants/GeoConstants;
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mAltitude:D

.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lorg/osmdroid/util/GeoPoint$1;

    invoke-direct {v0}, Lorg/osmdroid/util/GeoPoint$1;-><init>()V

    sput-object v0, Lorg/osmdroid/util/GeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 55
    iput-wide p3, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 56
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "aAltitude"    # D

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 60
    iput-wide p3, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 61
    iput-wide p5, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    .line 62
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    int-to-double v0, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 43
    int-to-double v0, p2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 44
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I
    .param p3, "aAltitude"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    int-to-double v0, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 49
    int-to-double v0, p2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 50
    int-to-double v0, p3

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 8
    .param p1, "aLocation"    # Landroid/location/Location;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    .line 207
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/osmdroid/util/GeoPoint$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/osmdroid/util/GeoPoint$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/GeoPoint;)V
    .locals 2
    .param p1, "aGeopoint"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iget-wide v0, p1, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 70
    iget-wide v0, p1, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 71
    iget-wide v0, p1, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    .line 72
    return-void
.end method

.method public static fromCenterBetween(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 10
    .param p0, "geoPointA"    # Lorg/osmdroid/util/GeoPoint;
    .param p1, "geoPointB"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 311
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    .line 312
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 311
    return-object v0
.end method

.method public static fromDoubleString(Ljava/lang/String;C)Lorg/osmdroid/util/GeoPoint;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "spacer"    # C

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 76
    .local v0, "spacerPos1":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 78
    .local v8, "spacerPos2":I
    const/4 v1, -0x1

    if-ne v8, v1, :cond_0

    .line 79
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    .line 80
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-int/lit8 v4, v0, 0x1

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 83
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    .line 84
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-int/lit8 v4, v0, 0x1

    .line 85
    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-int/lit8 v6, v8, 0x1

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    goto :goto_0
.end method

.method public static fromIntString(Ljava/lang/String;)Lorg/osmdroid/util/GeoPoint;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2c

    const/4 v3, 0x0

    .line 108
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 109
    .local v0, "commaPos1":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 111
    .local v1, "commaPos2":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 112
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    .line 113
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    .line 116
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    .line 117
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    .line 118
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(III)V

    goto :goto_0
.end method

.method public static fromInvertedDoubleString(Ljava/lang/String;C)Lorg/osmdroid/util/GeoPoint;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "spacer"    # C

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 92
    .local v0, "spacerPos1":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 94
    .local v8, "spacerPos2":I
    const/4 v1, -0x1

    if-ne v8, v1, :cond_0

    .line 95
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    add-int/lit8 v2, v0, 0x1

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 97
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 99
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    add-int/lit8 v2, v0, 0x1

    .line 100
    invoke-virtual {p0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 101
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-int/lit8 v6, v8, 0x1

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    goto :goto_0
.end method


# virtual methods
.method public bearingTo(Lorg/osmdroid/api/IGeoPoint;)D
    .locals 26
    .param p1, "other"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 268
    .local v12, "lat1":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 269
    .local v16, "long1":D
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 270
    .local v14, "lat2":D
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    .line 271
    .local v18, "long2":D
    sub-double v10, v18, v16

    .line 272
    .local v10, "delta_long":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v2, v20, v22

    .line 273
    .local v2, "a":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    .line 274
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    sub-double v4, v20, v22

    .line 275
    .local v4, "b":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 276
    .local v6, "bearing":D
    const-wide v20, 0x4076800000000000L    # 360.0

    add-double v20, v20, v6

    const-wide v22, 0x4076800000000000L    # 360.0

    rem-double v8, v20, v22

    .line 277
    .local v8, "bearing_normalized":D
    return-wide v8
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->clone()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/util/GeoPoint;
    .locals 8

    .prologue
    .line 161
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iget-wide v4, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    iget-wide v6, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;
    .locals 27
    .param p1, "aDistanceInMeters"    # D
    .param p3, "aBearingInDegrees"    # F

    .prologue
    .line 289
    const-wide v18, 0x415854a640000000L    # 6378137.0

    div-double v4, p1, v18

    .line 292
    .local v4, "dist":D
    const v3, 0x3c8efa35

    mul-float v2, v3, p3

    .line 295
    .local v2, "brng":F
    const-wide v18, 0x3f91df46a0000000L    # 0.01745329238474369

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v20

    mul-double v6, v18, v20

    .line 296
    .local v6, "lat1":D
    const-wide v18, 0x3f91df46a0000000L    # 0.01745329238474369

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v20

    mul-double v12, v18, v20

    .line 298
    .local v12, "lon1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    .line 299
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    float-to-double v0, v2

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    .line 298
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    .line 300
    .local v8, "lat2":D
    float-to-double v0, v2

    move-wide/from16 v18, v0

    .line 301
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    .line 302
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    .line 301
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    add-double v14, v12, v18

    .line 304
    .local v14, "lon2":D
    const-wide v18, 0x3f91df46a0000000L    # 0.01745329238474369

    div-double v10, v8, v18

    .line 305
    .local v10, "lat2deg":D
    const-wide v18, 0x3f91df46a0000000L    # 0.01745329238474369

    div-double v16, v14, v18

    .line 307
    .local v16, "lon2deg":D
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v0, v16

    invoke-direct {v3, v10, v11, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v3
.end method

.method public distanceTo(Lorg/osmdroid/api/IGeoPoint;)I
    .locals 26
    .param p1, "other"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 243
    const-wide v22, 0x3f91df46a0000000L    # 0.01745329238474369

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    move-wide/from16 v24, v0

    mul-double v2, v22, v24

    .line 244
    .local v2, "a1":D
    const-wide v22, 0x3f91df46a0000000L    # 0.01745329238474369

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    move-wide/from16 v24, v0

    mul-double v4, v22, v24

    .line 245
    .local v4, "a2":D
    const-wide v22, 0x3f91df46a0000000L    # 0.01745329238474369

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v24

    mul-double v6, v22, v24

    .line 246
    .local v6, "b1":D
    const-wide v22, 0x3f91df46a0000000L    # 0.01745329238474369

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v24

    mul-double v8, v22, v24

    .line 248
    .local v8, "b2":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 249
    .local v10, "cosa1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 251
    .local v12, "cosb1":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v22, v22, v10

    mul-double v22, v22, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v14, v22, v24

    .line 253
    .local v14, "t1":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v22, v22, v10

    mul-double v22, v22, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v16, v22, v24

    .line 255
    .local v16, "t2":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v18, v22, v24

    .line 257
    .local v18, "t3":D
    add-double v22, v14, v16

    add-double v22, v22, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->acos(D)D

    move-result-wide v20

    .line 259
    .local v20, "tt":D
    const-wide v22, 0x415854a640000000L    # 6378137.0

    mul-double v22, v22, v20

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    return v22
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 185
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v1

    .line 186
    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 191
    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 192
    .local v0, "rhs":Lorg/osmdroid/util/GeoPoint;
    iget-wide v4, v0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iget-wide v6, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, v0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    iget-wide v6, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, v0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    iget-wide v6, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    return-wide v0
.end method

.method public getLatitudeE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    return-wide v0
.end method

.method public getLongitudeE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 197
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    mul-double/2addr v0, v4

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x11

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    double-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "aAltitude"    # D

    .prologue
    .line 147
    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    .line 148
    return-void
.end method

.method public setCoords(DD)V
    .locals 1
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .prologue
    .line 151
    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 152
    iput-wide p3, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 153
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "aLatitude"    # D

    .prologue
    .line 142
    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "aLongitude"    # D

    .prologue
    .line 144
    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    return-void
.end method

.method public toDoubleString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 317
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    return-object v0
.end method

.method public toIntString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    double-to-int v1, v2

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    return-object v0
.end method

.method public toInvertedDoubleString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 322
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 217
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 218
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 219
    return-void
.end method
