.class Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;
.super Ljava/lang/Object;
.source "DouglasPeuckerLineSimplifier.java"


# instance fields
.field private distanceTolerance:D

.field private pts:[Lorg/locationtech/jts/geom/Coordinate;

.field private seg:Lorg/locationtech/jts/geom/LineSegment;

.field private usePt:[Z


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->seg:Lorg/locationtech/jts/geom/LineSegment;

    .line 40
    iput-object p1, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 41
    return-void
.end method

.method public static simplify([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 29
    new-instance v0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 30
    .local v0, "simp":Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->setDistanceTolerance(D)V

    .line 31
    invoke-virtual {v0}, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->simplify()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method

.method private simplifySection(II)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 72
    add-int/lit8 v6, p1, 0x1

    if-ne v6, p2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v6, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v7, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v7, v7, p1

    iput-object v7, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 76
    iget-object v6, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v7, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v7, v7, p2

    iput-object v7, v6, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 77
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 78
    .local v4, "maxDistance":D
    move v3, p1

    .line 79
    .local v3, "maxIndex":I
    add-int/lit8 v2, p1, 0x1

    .local v2, "k":I
    :goto_1
    if-ge v2, p2, :cond_3

    .line 80
    iget-object v6, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v7, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/LineSegment;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 81
    .local v0, "distance":D
    cmpl-double v6, v0, v4

    if-lez v6, :cond_2

    .line 82
    move-wide v4, v0

    .line 83
    move v3, v2

    .line 79
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "distance":D
    :cond_3
    iget-wide v6, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->distanceTolerance:D

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_4

    .line 87
    add-int/lit8 v2, p1, 0x1

    :goto_2
    if-ge v2, p2, :cond_0

    .line 88
    iget-object v6, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->usePt:[Z

    const/4 v7, 0x0

    aput-boolean v7, v6, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 92
    :cond_4
    invoke-direct {p0, p1, v3}, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->simplifySection(II)V

    .line 93
    invoke-direct {p0, v3, p2}, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->simplifySection(II)V

    goto :goto_0
.end method


# virtual methods
.method public setDistanceTolerance(D)V
    .locals 1
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 50
    iput-wide p1, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->distanceTolerance:D

    .line 51
    return-void
.end method

.method public simplify()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4

    .prologue
    .line 55
    iget-object v2, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->usePt:[Z

    .line 56
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 57
    iget-object v2, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->usePt:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3}, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->simplifySection(II)V

    .line 60
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 61
    .local v0, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 62
    iget-object v2, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->usePt:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 63
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    return-object v2
.end method
