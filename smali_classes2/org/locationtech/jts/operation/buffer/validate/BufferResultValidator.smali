.class public Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;
.super Ljava/lang/Object;
.source "BufferResultValidator.java"


# static fields
.field private static final MAX_ENV_DIFF_FRAC:D = 0.012

.field private static VERBOSE:Z


# instance fields
.field private distance:D

.field private errorIndicator:Lorg/locationtech/jts/geom/Geometry;

.field private errorLocation:Lorg/locationtech/jts/geom/Coordinate;

.field private errorMsg:Ljava/lang/String;

.field private input:Lorg/locationtech/jts/geom/Geometry;

.field private isValid:Z

.field private result:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;DLorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "input"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "distance"    # D
    .param p4, "result"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    .line 75
    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorMsg:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 77
    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorIndicator:Lorg/locationtech/jts/geom/Geometry;

    .line 81
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    .line 82
    iput-wide p2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->distance:D

    .line 83
    iput-object p4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    .line 84
    return-void
.end method

.method private checkArea()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 181
    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getArea()D

    move-result-wide v0

    .line 182
    .local v0, "inputArea":D
    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getArea()D

    move-result-wide v2

    .line 184
    .local v2, "resultArea":D
    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->distance:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 186
    iput-boolean v8, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    .line 187
    const-string v4, "Area of positive buffer is smaller than input"

    iput-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorMsg:Ljava/lang/String;

    .line 188
    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    iput-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorIndicator:Lorg/locationtech/jts/geom/Geometry;

    .line 190
    :cond_0
    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->distance:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    .line 192
    iput-boolean v8, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    .line 193
    const-string v4, "Area of negative buffer is larger than input"

    iput-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorMsg:Ljava/lang/String;

    .line 194
    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    iput-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorIndicator:Lorg/locationtech/jts/geom/Geometry;

    .line 196
    :cond_1
    const-string v4, "Area"

    invoke-direct {p0, v4}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->report(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private checkDistance()V
    .locals 5

    .prologue
    .line 201
    new-instance v0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->distance:D

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;-><init>(Lorg/locationtech/jts/geom/Geometry;DLorg/locationtech/jts/geom/Geometry;)V

    .line 202
    .local v0, "distValid":Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    .line 204
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorMsg:Ljava/lang/String;

    .line 205
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->getErrorLocation()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 206
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->getErrorIndicator()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorIndicator:Lorg/locationtech/jts/geom/Geometry;

    .line 208
    :cond_0
    const-string v1, "Distance"

    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->report(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private checkEnvelope()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 160
    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->distance:D

    cmpg-double v4, v4, v8

    if-gez v4, :cond_0

    .line 177
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->distance:D

    const-wide v6, 0x3f889374bc6a7efaL    # 0.012

    mul-double v2, v4, v6

    .line 163
    .local v2, "padding":D
    cmpl-double v4, v2, v8

    if-nez v4, :cond_1

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    .line 165
    :cond_1
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    .line 166
    .local v1, "expectedEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->distance:D

    invoke-virtual {v1, v4, v5}, Lorg/locationtech/jts/geom/Envelope;->expandBy(D)V

    .line 168
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    .line 169
    .local v0, "bufEnv":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/geom/Envelope;->expandBy(D)V

    .line 171
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 172
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    .line 173
    const-string v4, "Buffer envelope is incorrect"

    iput-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorMsg:Ljava/lang/String;

    .line 174
    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->toGeometry(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    iput-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorIndicator:Lorg/locationtech/jts/geom/Geometry;

    .line 176
    :cond_2
    const-string v4, "Envelope"

    invoke-direct {p0, v4}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->report(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkExpectedEmpty()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-wide v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->distance:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    .line 152
    const-string v0, "Result is non-empty"

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorMsg:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorIndicator:Lorg/locationtech/jts/geom/Geometry;

    .line 155
    :cond_2
    const-string v0, "ExpectedEmpty"

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->report(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkPolygonal()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    instance-of v0, v0, Lorg/locationtech/jts/geom/Polygon;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    instance-of v0, v0, Lorg/locationtech/jts/geom/MultiPolygon;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    .line 137
    :cond_0
    const-string v0, "Result is not polygonal"

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorMsg:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorIndicator:Lorg/locationtech/jts/geom/Geometry;

    .line 139
    const-string v0, "Polygonal"

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->report(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static isValid(Lorg/locationtech/jts/geom/Geometry;DLorg/locationtech/jts/geom/Geometry;)Z
    .locals 3
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "distance"    # D
    .param p3, "result"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 47
    new-instance v0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;-><init>(Lorg/locationtech/jts/geom/Geometry;DLorg/locationtech/jts/geom/Geometry;)V

    .line 48
    .local v0, "validator":Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x1

    .line 50
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidMsg(Lorg/locationtech/jts/geom/Geometry;DLorg/locationtech/jts/geom/Geometry;)Ljava/lang/String;
    .locals 3
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "distance"    # D
    .param p3, "result"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 65
    new-instance v0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;-><init>(Lorg/locationtech/jts/geom/Geometry;DLorg/locationtech/jts/geom/Geometry;)V

    .line 66
    .local v0, "validator":Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private report(Ljava/lang/String;)V
    .locals 3
    .param p1, "checkName"    # Ljava/lang/String;

    .prologue
    .line 127
    sget-boolean v0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->VERBOSE:Z

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    if-eqz v0, :cond_1

    const-string v0, "passed"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "FAILED"

    goto :goto_1
.end method


# virtual methods
.method public getErrorIndicator()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorIndicator:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method

.method public getErrorLocation()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorLocation:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->checkPolygonal()V

    .line 89
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    .line 97
    :goto_0
    return v0

    .line 90
    :cond_0
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->checkExpectedEmpty()V

    .line 91
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    goto :goto_0

    .line 92
    :cond_1
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->checkEnvelope()V

    .line 93
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    goto :goto_0

    .line 94
    :cond_2
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->checkArea()V

    .line 95
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    goto :goto_0

    .line 96
    :cond_3
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->checkDistance()V

    .line 97
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferResultValidator;->isValid:Z

    goto :goto_0
.end method
