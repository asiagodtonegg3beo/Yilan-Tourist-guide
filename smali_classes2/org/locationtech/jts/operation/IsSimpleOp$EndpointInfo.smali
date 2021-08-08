.class Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;
.super Ljava/lang/Object;
.source "IsSimpleOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/operation/IsSimpleOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndpointInfo"
.end annotation


# instance fields
.field degree:I

.field isClosed:Z

.field pt:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 288
    iput-boolean v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;->isClosed:Z

    .line 289
    iput v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;->degree:I

    .line 290
    return-void
.end method


# virtual methods
.method public addEndpoint(Z)V
    .locals 1
    .param p1, "isClosed"    # Z

    .prologue
    .line 296
    iget v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;->degree:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;->degree:I

    .line 297
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;->isClosed:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;->isClosed:Z

    .line 298
    return-void
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;->pt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method
