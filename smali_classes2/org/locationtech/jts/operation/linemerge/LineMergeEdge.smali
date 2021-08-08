.class public Lorg/locationtech/jts/operation/linemerge/LineMergeEdge;
.super Lorg/locationtech/jts/planargraph/Edge;
.source "LineMergeEdge.java"


# instance fields
.field private line:Lorg/locationtech/jts/geom/LineString;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/LineString;)V
    .locals 0
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/locationtech/jts/planargraph/Edge;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/locationtech/jts/operation/linemerge/LineMergeEdge;->line:Lorg/locationtech/jts/geom/LineString;

    .line 31
    return-void
.end method


# virtual methods
.method public getLine()Lorg/locationtech/jts/geom/LineString;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineMergeEdge;->line:Lorg/locationtech/jts/geom/LineString;

    return-object v0
.end method
