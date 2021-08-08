.class public Lorg/locationtech/jts/geom/OctagonalEnvelope;
.super Ljava/lang/Object;
.source "OctagonalEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/geom/OctagonalEnvelope$BoundingOctagonComponentFilter;
    }
.end annotation


# static fields
.field private static SQRT2:D


# instance fields
.field private maxA:D

.field private maxB:D

.field private maxX:D

.field private maxY:D

.field private minA:D

.field private minB:D

.field private minX:D

.field private minY:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->SQRT2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    .line 71
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    .line 82
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .line 83
    invoke-virtual {p0, p2}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 2
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    .line 91
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    .line 108
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(Lorg/locationtech/jts/geom/Geometry;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/OctagonalEnvelope;)V
    .locals 2
    .param p1, "oct"    # Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    .line 100
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(Lorg/locationtech/jts/geom/OctagonalEnvelope;)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .line 101
    return-void
.end method

.method private static computeA(DD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 37
    add-double v0, p0, p2

    return-wide v0
.end method

.method private static computeB(DD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 42
    sub-double v0, p0, p2

    return-wide v0
.end method

.method private isValid()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_2

    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_2

    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_2

    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static octagonalEnvelope(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 32
    new-instance v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/geom/OctagonalEnvelope;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->toGeometry(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public contains(Lorg/locationtech/jts/geom/OctagonalEnvelope;)Z
    .locals 6
    .param p1, "other"    # Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public expandBy(D)V
    .locals 5
    .param p1, "distance"    # D

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->isNull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    sget-wide v2, Lorg/locationtech/jts/geom/OctagonalEnvelope;->SQRT2:D

    mul-double v0, v2, p1

    .line 220
    .local v0, "diagonalDistance":D
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    sub-double/2addr v2, p1

    iput-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    .line 221
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    .line 222
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    sub-double/2addr v2, p1

    iput-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    .line 223
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    .line 224
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    .line 225
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    .line 226
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    .line 227
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    .line 229
    invoke-direct {p0}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->setToNull()V

    goto :goto_0
.end method

.method public expandToInclude(DD)Lorg/locationtech/jts/geom/OctagonalEnvelope;
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 188
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->computeA(DD)D

    move-result-wide v0

    .line 189
    .local v0, "A":D
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->computeB(DD)D

    move-result-wide v2

    .line 191
    .local v2, "B":D
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->isNull()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    iput-wide p1, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    .line 193
    iput-wide p1, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    .line 194
    iput-wide p3, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    .line 195
    iput-wide p3, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    .line 196
    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    .line 197
    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    .line 198
    iput-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    .line 199
    iput-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    .line 211
    :cond_0
    :goto_0
    return-object p0

    .line 202
    :cond_1
    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    cmpg-double v4, p1, v4

    if-gez v4, :cond_2

    iput-wide p1, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    .line 203
    :cond_2
    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    cmpl-double v4, p1, v4

    if-lez v4, :cond_3

    iput-wide p1, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    .line 204
    :cond_3
    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    cmpg-double v4, p3, v4

    if-gez v4, :cond_4

    iput-wide p3, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    .line 205
    :cond_4
    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    cmpl-double v4, p3, v4

    if-lez v4, :cond_5

    iput-wide p3, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    .line 206
    :cond_5
    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    cmpg-double v4, v0, v4

    if-gez v4, :cond_6

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    .line 207
    :cond_6
    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_7

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    .line 208
    :cond_7
    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    cmpg-double v4, v2, v4

    if-gez v4, :cond_8

    iput-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    .line 209
    :cond_8
    iget-wide v4, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    iput-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    goto :goto_0
.end method

.method public expandToInclude(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/OctagonalEnvelope;
    .locals 4
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 173
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(DD)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .line 174
    return-object p0
.end method

.method public expandToInclude(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/OctagonalEnvelope;
    .locals 6
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 138
    invoke-interface {p1, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getX(I)D

    move-result-wide v2

    .line 139
    .local v2, "x":D
    invoke-interface {p1, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getY(I)D

    move-result-wide v4

    .line 140
    .local v4, "y":D
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(DD)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "x":D
    .end local v4    # "y":D
    :cond_0
    return-object p0
.end method

.method public expandToInclude(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/OctagonalEnvelope;
    .locals 4
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 179
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(DD)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .line 180
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(DD)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .line 181
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(DD)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .line 182
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->expandToInclude(DD)Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .line 183
    return-object p0
.end method

.method public expandToInclude(Lorg/locationtech/jts/geom/OctagonalEnvelope;)Lorg/locationtech/jts/geom/OctagonalEnvelope;
    .locals 4
    .param p1, "oct"    # Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .prologue
    .line 147
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-object p0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->isNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    .line 151
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    .line 152
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    .line 153
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    .line 154
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    .line 155
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    .line 156
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    .line 157
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    goto :goto_0

    .line 160
    :cond_2
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    .line 161
    :cond_3
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    .line 162
    :cond_4
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    .line 163
    :cond_5
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    .line 164
    :cond_6
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_7

    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    .line 165
    :cond_7
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_8

    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    .line 166
    :cond_8
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_9

    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    .line 167
    :cond_9
    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    goto/16 :goto_0
.end method

.method public expandToInclude(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 132
    new-instance v0, Lorg/locationtech/jts/geom/OctagonalEnvelope$BoundingOctagonComponentFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/locationtech/jts/geom/OctagonalEnvelope$BoundingOctagonComponentFilter;-><init>(Lorg/locationtech/jts/geom/OctagonalEnvelope;Lorg/locationtech/jts/geom/OctagonalEnvelope$1;)V

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 133
    return-void
.end method

.method public getMaxA()D
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    return-wide v0
.end method

.method public getMaxB()D
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    return-wide v0
.end method

.method public getMaxX()D
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    return-wide v0
.end method

.method public getMaxY()D
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    return-wide v0
.end method

.method public getMinA()D
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    return-wide v0
.end method

.method public getMinB()D
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    return-wide v0
.end method

.method public getMinX()D
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    return-wide v0
.end method

.method public getMinY()D
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    return-wide v0
.end method

.method public intersects(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 10
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v4, 0x0

    .line 264
    iget-wide v6, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v5, v6, v8

    if-lez v5, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v4

    .line 265
    :cond_1
    iget-wide v6, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpg-double v5, v6, v8

    if-ltz v5, :cond_0

    .line 266
    iget-wide v6, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v5, v6, v8

    if-gtz v5, :cond_0

    .line 267
    iget-wide v6, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpg-double v5, v6, v8

    if-ltz v5, :cond_0

    .line 269
    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v6, v7, v8, v9}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->computeA(DD)D

    move-result-wide v0

    .line 270
    .local v0, "A":D
    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v6, v7, v8, v9}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->computeB(DD)D

    move-result-wide v2

    .line 271
    .local v2, "B":D
    iget-wide v6, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    cmpl-double v5, v6, v0

    if-gtz v5, :cond_0

    .line 272
    iget-wide v6, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    cmpg-double v5, v6, v0

    if-ltz v5, :cond_0

    .line 273
    iget-wide v6, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    cmpl-double v5, v6, v2

    if-gtz v5, :cond_0

    .line 274
    iget-wide v6, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    cmpg-double v5, v6, v2

    if-ltz v5, :cond_0

    .line 275
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public intersects(Lorg/locationtech/jts/geom/OctagonalEnvelope;)Z
    .locals 6
    .param p1, "other"    # Lorg/locationtech/jts/geom/OctagonalEnvelope;

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 252
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 253
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 254
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 255
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 256
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 257
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 258
    iget-wide v2, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 259
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNull()Z
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public setToNull()V
    .locals 2

    .prologue
    .line 127
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    .line 128
    return-void
.end method

.method public toGeometry(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 20
    .param p1, "geomFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 294
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/geom/OctagonalEnvelope;->isNull()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 295
    const/4 v13, 0x0

    check-cast v13, Lorg/locationtech/jts/geom/CoordinateSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Point;

    move-result-object v13

    .line 340
    :goto_0
    return-object v13

    .line 298
    :cond_0
    new-instance v5, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v5, v14, v15, v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 299
    .local v5, "px00":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v6, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minX:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v6, v14, v15, v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 301
    .local v6, "px01":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v7, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v7, v14, v15, v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 302
    .local v7, "px10":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v8, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxX:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v8, v14, v15, v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 304
    .local v8, "px11":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v9, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minA:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v9, v14, v15, v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 305
    .local v9, "py00":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v10, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxB:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minY:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v10, v14, v15, v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 307
    .local v10, "py01":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v11, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->minB:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v11, v14, v15, v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 308
    .local v11, "py10":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v12, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxA:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/OctagonalEnvelope;->maxY:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v12, v14, v15, v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 310
    .local v12, "py11":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/geom/GeometryFactory;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v3

    .line 311
    .local v3, "pm":Lorg/locationtech/jts/geom/PrecisionModel;
    invoke-virtual {v3, v5}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 312
    invoke-virtual {v3, v6}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 313
    invoke-virtual {v3, v7}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 314
    invoke-virtual {v3, v8}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 315
    invoke-virtual {v3, v9}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 316
    invoke-virtual {v3, v10}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 317
    invoke-virtual {v3, v11}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 318
    invoke-virtual {v3, v12}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 320
    new-instance v2, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 321
    .local v2, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    const/4 v13, 0x0

    invoke-virtual {v2, v5, v13}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 322
    const/4 v13, 0x0

    invoke-virtual {v2, v6, v13}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 323
    const/4 v13, 0x0

    invoke-virtual {v2, v11, v13}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 324
    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 325
    const/4 v13, 0x0

    invoke-virtual {v2, v8, v13}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 326
    const/4 v13, 0x0

    invoke-virtual {v2, v7, v13}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 327
    const/4 v13, 0x0

    invoke-virtual {v2, v10, v13}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 328
    const/4 v13, 0x0

    invoke-virtual {v2, v9, v13}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 330
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 331
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v13

    goto/16 :goto_0

    .line 333
    :cond_1
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 334
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 335
    .local v4, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v13

    goto/16 :goto_0

    .line 338
    .end local v4    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v2, v5, v13}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 339
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 340
    .restart local v4    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v13

    goto/16 :goto_0
.end method
