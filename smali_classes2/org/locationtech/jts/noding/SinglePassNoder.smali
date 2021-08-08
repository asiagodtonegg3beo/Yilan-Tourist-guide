.class public abstract Lorg/locationtech/jts/noding/SinglePassNoder;
.super Ljava/lang/Object;
.source "SinglePassNoder.java"

# interfaces
.implements Lorg/locationtech/jts/noding/Noder;


# instance fields
.field protected segInt:Lorg/locationtech/jts/noding/SegmentIntersector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/noding/SegmentIntersector;)V
    .locals 0
    .param p1, "segInt"    # Lorg/locationtech/jts/noding/SegmentIntersector;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/noding/SinglePassNoder;->setSegmentIntersector(Lorg/locationtech/jts/noding/SegmentIntersector;)V

    .line 37
    return-void
.end method


# virtual methods
.method public abstract computeNodes(Ljava/util/Collection;)V
.end method

.method public abstract getNodedSubstrings()Ljava/util/Collection;
.end method

.method public setSegmentIntersector(Lorg/locationtech/jts/noding/SegmentIntersector;)V
    .locals 0
    .param p1, "segInt"    # Lorg/locationtech/jts/noding/SegmentIntersector;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/locationtech/jts/noding/SinglePassNoder;->segInt:Lorg/locationtech/jts/noding/SegmentIntersector;

    .line 51
    return-void
.end method
