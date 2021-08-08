.class public Lorg/locationtech/jts/geom/PrecisionModel;
.super Ljava/lang/Object;
.source "PrecisionModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/geom/PrecisionModel$Type;
    }
.end annotation


# static fields
.field public static final FIXED:Lorg/locationtech/jts/geom/PrecisionModel$Type;

.field public static final FLOATING:Lorg/locationtech/jts/geom/PrecisionModel$Type;

.field public static final FLOATING_SINGLE:Lorg/locationtech/jts/geom/PrecisionModel$Type;

.field public static final maximumPreciseValue:D = 9.007199254740992E15

.field private static final serialVersionUID:J = 0x6bee6404e9a25c3bL


# instance fields
.field private modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

.field private scale:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lorg/locationtech/jts/geom/PrecisionModel$Type;

    const-string v1, "FIXED"

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/PrecisionModel$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/locationtech/jts/geom/PrecisionModel;->FIXED:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    .line 123
    new-instance v0, Lorg/locationtech/jts/geom/PrecisionModel$Type;

    const-string v1, "FLOATING"

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/PrecisionModel$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/locationtech/jts/geom/PrecisionModel;->FLOATING:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    .line 129
    new-instance v0, Lorg/locationtech/jts/geom/PrecisionModel$Type;

    const-string v1, "FLOATING SINGLE"

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/PrecisionModel$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/locationtech/jts/geom/PrecisionModel;->FLOATING_SINGLE:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    sget-object v0, Lorg/locationtech/jts/geom/PrecisionModel;->FLOATING:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    iput-object v0, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    .line 155
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "scale"    # D

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    sget-object v0, Lorg/locationtech/jts/geom/PrecisionModel;->FIXED:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    iput-object v0, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    .line 198
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geom/PrecisionModel;->setScale(D)V

    .line 199
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "scale"    # D
    .param p3, "offsetX"    # D
    .param p5, "offsetY"    # D

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    sget-object v0, Lorg/locationtech/jts/geom/PrecisionModel;->FIXED:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    iput-object v0, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    .line 186
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geom/PrecisionModel;->setScale(D)V

    .line 187
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel$Type;)V
    .locals 2
    .param p1, "modelType"    # Lorg/locationtech/jts/geom/PrecisionModel$Type;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    .line 167
    sget-object v0, Lorg/locationtech/jts/geom/PrecisionModel;->FIXED:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne p1, v0, :cond_0

    .line 169
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/geom/PrecisionModel;->setScale(D)V

    .line 171
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 2
    .param p1, "pm"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iget-object v0, p1, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    iput-object v0, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    .line 206
    iget-wide v0, p1, Lorg/locationtech/jts/geom/PrecisionModel;->scale:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/PrecisionModel;->scale:D

    .line 207
    return-void
.end method

