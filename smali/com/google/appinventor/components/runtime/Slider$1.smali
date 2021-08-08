.class Lcom/google/appinventor/components/runtime/Slider$1;
.super Ljava/lang/Object;
.source "Slider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Slider;->ThumbEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Slider;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Slider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Slider;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Slider$1;->this$0:Lcom/google/appinventor/components/runtime/Slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider$1;->this$0:Lcom/google/appinventor/components/runtime/Slider;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Slider;->access$200(Lcom/google/appinventor/components/runtime/Slider;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
