.class public interface abstract Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
.super Ljava/lang/Object;
.source "MapFactory.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MapCircle"
.end annotation


# virtual methods
.method public abstract Latitude()D
.end method

.method public abstract Latitude(D)V
.end method

.method public abstract Longitude()D
.end method

.method public abstract Longitude(D)V
.end method

.method public abstract Radius()D
.end method

.method public abstract Radius(D)V
.end method

.method public abstract SetLocation(DD)V
.end method

.method public abstract updateCenter(DD)V
.end method
