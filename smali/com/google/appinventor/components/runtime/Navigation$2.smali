.class Lcom/google/appinventor/components/runtime/Navigation$2;
.super Ljava/lang/Object;
.source "Navigation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Navigation;->performRequest(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Navigation;

.field final synthetic val$coordinates:Lcom/google/appinventor/components/runtime/util/YailList;

.field final synthetic val$directions:Lcom/google/appinventor/components/runtime/util/YailList;

.field final synthetic val$distance:D

.field final synthetic val$duration:D

.field final synthetic val$response:Lcom/google/appinventor/components/runtime/util/YailDictionary;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Navigation;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->this$0:Lcom/google/appinventor/components/runtime/Navigation;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->val$response:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->val$directions:Lcom/google/appinventor/components/runtime/util/YailList;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->val$coordinates:Lcom/google/appinventor/components/runtime/util/YailList;

    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->val$distance:D

    iput-wide p7, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->val$duration:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->this$0:Lcom/google/appinventor/components/runtime/Navigation;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->val$response:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Navigation;->access$202(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 382
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->this$0:Lcom/google/appinventor/components/runtime/Navigation;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->val$directions:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->val$coordinates:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->val$distance:D

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->val$duration:D

    invoke-virtual/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/Navigation;->GotDirections(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V

    .line 383
    return-void
.end method
