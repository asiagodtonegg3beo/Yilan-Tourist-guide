.class public Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;
.super Ljava/lang/Object;
.source "CentralEndpointIntersector.java"


# instance fields
.field private intPt:Lorg/locationtech/jts/geom/Coordinate;

.field private minDist:D

.field private pts:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "p00"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p01"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p10"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "p11"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->intPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 108
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->minDist:D

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 55
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->compute()V

    .line 56
    return-void
.end method

.method private Ocompute()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v1}, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->average([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 61
    .local v0, "centroid":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, v0, v2}, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->findNearestPoint(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v1, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->intPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 62
    return-void
.end method

.method private static average([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 70
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 71
    .local v0, "avg":Lorg/locationtech/jts/geom/Coordinate;
    array-length v2, p0

    .line 72
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 73
    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aget-object v3, p0, v1

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v4, v6

    iput-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 74
    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    aget-object v3, p0, v1

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v4, v6

    iput-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    if-lez v2, :cond_1

    .line 77
    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    int-to-double v6, v2

    div-double/2addr v4, v6

    iput-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 78
    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    int-to-double v6, v2

    div-double/2addr v4, v6

    iput-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 80
    :cond_1
    return-object v0
.end method

.method private compute()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v3

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v5

    iget-object v2, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v6

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->tryDist(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 116
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v4

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v5

    iget-object v2, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v6

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->tryDist(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 117
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v5

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v3

    iget-object v2, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->tryDist(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 118
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v6

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v3

    iget-object v2, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->tryDist(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 119
    return-void
.end method

.method private findNearestPoint(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 7
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 95
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 96
    .local v4, "minDist":D
    const/4 v3, 0x0

    .line 97
    .local v3, "result":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p2

    if-ge v2, v6, :cond_2

    .line 98
    aget-object v6, p2, v2

    invoke-virtual {p1, v6}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 100
    .local v0, "dist":D
    if-eqz v2, :cond_0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_1

    .line 101
    :cond_0
    move-wide v4, v0

    .line 102
    aget-object v3, p2, v2

    .line 97
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "dist":D
    :cond_2
    return-object v3
.end method

.method public static getIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p0, "p00"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p01"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p10"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p11"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 44
    new-instance v0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 45
    .local v0, "intor":Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->getIntersection()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method

.method private tryDist(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 123
    invoke-static {p1, p2, p3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 124
    .local v0, "dist":D
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->minDist:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 125
    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->minDist:D

    .line 126
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->intPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public getIntersection()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/CentralEndpointIntersector;->intPt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method
