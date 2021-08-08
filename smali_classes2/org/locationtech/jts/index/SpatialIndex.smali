.class public interface abstract Lorg/locationtech/jts/index/SpatialIndex;
.super Ljava/lang/Object;
.source "SpatialIndex.java"


# virtual methods
.method public abstract insert(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V
.end method

.method public abstract query(Lorg/locationtech/jts/geom/Envelope;)Ljava/util/List;
.end method

.method public abstract query(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/ItemVisitor;)V
.end method

.method public abstract remove(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)Z
.end method
