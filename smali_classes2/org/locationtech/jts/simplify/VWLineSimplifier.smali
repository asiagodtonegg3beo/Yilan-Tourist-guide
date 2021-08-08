.class Lorg/locationtech/jts/simplify/VWLineSimplifier;
.super Ljava/lang/Object;
.source "VWLineSimplifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    }
.end annotation


# instance fields
.field private pts:[Lorg/locationtech/jts/geom/Coordinate;

.field private tolerance:D


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;D)V
    .locals 2
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "distanceTolerance"    # D

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 41
    mul-double v0, p2, p2

    iput-wide v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier;->tolerance:D

    .line 42
    return-void
.end method

.method public static simplify([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 31
    new-instance v0, Lorg/locationtech/jts/simplify/VWLineSimplifier;

    invoke-direct {v0, p0, p1, p2}, Lorg/locationtech/jts/simplify/VWLineSimplifier;-><init>([Lorg/locationtech/jts/geom/Coordinate;D)V

    .line 32
    .local v0, "simp":Lorg/locationtech/jts/simplify/VWLineSimplifier;
    invoke-virtual {v0}, Lorg/locationtech/jts/simplify/VWLineSimplifier;->simplify()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method

.method private simplifyVertex(Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;)D
    .locals 8
    .param p1, "vwLine"    # Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    .prologue
    .line 65
    move-object v2, p1

    .line 66
    .local v2, "curr":Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    invoke-virtual {v2}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->getArea()D

    move-result-wide v4

    .line 67
    .local v4, "minArea":D
    const/4 v3, 0x0

    .line 68
    .local v3, "minVertex":Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    :goto_0
    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v2}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->getArea()D

    move-result-wide v0

    .line 70
    .local v0, "area":D
    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    .line 71
    move-wide v4, v0

    .line 72
    move-object v3, v2

    .line 74
    :cond_0
    invoke-static {v2}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->access$000(Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;)Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    move-result-object v2

    .line 75
    goto :goto_0

    .line 76
    .end local v0    # "area":D
    :cond_1
    if-eqz v3, :cond_2

    iget-wide v6, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier;->tolerance:D

    cmpg-double v6, v4, v6

    if-gez v6, :cond_2

    .line 77
    invoke-virtual {v3}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->remove()Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    .line 79
    :cond_2
    invoke-virtual {p1}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->isLive()Z

    move-result v6

    if-nez v6, :cond_3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 80
    .end local v4    # "minArea":D
    :cond_3
    return-wide v4
.end method


# virtual methods
.method public simplify()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 46
    iget-object v4, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v4}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->buildLine([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    move-result-object v3

    .line 47
    .local v3, "vwLine":Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    iget-wide v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier;->tolerance:D

    .line 49
    .local v0, "minArea":D
    :cond_0
    invoke-direct {p0, v3}, Lorg/locationtech/jts/simplify/VWLineSimplifier;->simplifyVertex(Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;)D

    move-result-wide v0

    .line 50
    iget-wide v4, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier;->tolerance:D

    cmpg-double v4, v0, v4

    if-ltz v4, :cond_0

    .line 51
    invoke-virtual {v3}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 53
    .local v2, "simp":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v4, v2

    if-ge v4, v6, :cond_1

    .line 54
    new-array v4, v6, [Lorg/locationtech/jts/geom/Coordinate;

    aget-object v5, v2, v7

    aput-object v5, v4, v7

    const/4 v5, 0x1

    new-instance v6, Lorg/locationtech/jts/geom/Coordinate;

    aget-object v7, v2, v7

    invoke-direct {v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v6, v4, v5

    move-object v2, v4

    .line 56
    .end local v2    # "simp":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    return-object v2
.end method
