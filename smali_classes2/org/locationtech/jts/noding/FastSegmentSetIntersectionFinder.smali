.class public Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;
.super Ljava/lang/Object;
.source "FastSegmentSetIntersectionFinder.java"


# instance fields
.field private final segSetMutInt:Lorg/locationtech/jts/noding/SegmentSetMutualIntersector;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "baseSegStrings"    # Ljava/util/Collection;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/noding/MCIndexSegmentSetMutualIntersector;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;->segSetMutInt:Lorg/locationtech/jts/noding/SegmentSetMutualIntersector;

    .line 41
    return-void
.end method


# virtual methods
.method public getSegmentSetIntersector()Lorg/locationtech/jts/noding/SegmentSetMutualIntersector;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;->segSetMutInt:Lorg/locationtech/jts/noding/SegmentSetMutualIntersector;

    return-object v0
.end method

.method public intersects(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "segStrings"    # Ljava/util/Collection;

    .prologue
    .line 62
    new-instance v0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;

    invoke-direct {v0}, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;-><init>()V

    .line 63
    .local v0, "intFinder":Lorg/locationtech/jts/noding/SegmentIntersectionDetector;
    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;->intersects(Ljava/util/Collection;Lorg/locationtech/jts/noding/SegmentIntersectionDetector;)Z

    move-result v1

    return v1
.end method

.method public intersects(Ljava/util/Collection;Lorg/locationtech/jts/noding/SegmentIntersectionDetector;)Z
    .locals 1
    .param p1, "segStrings"    # Ljava/util/Collection;
    .param p2, "intDetector"    # Lorg/locationtech/jts/noding/SegmentIntersectionDetector;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;->segSetMutInt:Lorg/locationtech/jts/noding/SegmentSetMutualIntersector;

    invoke-interface {v0, p1, p2}, Lorg/locationtech/jts/noding/SegmentSetMutualIntersector;->process(Ljava/util/Collection;Lorg/locationtech/jts/noding/SegmentIntersector;)V

    .line 77
    invoke-virtual {p2}, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasIntersection()Z

    move-result v0

    return v0
.end method
