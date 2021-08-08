.class public Lorg/locationtech/jts/geom/DefaultCoordinateSequenceFactory;
.super Ljava/lang/Object;
.source "DefaultCoordinateSequenceFactory.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateSequenceFactory;
.implements Ljava/io/Serializable;


# static fields
.field private static final instanceObject:Lorg/locationtech/jts/geom/DefaultCoordinateSequenceFactory;

.field private static final serialVersionUID:J = -0x38e49fa6cf6f2ea9L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/locationtech/jts/geom/DefaultCoordinateSequenceFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/DefaultCoordinateSequenceFactory;-><init>()V

    sput-object v0, Lorg/locationtech/jts/geom/DefaultCoordinateSequenceFactory;->instanceObject:Lorg/locationtech/jts/geom/DefaultCoordinateSequenceFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static instance()Lorg/locationtech/jts/geom/DefaultCoordinateSequenceFactory;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/locationtech/jts/geom/DefaultCoordinateSequenceFactory;->instanceObject:Lorg/locationtech/jts/geom/DefaultCoordinateSequenceFactory;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lorg/locationtech/jts/geom/DefaultCoordinateSequenceFactory;->instance()Lorg/locationtech/jts/geom/DefaultCoordinateSequenceFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create(II)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "size"    # I
    .param p2, "dimension"    # I

    .prologue
    .line 70
    new-instance v0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;-><init>(I)V

    return-object v0
.end method

.method public create(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "coordSeq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 63
    new-instance v0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;-><init>(Lorg/locationtech/jts/geom/CoordinateSequence;)V

    return-object v0
.end method

.method public create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 56
    new-instance v0, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/DefaultCoordinateSequence;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v0
.end method
