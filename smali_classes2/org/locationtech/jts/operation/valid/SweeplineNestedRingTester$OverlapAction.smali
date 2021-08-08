.class Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester$OverlapAction;
.super Ljava/lang/Object;
.source "SweeplineNestedRingTester.java"

# interfaces
.implements Lorg/locationtech/jts/index/sweepline/SweepLineOverlapAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OverlapAction"
.end annotation


# instance fields
.field isNonNested:Z

.field final synthetic this$0:Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;)V
    .locals 1
    .param p1, "this$0"    # Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester$OverlapAction;->this$0:Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester$OverlapAction;->isNonNested:Z

    return-void
.end method


# virtual methods
.method public overlap(Lorg/locationtech/jts/index/sweepline/SweepLineInterval;Lorg/locationtech/jts/index/sweepline/SweepLineInterval;)V
    .locals 3
    .param p1, "s0"    # Lorg/locationtech/jts/index/sweepline/SweepLineInterval;
    .param p2, "s1"    # Lorg/locationtech/jts/index/sweepline/SweepLineInterval;

    .prologue
    .line 105
    invoke-virtual {p1}, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LinearRing;

    .line 106
    .local v0, "innerRing":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {p2}, Lorg/locationtech/jts/index/sweepline/SweepLineInterval;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    .line 107
    .local v1, "searchRing":Lorg/locationtech/jts/geom/LinearRing;
    if-ne v0, v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester$OverlapAction;->this$0:Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;

    invoke-static {v2, v0, v1}, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;->access$000(Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/LinearRing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/locationtech/jts/operation/valid/SweeplineNestedRingTester$OverlapAction;->isNonNested:Z

    goto :goto_0
.end method