.method public static mostPrecise(Lorg/locationtech/jts/geom/PrecisionModel;Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/geom/PrecisionModel;
    .locals 1
    .param p0, "pm1"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p1, "pm2"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/PrecisionModel;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 84
    .end local p0    # "pm1":Lorg/locationtech/jts/geom/PrecisionModel;
    :goto_0
    return-object p0

    .restart local p0    # "pm1":Lorg/locationtech/jts/geom/PrecisionModel;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method private setScale(D)V
    .locals 3
    .param p1, "scale"    # D

    .prologue
    .line 281
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/geom/PrecisionModel;->scale:D

    .line 282
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 445
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/PrecisionModel;

    .line 447
    .local v0, "other":Lorg/locationtech/jts/geom/PrecisionModel;
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/PrecisionModel;->getMaximumSignificantDigits()I

    move-result v2

    .line 448
    .local v2, "sigDigits":I
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/PrecisionModel;->getMaximumSignificantDigits()I

    move-result v1

    .line 449
    .local v1, "otherSigDigits":I
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 424
    instance-of v2, p1, Lorg/locationtech/jts/geom/PrecisionModel;

    if-nez v2, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 427
    check-cast v0, Lorg/locationtech/jts/geom/PrecisionModel;

    .line 428
    .local v0, "otherPrecisionModel":Lorg/locationtech/jts/geom/PrecisionModel;
    iget-object v2, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    iget-object v3, v0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/PrecisionModel;->scale:D

    iget-wide v4, v0, Lorg/locationtech/jts/geom/PrecisionModel;->scale:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMaximumSignificantDigits()I
    .locals 6

    .prologue
    .line 241
    const/16 v0, 0x10

    .line 242
    .local v0, "maxSigDigits":I
    iget-object v1, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    sget-object v2, Lorg/locationtech/jts/geom/PrecisionModel;->FLOATING:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v1, v2, :cond_1

    .line 243
    const/16 v0, 0x10

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    sget-object v2, Lorg/locationtech/jts/geom/PrecisionModel;->FLOATING_SINGLE:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v1, v2, :cond_2

    .line 245
    const/4 v0, 0x6

    goto :goto_0

    .line 246
    :cond_2
    iget-object v1, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    sget-object v2, Lorg/locationtech/jts/geom/PrecisionModel;->FIXED:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v1, v2, :cond_0

    .line 247
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/PrecisionModel;->getScale()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public getOffsetX()D
    .locals 2

    .prologue
    .line 293
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOffsetY()D
    .locals 2

    .prologue
    .line 306
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lorg/locationtech/jts/geom/PrecisionModel;->scale:D

    return-wide v0
.end method

.method public getType()Lorg/locationtech/jts/geom/PrecisionModel$Type;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    return-object v0
.end method

.method public isFloating()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    sget-object v1, Lorg/locationtech/jts/geom/PrecisionModel;->FLOATING:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    sget-object v1, Lorg/locationtech/jts/geom/PrecisionModel;->FLOATING_SINGLE:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makePrecise(D)D
    .locals 7
    .param p1, "val"    # D

    .prologue
    .line 383
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    .end local p1    # "val":D
    :cond_0
    :goto_0
    return-wide p1

    .line 385
    .restart local p1    # "val":D
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    sget-object v2, Lorg/locationtech/jts/geom/PrecisionModel;->FLOATING_SINGLE:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v1, v2, :cond_2

    .line 386
    double-to-float v0, p1

    .line 387
    .local v0, "floatSingleVal":F
    float-to-double p1, v0

    goto :goto_0

    .line 389
    .end local v0    # "floatSingleVal":F
    :cond_2
    iget-object v1, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    sget-object v2, Lorg/locationtech/jts/geom/PrecisionModel;->FIXED:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v1, v2, :cond_0

    .line 390
    iget-wide v2, p0, Lorg/locationtech/jts/geom/PrecisionModel;->scale:D

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    iget-wide v4, p0, Lorg/locationtech/jts/geom/PrecisionModel;->scale:D

    div-double p1, v2, v4

    goto :goto_0
.end method

.method public makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 403
    iget-object v0, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    sget-object v1, Lorg/locationtech/jts/geom/PrecisionModel;->FLOATING:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v0, v1, :cond_0

    .line 408
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(D)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 406
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(D)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_0
.end method

.method public toExternal(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "internal"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 352
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 353
    .local v0, "external":Lorg/locationtech/jts/geom/Coordinate;
    return-object v0
.end method

.method public toExternal(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "internal"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "external"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 365
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 366
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 367
    return-void
.end method

.method public toInternal(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "external"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 338
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 339
    .local v0, "internal":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 340
    return-object v0
.end method

.method public toInternal(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "external"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "internal"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/PrecisionModel;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 320
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 326
    :goto_0
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 327
    return-void

    .line 323
    :cond_0
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(D)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 324
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(D)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 412
    const-string v0, "UNKNOWN"

    .line 413
    .local v0, "description":Ljava/lang/String;
    iget-object v1, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    sget-object v2, Lorg/locationtech/jts/geom/PrecisionModel;->FLOATING:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v1, v2, :cond_1

    .line 414
    const-string v0, "Floating"

    .line 420
    :cond_0
    :goto_0
    return-object v0

    .line 415
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    sget-object v2, Lorg/locationtech/jts/geom/PrecisionModel;->FLOATING_SINGLE:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v1, v2, :cond_2

    .line 416
    const-string v0, "Floating-Single"

    goto :goto_0

    .line 417
    :cond_2
    iget-object v1, p0, Lorg/locationtech/jts/geom/PrecisionModel;->modelType:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    sget-object v2, Lorg/locationtech/jts/geom/PrecisionModel;->FIXED:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v1, v2, :cond_0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fixed (Scale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/PrecisionModel;->getScale()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
