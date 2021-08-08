.class public Lorg/locationtech/jts/triangulate/ConstraintEnforcementException;
.super Ljava/lang/RuntimeException;
.source "ConstraintEnforcementException.java"


# static fields
.field private static final serialVersionUID:J = 0x55d1cd58d6d1a8cL


# instance fields
.field private pt:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConstraintEnforcementException;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 52
    invoke-static {p1, p2}, Lorg/locationtech/jts/triangulate/ConstraintEnforcementException;->msgWithCoord(Ljava/lang/String;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConstraintEnforcementException;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 53
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p2}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConstraintEnforcementException;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 54
    return-void
.end method

.method private static msgWithCoord(Ljava/lang/String;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/locationtech/jts/io/WKTWriter;->toPoint(Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 31
    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConstraintEnforcementException;->pt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method
