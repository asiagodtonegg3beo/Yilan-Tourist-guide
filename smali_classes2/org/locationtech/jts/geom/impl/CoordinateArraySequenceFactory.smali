.class public final Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;
.super Ljava/lang/Object;
.source "CoordinateArraySequenceFactory.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateSequenceFactory;
.implements Ljava/io/Serializable;


# static fields
.field private static final instanceObject:Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;

.field private static final serialVersionUID:J = -0x38e49fa6cf6f2ea9L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;-><init>()V

    sput-object v0, Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;->instanceObject:Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static instance()Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;->instanceObject:Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;->instance()Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create(II)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "size"    # I
    .param p2, "dimension"    # I

    .prologue
    .line 72
    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    .line 73
    const/4 p2, 0x3

    .line 76
    :cond_0
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 78
    new-instance v0, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;-><init>(I)V

    .line 79
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;-><init>(II)V

    goto :goto_0
.end method

.method public create(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "coordSeq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 62
    new-instance v0, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;-><init>(Lorg/locationtech/jts/geom/CoordinateSequence;)V

    return-object v0
.end method

.method public create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 55
    new-instance v0, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v0
.end method
