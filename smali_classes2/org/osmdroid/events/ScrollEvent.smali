.class public Lorg/osmdroid/events/ScrollEvent;
.super Ljava/lang/Object;
.source "ScrollEvent.java"

# interfaces
.implements Lorg/osmdroid/events/MapEvent;


# instance fields
.field protected source:Lorg/osmdroid/views/MapView;

.field protected x:I

.field protected y:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;II)V
    .locals 0
    .param p1, "source"    # Lorg/osmdroid/views/MapView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/osmdroid/events/ScrollEvent;->source:Lorg/osmdroid/views/MapView;

    .line 17
    iput p2, p0, Lorg/osmdroid/events/ScrollEvent;->x:I

    .line 18
    iput p3, p0, Lorg/osmdroid/events/ScrollEvent;->y:I

    .line 19
    return-void
.end method


# virtual methods
.method public getSource()Lorg/osmdroid/views/MapView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/osmdroid/events/ScrollEvent;->source:Lorg/osmdroid/views/MapView;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/osmdroid/events/ScrollEvent;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/osmdroid/events/ScrollEvent;->y:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollEvent [source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/events/ScrollEvent;->source:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/events/ScrollEvent;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/events/ScrollEvent;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
