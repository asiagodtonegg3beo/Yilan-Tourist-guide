.class public Lorg/osmdroid/events/ZoomEvent;
.super Ljava/lang/Object;
.source "ZoomEvent.java"

# interfaces
.implements Lorg/osmdroid/events/MapEvent;


# instance fields
.field protected source:Lorg/osmdroid/views/MapView;

.field protected zoomLevel:D


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;D)V
    .locals 0
    .param p1, "source"    # Lorg/osmdroid/views/MapView;
    .param p2, "zoomLevel"    # D

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/osmdroid/events/ZoomEvent;->source:Lorg/osmdroid/views/MapView;

    .line 16
    iput-wide p2, p0, Lorg/osmdroid/events/ZoomEvent;->zoomLevel:D

    .line 17
    return-void
.end method


# virtual methods
.method public getSource()Lorg/osmdroid/views/MapView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/osmdroid/events/ZoomEvent;->source:Lorg/osmdroid/views/MapView;

    return-object v0
.end method

.method public getZoomLevel()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/osmdroid/events/ZoomEvent;->zoomLevel:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZoomEvent [source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/events/ZoomEvent;->source:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zoomLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/events/ZoomEvent;->zoomLevel:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
