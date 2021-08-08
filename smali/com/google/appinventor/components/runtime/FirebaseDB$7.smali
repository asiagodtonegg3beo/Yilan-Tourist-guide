.class Lcom/google/appinventor/components/runtime/FirebaseDB$7;
.super Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
.source "FirebaseDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->AppendValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

.field final synthetic val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

.field final synthetic val$valueToAdd:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/FirebaseDB;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "retv"    # Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$valueToAdd:Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;)V

    return-void
.end method


# virtual methods
.method run(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
    .locals 4
    .param p1, "currentData"    # Lcom/firebase/client/MutableData;

    .prologue
    .line 754
    invoke-virtual {p1}, Lcom/firebase/client/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 755
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 756
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const-string v3, "Previous value was empty."

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 757
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v2

    .line 782
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 760
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    :try_start_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 761
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 770
    .restart local v1    # "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 771
    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$valueToAdd:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    :try_start_1
    check-cast v1, Ljava/util/List;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 778
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/firebase/client/MutableData;->setValue(Ljava/lang/Object;)V

    .line 779
    invoke-static {p1}, Lcom/firebase/client/Transaction;->success(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;

    move-result-object v2

    goto :goto_0

    .line 763
    .local v1, "value":Ljava/lang/Object;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const-string v3, "Invalid JSON object in database (shouldn\'t happen!)"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 764
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_0

    .line 766
    .end local v1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const-string v3, "Invalid JSON object in database (shouldn\'t happen!)"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 768
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v2

    goto :goto_0

    .line 774
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 775
    .restart local v0    # "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const-string v3, "Could not convert value to JSON."

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 776
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v2

    goto :goto_0

    .line 781
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const-string v3, "You can only append to a list."

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 782
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v2

    goto :goto_0
.end method
