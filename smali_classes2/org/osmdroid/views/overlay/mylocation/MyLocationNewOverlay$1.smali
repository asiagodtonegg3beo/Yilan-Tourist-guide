.class Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;
.super Ljava/lang/Object;
.source "MyLocationNewOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;Landroid/location/Location;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    .prologue
    .line 482
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;->this$0:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 485
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;->this$0:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;->val$location:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setLocation(Landroid/location/Location;)V

    .line 487
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;->this$0:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->access$000(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 488
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 490
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;->this$0:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->access$000(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 491
    return-void
.end method
