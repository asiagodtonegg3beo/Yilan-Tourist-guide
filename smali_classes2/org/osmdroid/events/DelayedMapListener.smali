.class public Lorg/osmdroid/events/DelayedMapListener;
.super Ljava/lang/Object;
.source "DelayedMapListener.java"

# interfaces
.implements Lorg/osmdroid/events/MapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/events/DelayedMapListener$CallbackTask;
    }
.end annotation


# static fields
.field protected static final DEFAULT_DELAY:I = 0x64


# instance fields
.field protected callback:Lorg/osmdroid/events/DelayedMapListener$CallbackTask;

.field protected delay:J

.field protected handler:Landroid/os/Handler;

.field wrappedListener:Lorg/osmdroid/events/MapListener;


# direct methods
.method public constructor <init>(Lorg/osmdroid/events/MapListener;)V
    .locals 2
    .param p1, "wrappedListener"    # Lorg/osmdroid/events/MapListener;

    .prologue
    .line 47
    const-wide/16 v0, 0x64

    invoke-direct {p0, p1, v0, v1}, Lorg/osmdroid/events/DelayedMapListener;-><init>(Lorg/osmdroid/events/MapListener;J)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/events/MapListener;J)V
    .locals 2
    .param p1, "wrappedListener"    # Lorg/osmdroid/events/MapListener;
    .param p2, "delay"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/osmdroid/events/DelayedMapListener;->wrappedListener:Lorg/osmdroid/events/MapListener;

    .line 36
    iput-wide p2, p0, Lorg/osmdroid/events/DelayedMapListener;->delay:J

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/events/DelayedMapListener;->handler:Landroid/os/Handler;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/events/DelayedMapListener;->callback:Lorg/osmdroid/events/DelayedMapListener$CallbackTask;

    .line 39
    return-void
.end method


# virtual methods
.method protected dispatch(Lorg/osmdroid/events/MapEvent;)V
    .locals 4
    .param p1, "event"    # Lorg/osmdroid/events/MapEvent;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/osmdroid/events/DelayedMapListener;->callback:Lorg/osmdroid/events/DelayedMapListener$CallbackTask;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/osmdroid/events/DelayedMapListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/osmdroid/events/DelayedMapListener;->callback:Lorg/osmdroid/events/DelayedMapListener$CallbackTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    :cond_0
    new-instance v0, Lorg/osmdroid/events/DelayedMapListener$CallbackTask;

    invoke-direct {v0, p0, p1}, Lorg/osmdroid/events/DelayedMapListener$CallbackTask;-><init>(Lorg/osmdroid/events/DelayedMapListener;Lorg/osmdroid/events/MapEvent;)V

    iput-object v0, p0, Lorg/osmdroid/events/DelayedMapListener;->callback:Lorg/osmdroid/events/DelayedMapListener$CallbackTask;

    .line 73
    iget-object v0, p0, Lorg/osmdroid/events/DelayedMapListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/osmdroid/events/DelayedMapListener;->callback:Lorg/osmdroid/events/DelayedMapListener$CallbackTask;

    iget-wide v2, p0, Lorg/osmdroid/events/DelayedMapListener;->delay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method

.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .locals 1
    .param p1, "event"    # Lorg/osmdroid/events/ScrollEvent;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lorg/osmdroid/events/DelayedMapListener;->dispatch(Lorg/osmdroid/events/MapEvent;)V

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .locals 1
    .param p1, "event"    # Lorg/osmdroid/events/ZoomEvent;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lorg/osmdroid/events/DelayedMapListener;->dispatch(Lorg/osmdroid/events/MapEvent;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method
