.class public abstract Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;
.super Ljava/lang/Object;
.source "PointShapeFactory.java"

# interfaces
.implements Lorg/locationtech/jts/awt/PointShapeFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/awt/PointShapeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BasePointShapeFactory"
.end annotation


# static fields
.field public static final DEFAULT_SIZE:D = 3.0


# instance fields
.field protected size:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;->size:D

    .line 54
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3
    .param p1, "size"    # D

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;->size:D

    .line 63
    iput-wide p1, p0, Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;->size:D

    .line 64
    return-void
.end method


# virtual methods
.method public abstract createPoint(Ljava/awt/geom/Point2D;)Ljava/awt/Shape;
.end method
