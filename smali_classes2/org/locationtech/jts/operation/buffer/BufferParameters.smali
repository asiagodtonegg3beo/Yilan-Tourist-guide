.class public Lorg/locationtech/jts/operation/buffer/BufferParameters;
.super Ljava/lang/Object;
.source "BufferParameters.java"


# static fields
.field public static final CAP_FLAT:I = 0x2

.field public static final CAP_ROUND:I = 0x1

.field public static final CAP_SQUARE:I = 0x3

.field public static final DEFAULT_MITRE_LIMIT:D = 5.0

.field public static final DEFAULT_QUADRANT_SEGMENTS:I = 0x8

.field public static final DEFAULT_SIMPLIFY_FACTOR:D = 0.01

.field public static final JOIN_BEVEL:I = 0x3

.field public static final JOIN_MITRE:I = 0x2

.field public static final JOIN_ROUND:I = 0x1


# instance fields
.field private endCapStyle:I

.field private isSingleSided:Z

.field private joinStyle:I

.field private mitreLimit:D

.field private quadrantSegments:I

.field private simplifyFactor:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0x8

    iput v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->quadrantSegments:I

    .line 80
    iput v1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->endCapStyle:I

    .line 81
    iput v1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->joinStyle:I

    .line 82
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->mitreLimit:D

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->isSingleSided:Z

    .line 84
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->simplifyFactor:D

    .line 91
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "quadrantSegments"    # I

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0x8

    iput v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->quadrantSegments:I

    .line 80
    iput v1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->endCapStyle:I

    .line 81
    iput v1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->joinStyle:I

    .line 82
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->mitreLimit:D

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->isSingleSided:Z

    .line 84
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->simplifyFactor:D

    .line 101
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->setQuadrantSegments(I)V

    .line 102
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "quadrantSegments"    # I
    .param p2, "endCapStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0x8

    iput v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->quadrantSegments:I

    .line 80
    iput v1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->endCapStyle:I

    .line 81
    iput v1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->joinStyle:I

    .line 82
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->mitreLimit:D

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->isSingleSided:Z

    .line 84
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->simplifyFactor:D

    .line 114
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->setQuadrantSegments(I)V

    .line 115
    invoke-virtual {p0, p2}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->setEndCapStyle(I)V

    .line 116
    return-void
.end method

.method public constructor <init>(IIID)V
    .locals 2
    .param p1, "quadrantSegments"    # I
    .param p2, "endCapStyle"    # I
    .param p3, "joinStyle"    # I
    .param p4, "mitreLimit"    # D

    .prologue
    const/4 v1, 0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0x8

    iput v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->quadrantSegments:I

    .line 80
    iput v1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->endCapStyle:I

    .line 81
    iput v1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->joinStyle:I

    .line 82
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->mitreLimit:D

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->isSingleSided:Z

    .line 84
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->simplifyFactor:D

    .line 132
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->setQuadrantSegments(I)V

    .line 133
    invoke-virtual {p0, p2}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->setEndCapStyle(I)V

    .line 134
    invoke-virtual {p0, p3}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->setJoinStyle(I)V

    .line 135
    invoke-virtual {p0, p4, p5}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->setMitreLimit(D)V

    .line 136
    return-void
.end method

.method public static bufferDistanceError(I)D
    .locals 6
    .param p0, "quadSegs"    # I

    .prologue
    .line 214
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    int-to-double v4, p0

    div-double v0, v2, v4

    .line 215
    .local v0, "alpha":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public getEndCapStyle()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->endCapStyle:I

    return v0
.end method

.method public getJoinStyle()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->joinStyle:I

    return v0
.end method

.method public getMitreLimit()D
    .locals 2

    .prologue
    .line 269
    iget-wide v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->mitreLimit:D

    return-wide v0
.end method

.method public getQuadrantSegments()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->quadrantSegments:I

    return v0
.end method

.method public getSimplifyFactor()D
    .locals 2

    .prologue
    .line 328
    iget-wide v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->simplifyFactor:D

    return-wide v0
.end method

.method public isSingleSided()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->isSingleSided:Z

    return v0
.end method

.method public setEndCapStyle(I)V
    .locals 0
    .param p1, "endCapStyle"    # I

    .prologue
    .line 237
    iput p1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->endCapStyle:I

    .line 238
    return-void
.end method

.method public setJoinStyle(I)V
    .locals 0
    .param p1, "joinStyle"    # I

    .prologue
    .line 259
    iput p1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->joinStyle:I

    .line 260
    return-void
.end method

.method public setMitreLimit(D)V
    .locals 1
    .param p1, "mitreLimit"    # D

    .prologue
    .line 287
    iput-wide p1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->mitreLimit:D

    .line 288
    return-void
.end method

.method public setQuadrantSegments(I)V
    .locals 3
    .param p1, "quadSegs"    # I

    .prologue
    const/4 v2, 0x1

    .line 173
    iput p1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->quadrantSegments:I

    .line 185
    iget v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->quadrantSegments:I

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x3

    iput v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->joinStyle:I

    .line 187
    :cond_0
    iget v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->quadrantSegments:I

    if-gez v0, :cond_1

    .line 188
    const/4 v0, 0x2

    iput v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->joinStyle:I

    .line 189
    iget v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->quadrantSegments:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->mitreLimit:D

    .line 192
    :cond_1
    if-gtz p1, :cond_2

    .line 193
    iput v2, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->quadrantSegments:I

    .line 200
    :cond_2
    iget v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->joinStyle:I

    if-eq v0, v2, :cond_3

    .line 201
    const/16 v0, 0x8

    iput v0, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->quadrantSegments:I

    .line 203
    :cond_3
    return-void
.end method

.method public setSimplifyFactor(D)V
    .locals 3
    .param p1, "simplifyFactor"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 343
    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .end local p1    # "simplifyFactor":D
    :cond_0
    iput-wide p1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->simplifyFactor:D

    .line 344
    return-void
.end method

.method public setSingleSided(Z)V
    .locals 0
    .param p1, "isSingleSided"    # Z

    .prologue
    .line 310
    iput-boolean p1, p0, Lorg/locationtech/jts/operation/buffer/BufferParameters;->isSingleSided:Z

    .line 311
    return-void
.end method
