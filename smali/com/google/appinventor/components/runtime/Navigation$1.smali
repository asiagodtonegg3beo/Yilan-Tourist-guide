.class Lcom/google/appinventor/components/runtime/Navigation$1;
.super Ljava/lang/Object;
.source "Navigation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Navigation;->RequestDirections()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Navigation;

.field final synthetic val$endLocation:Lorg/osmdroid/util/GeoPoint;

.field final synthetic val$method:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

.field final synthetic val$startLocation:Lorg/osmdroid/util/GeoPoint;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Navigation;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation$1;->this$0:Lcom/google/appinventor/components/runtime/Navigation;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Navigation$1;->val$startLocation:Lorg/osmdroid/util/GeoPoint;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Navigation$1;->val$endLocation:Lorg/osmdroid/util/GeoPoint;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Navigation$1;->val$method:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Navigation$1;->this$0:Lcom/google/appinventor/components/runtime/Navigation;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Navigation$1;->val$startLocation:Lorg/osmdroid/util/GeoPoint;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Navigation$1;->val$endLocation:Lorg/osmdroid/util/GeoPoint;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Navigation$1;->val$method:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Navigation;->access$000(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Navigation$1;->this$0:Lcom/google/appinventor/components/runtime/Navigation;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Navigation$1;->this$0:Lcom/google/appinventor/components/runtime/Navigation;

    const-string v4, "RequestDirections"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 127
    .local v1, "je":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Navigation$1;->this$0:Lcom/google/appinventor/components/runtime/Navigation;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Navigation$1;->this$0:Lcom/google/appinventor/components/runtime/Navigation;

    const-string v4, "RequestDirections"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
