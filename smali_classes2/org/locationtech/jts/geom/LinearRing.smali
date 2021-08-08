.class public Lorg/locationtech/jts/geom/LinearRing;
.super Lorg/locationtech/jts/geom/LineString;
.source "LinearRing.java"


# static fields
.field public static final MINIMUM_VALID_SIZE:I = 0x4

.field private static final serialVersionUID:J = -0x3b229e262367a6b5L


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 0
    .param p1, "points"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geom/LineString;-><init>(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 85
    invoke-direct {p0}, Lorg/locationtech/jts/geom/LinearRing;->validateConstruction()V

    .line 86
    return-void
.end method

.method private constructor <init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 1
    .param p1, "points"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 69
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/locationtech/jts/geom/LinearRing;-><init>(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 70
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/PrecisionModel;I)V
    .locals 1
    .param p1, "points"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p3, "SRID"    # I

    .prologue
    .line 58
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0, p2, p3}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/geom/LinearRing;-><init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 59
    invoke-direct {p0}, Lorg/locationtech/jts/geom/LinearRing;->validateConstruction()V

    .line 60
    return-void
.end method

.method private validateConstruction()V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LinearRing;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/locationtech/jts/geom/LineString;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Points of LinearRing do not form a closed linestring"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    invoke-interface {v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    invoke-interface {v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of points in LinearRing (found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    invoke-interface {v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - must be 0 or >= 4)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    return-void
.end method


# virtual methods
.method public getBoundaryDimension()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, -0x1

    return v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "LinearRing"

    return-object v0
.end method

.method protected getSortIndex()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x3

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LinearRing;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/locationtech/jts/geom/LineString;->isClosed()Z

    move-result v0

    goto :goto_0
.end method

.method public reverse()Lorg/locationtech/jts/geom/Geometry;
    .locals 3

    .prologue
    .line 133
    iget-object v2, p0, Lorg/locationtech/jts/geom/LinearRing;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 134
    .local v1, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-static {v1}, Lorg/locationtech/jts/geom/CoordinateSequences;->reverse(Lorg/locationtech/jts/geom/CoordinateSequence;)V

    .line 135
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LinearRing;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    .line 136
    .local v0, "rev":Lorg/locationtech/jts/geom/LinearRing;
    return-object v0
.end method
