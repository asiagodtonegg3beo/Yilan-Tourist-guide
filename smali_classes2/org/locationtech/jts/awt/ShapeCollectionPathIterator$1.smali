.class Lorg/locationtech/jts/awt/ShapeCollectionPathIterator$1;
.super Ljava/lang/Object;
.source "ShapeCollectionPathIterator.java"

# interfaces
.implements Ljava/awt/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/locationtech/jts/awt/ShapeCollectionPathIterator$1;->this$0:Lorg/locationtech/jts/awt/ShapeCollectionPathIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 1
    .param p1, "coords"    # [D

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public currentSegment([F)I
    .locals 1
    .param p1, "coords"    # [F

    .prologue
    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWindingRule()I
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public next()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
