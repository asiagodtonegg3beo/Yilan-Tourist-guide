.class public Lorg/locationtech/jts/geom/util/GeometryEditor$NoOpGeometryOperation;
.super Ljava/lang/Object;
.source "GeometryEditor.java"

# interfaces
.implements Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/geom/util/GeometryEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOpGeometryOperation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 0
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 269
    return-object p1
.end method
