.class public Lorg/locationtech/jts/operation/valid/TopologyValidationError;
.super Ljava/lang/Object;
.source "TopologyValidationError.java"


# static fields
.field public static final DISCONNECTED_INTERIOR:I = 0x4

.field public static final DUPLICATE_RINGS:I = 0x8

.field public static final ERROR:I = 0x0

.field public static final HOLE_OUTSIDE_SHELL:I = 0x2

.field public static final INVALID_COORDINATE:I = 0xa

.field public static final NESTED_HOLES:I = 0x3

.field public static final NESTED_SHELLS:I = 0x7

.field public static final REPEATED_POINT:I = 0x1

.field public static final RING_NOT_CLOSED:I = 0xb

.field public static final RING_SELF_INTERSECTION:I = 0x6

.field public static final SELF_INTERSECTION:I = 0x5

.field public static final TOO_FEW_POINTS:I = 0x9

.field public static final errMsg:[Ljava/lang/String;


# instance fields
.field private errorType:I

.field private pt:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Topology Validation Error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Repeated Point"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Hole lies outside shell"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Holes are nested"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Interior is disconnected"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Self-intersection"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Ring Self-intersection"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Nested shells"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Duplicate Rings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Too few distinct points in geometry component"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Invalid Coordinate"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Ring is not closed"

    aput-object v2, v0, v1

    sput-object v0, Lorg/locationtech/jts/operation/valid/TopologyValidationError;->errMsg:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "errorType"    # I

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;-><init>(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 138
    return-void
.end method

.method public constructor <init>(ILorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "errorType"    # I
    .param p2, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lorg/locationtech/jts/operation/valid/TopologyValidationError;->errorType:I

    .line 125
    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Coordinate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/TopologyValidationError;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/TopologyValidationError;->pt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/locationtech/jts/operation/valid/TopologyValidationError;->errorType:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lorg/locationtech/jts/operation/valid/TopologyValidationError;->errMsg:[Ljava/lang/String;

    iget v1, p0, Lorg/locationtech/jts/operation/valid/TopologyValidationError;->errorType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    const-string v0, ""

    .line 169
    .local v0, "locStr":Ljava/lang/String;
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/TopologyValidationError;->pt:Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " at or near point "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/TopologyValidationError;->pt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
