.class public abstract Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.super Ljava/lang/Object;
.source "BulkPermissionRequest.java"


# instance fields
.field private caller:Ljava/lang/String;

.field private permissions:[Ljava/lang/String;

.field private source:Lcom/google/appinventor/components/runtime/Component;


# direct methods
.method protected varargs constructor <init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->source:Lcom/google/appinventor/components/runtime/Component;

    .line 36
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->caller:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->permissions:[Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public final getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->permissions:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->permissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 68
    return-object v0
.end method

.method public onDenied([Ljava/lang/String;)V
    .locals 6
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->source:Lcom/google/appinventor/components/runtime/Component;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/Component;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Form;

    .line 55
    .local v0, "form":Lcom/google/appinventor/components/runtime/Form;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 56
    .local v1, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->source:Lcom/google/appinventor/components/runtime/Component;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->caller:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "permission":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public abstract onGranted()V
.end method
