.class public Lorg/locationtech/jts/triangulate/quadedge/LocateFailureException;
.super Ljava/lang/RuntimeException;
.source "LocateFailureException.java"


# instance fields
.field private seg:Lorg/locationtech/jts/geom/LineSegment;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/LocateFailureException;->seg:Lorg/locationtech/jts/geom/LineSegment;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 32
    invoke-static {p1, p2}, Lorg/locationtech/jts/triangulate/quadedge/LocateFailureException;->msgWithSpatial(Ljava/lang/String;Lorg/locationtech/jts/geom/LineSegment;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/LocateFailureException;->seg:Lorg/locationtech/jts/geom/LineSegment;

    .line 33
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0, p2}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/LineSegment;)V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/LocateFailureException;->seg:Lorg/locationtech/jts/geom/LineSegment;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 2
    .param p1, "seg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locate failed to converge (at edge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").  Possible causes include invalid Subdivision topology or very close sites"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/LocateFailureException;->seg:Lorg/locationtech/jts/geom/LineSegment;

    .line 41
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/LineSegment;)V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/LocateFailureException;->seg:Lorg/locationtech/jts/geom/LineSegment;

    .line 42
    return-void
.end method

.method private static msgWithSpatial(Ljava/lang/String;Lorg/locationtech/jts/geom/LineSegment;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "seg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 20
    if-eqz p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getSegment()Lorg/locationtech/jts/geom/LineSegment;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/LocateFailureException;->seg:Lorg/locationtech/jts/geom/LineSegment;

    return-object v0
.end method
