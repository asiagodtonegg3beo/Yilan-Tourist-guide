.class public Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;
.super Ljava/lang/Object;
.source "OverlayResultValidator.java"


# static fields
.field private static final TOLERANCE:D = 1.0E-6


# instance fields
.field private boundaryDistanceTolerance:D

.field private geom:[Lorg/locationtech/jts/geom/Geometry;

.field private invalidLocation:Lorg/locationtech/jts/geom/Coordinate;

.field private locFinder:[Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;

.field private location:[I

.field private testCoords:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 8
    .param p1, "a"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "b"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "result"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v2, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->location:[I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->invalidLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 60
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iput-wide v0, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->boundaryDistanceTolerance:D

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->testCoords:Ljava/util/List;

    .line 70
    invoke-static {p1, p2}, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->computeBoundaryDistanceTolerance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->boundaryDistanceTolerance:D

    .line 71
    new-array v0, v2, [Lorg/locationtech/jts/geom/Geometry;

    aput-object p1, v0, v3

    aput-object p2, v0, v6

    aput-object p3, v0, v7

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->geom:[Lorg/locationtech/jts/geom/Geometry;

    .line 72
    new-array v0, v2, [Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;

    new-instance v1, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;

    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v2, v2, v3

    iget-wide v4, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->boundaryDistanceTolerance:D

    invoke-direct {v1, v2, v4, v5}, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;-><init>(Lorg/locationtech/jts/geom/Geometry;D)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;

    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v2, v2, v6

    iget-wide v4, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->boundaryDistanceTolerance:D

    invoke-direct {v1, v2, v4, v5}, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;-><init>(Lorg/locationtech/jts/geom/Geometry;D)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;

    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v2, v2, v7

    iget-wide v4, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->boundaryDistanceTolerance:D

    invoke-direct {v1, v2, v4, v5}, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;-><init>(Lorg/locationtech/jts/geom/Geometry;D)V

    aput-object v1, v0, v7

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->locFinder:[Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;

    .line 77
    return-void
.end method

.method private addTestPts(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 6
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 102
    new-instance v0, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 103
    .local v0, "ptGen":Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->testCoords:Ljava/util/List;

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    iget-wide v4, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->boundaryDistanceTolerance:D

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/operation/overlay/validate/OffsetPointGenerator;->getPoints(D)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    return-void
.end method

.method private checkValid(I)Z
    .locals 3
    .param p1, "overlayOp"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->testCoords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 109
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->testCoords:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Coordinate;

    .line 110
    .local v1, "pt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, p1, v1}, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->checkValid(ILorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    iput-object v1, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->invalidLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 112
    const/4 v2, 0x0

    .line 115
    .end local v1    # "pt":Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    return v2

    .line 108
    .restart local v1    # "pt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "pt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private checkValid(ILorg/locationtech/jts/geom/Coordinate;)Z
    .locals 5
    .param p1, "overlayOp"    # I
    .param p2, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 120
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->location:[I

    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->locFinder:[Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->getLocation(Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    aput v2, v1, v3

    .line 121
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->location:[I

    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->locFinder:[Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->getLocation(Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    aput v2, v1, v0

    .line 122
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->location:[I

    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->locFinder:[Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;

    aget-object v2, v2, v4

    invoke-virtual {v2, p2}, Lorg/locationtech/jts/operation/overlay/validate/FuzzyPointLocator;->getLocation(Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    aput v2, v1, v4

    .line 127
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->location:[I

    invoke-static {v1, v0}, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->hasLocation([II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->location:[I

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->isValidResult(I[I)Z

    move-result v0

    goto :goto_0
.end method

.method private static computeBoundaryDistanceTolerance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)D
    .locals 4
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 50
    invoke-static {p0}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->computeSizeBasedSnapTolerance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    .line 51
    invoke-static {p1}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->computeSizeBasedSnapTolerance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    .line 50
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static hasLocation([II)Z
    .locals 2
    .param p0, "location"    # [I
    .param p1, "loc"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 136
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 137
    const/4 v1, 0x1

    .line 139
    :goto_1
    return v1

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isValid(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p0, "a"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "overlayOp"    # I
    .param p3, "result"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 44
    new-instance v0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;

    invoke-direct {v0, p0, p1, p3}, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 45
    .local v0, "validator":Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;
    invoke-virtual {v0, p2}, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->isValid(I)Z

    move-result v1

    return v1
.end method

.method private isValidResult(I[I)Z
    .locals 6
    .param p1, "overlayOp"    # I
    .param p2, "location"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 144
    aget v4, p2, v3

    aget v5, p2, v1

    invoke-static {v4, v5, p1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->isResultOfOp(III)Z

    move-result v0

    .line 146
    .local v0, "expectedInterior":Z
    const/4 v4, 0x2

    aget v4, p2, v4

    if-nez v4, :cond_1

    move v2, v1

    .line 148
    .local v2, "resultInInterior":Z
    :goto_0
    xor-int v4, v0, v2

    if-nez v4, :cond_2

    .line 150
    .local v1, "isValid":Z
    :goto_1
    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->reportResult(I[IZ)V

    .line 152
    :cond_0
    return v1

    .end local v1    # "isValid":Z
    .end local v2    # "resultInInterior":Z
    :cond_1
    move v2, v3

    .line 146
    goto :goto_0

    .restart local v2    # "resultInInterior":Z
    :cond_2
    move v1, v3

    .line 148
    goto :goto_1
.end method

.method private reportResult(I[IZ)V
    .locals 3
    .param p1, "overlayOp"    # I
    .param p2, "location"    # [I
    .param p3, "expectedInterior"    # Z

    .prologue
    .line 157
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overlay result invalid - A:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget v2, p2, v2

    .line 158
    invoke-static {v2}, Lorg/locationtech/jts/geom/Location;->toLocationSymbol(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " B:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget v2, p2, v2

    .line 159
    invoke-static {v2}, Lorg/locationtech/jts/geom/Location;->toLocationSymbol(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " expected:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_0

    const/16 v0, 0x69

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " actual:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget v2, p2, v2

    .line 161
    invoke-static {v2}, Lorg/locationtech/jts/geom/Location;->toLocationSymbol(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    return-void

    .line 159
    :cond_0
    const/16 v0, 0x65

    goto :goto_0
.end method


# virtual methods
.method public getInvalidLocation()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->invalidLocation:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public isValid(I)Z
    .locals 3
    .param p1, "overlayOp"    # I

    .prologue
    .line 81
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->addTestPts(Lorg/locationtech/jts/geom/Geometry;)V

    .line 82
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->addTestPts(Lorg/locationtech/jts/geom/Geometry;)V

    .line 83
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/overlay/validate/OverlayResultValidator;->checkValid(I)Z

    move-result v0

    .line 95
    .local v0, "isValid":Z
    return v0
.end method
