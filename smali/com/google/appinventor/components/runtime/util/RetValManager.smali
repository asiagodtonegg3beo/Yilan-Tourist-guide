.class public Lcom/google/appinventor/components/runtime/util/RetValManager;
.super Ljava/lang/Object;
.source "RetValManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RetValManager"

.field private static final TENSECONDS:J = 0x2710L

.field private static currentArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final semaphore:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "blockid"    # Ljava/lang/String;
    .param p1, "ok"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v4

    .line 53
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "status"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v3, "type"

    const-string v5, "return"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v3, "value"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v3, "blockid"

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 64
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    .line 70
    :cond_0
    :goto_0
    monitor-exit v4

    .line 71
    .end local v2    # "sendNotify":Z
    :goto_1
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v5, "Error building retval"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    monitor-exit v4

    goto :goto_1

    .line 70
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "retval":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 67
    .restart local v1    # "retval":Lorg/json/JSONObject;
    .restart local v2    # "sendNotify":Z
    :cond_1
    if-eqz v2, :cond_0

    .line 68
    :try_start_3
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static assetTransferred(Ljava/lang/String;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v4

    .line 158
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "status"

    const-string v5, "OK"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v3, "type"

    const-string v5, "assetTransferred"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    if-eqz p0, :cond_0

    .line 163
    const-string v3, "value"

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :cond_0
    :try_start_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 169
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    .line 175
    :cond_1
    :goto_0
    monitor-exit v4

    .line 176
    .end local v2    # "sendNotify":Z
    :goto_1
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v5, "Error building retval"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    monitor-exit v4

    goto :goto_1

    .line 175
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "retval":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 172
    .restart local v1    # "retval":Lorg/json/JSONObject;
    .restart local v2    # "sendNotify":Z
    :cond_2
    if-eqz v2, :cond_1

    .line 173
    :try_start_3
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static extensionsLoaded()V
    .locals 6

    .prologue
    .line 183
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v4

    .line 184
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "status"

    const-string v5, "OK"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v3, "type"

    const-string v5, "extensionsLoaded"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 193
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    .line 199
    :cond_0
    :goto_0
    monitor-exit v4

    .line 200
    .end local v2    # "sendNotify":Z
    :goto_1
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v5, "Error building retval"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    monitor-exit v4

    goto :goto_1

    .line 199
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 196
    .restart local v2    # "sendNotify":Z
    :cond_1
    if-eqz v2, :cond_0

    .line 197
    :try_start_3
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static fetch(Z)Ljava/lang/String;
    .locals 14
    .param p0, "block"    # Z

    .prologue
    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 212
    .local v4, "startTime":J
    sget-object v8, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v8

    .line 213
    :goto_0
    :try_start_0
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 215
    .local v6, "time":J
    sub-long v10, v6, v4

    const-wide/16 v12, 0x26ac

    cmp-long v3, v10, v12

    if-lez v3, :cond_1

    .line 222
    .end local v6    # "time":J
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 223
    .local v0, "arrayoutput":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .local v2, "output":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "status"

    const-string v9, "OK"

    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v3, "values"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :try_start_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 232
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return-object v3

    .line 218
    .end local v0    # "arrayoutput":Lorg/json/JSONArray;
    .end local v2    # "output":Lorg/json/JSONObject;
    .restart local v6    # "time":J
    :cond_1
    :try_start_3
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    const-wide/16 v10, 0x2710

    invoke-virtual {v3, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v3

    goto :goto_0

    .line 227
    .end local v6    # "time":J
    .restart local v0    # "arrayoutput":Lorg/json/JSONArray;
    .restart local v2    # "output":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 228
    .local v1, "e":Lorg/json/JSONException;
    :try_start_4
    const-string v3, "RetValManager"

    const-string v9, "Error fetching retvals"

    invoke-static {v3, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    const-string v3, "{\"status\" : \"BAD\", \"message\" : \"Failure in RetValManager\"}"

    monitor-exit v8

    goto :goto_1

    .line 233
    .end local v0    # "arrayoutput":Lorg/json/JSONArray;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "output":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public static popScreen(Ljava/lang/String;)V
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v4

    .line 131
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "status"

    const-string v5, "OK"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v3, "type"

    const-string v5, "popScreen"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    if-eqz p0, :cond_0

    .line 136
    const-string v3, "value"

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :cond_0
    :try_start_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 142
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    .line 148
    :cond_1
    :goto_0
    monitor-exit v4

    .line 149
    .end local v2    # "sendNotify":Z
    :goto_1
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v5, "Error building retval"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    monitor-exit v4

    goto :goto_1

    .line 148
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "retval":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 145
    .restart local v1    # "retval":Lorg/json/JSONObject;
    .restart local v2    # "sendNotify":Z
    :cond_2
    if-eqz v2, :cond_1

    .line 146
    :try_start_3
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static pushScreen(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 101
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v4

    .line 102
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "status"

    const-string v5, "OK"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v3, "type"

    const-string v5, "pushScreen"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v3, "screen"

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    if-eqz p1, :cond_0

    .line 108
    const-string v3, "value"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_0
    :try_start_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 114
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    .line 120
    :cond_1
    :goto_0
    monitor-exit v4

    .line 121
    .end local v2    # "sendNotify":Z
    :goto_1
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v5, "Error building retval"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    monitor-exit v4

    goto :goto_1

    .line 120
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "retval":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 117
    .restart local v1    # "retval":Lorg/json/JSONObject;
    .restart local v2    # "sendNotify":Z
    :cond_2
    if-eqz v2, :cond_1

    .line 118
    :try_start_3
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static sendError(Ljava/lang/String;)V
    .locals 6
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v4

    .line 75
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "status"

    const-string v5, "OK"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v3, "type"

    const-string v5, "error"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v3, "value"

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 85
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    .line 91
    :cond_0
    :goto_0
    monitor-exit v4

    .line 92
    .end local v2    # "sendNotify":Z
    :goto_1
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v5, "Error building retval"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    monitor-exit v4

    goto :goto_1

    .line 91
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "retval":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 88
    .restart local v1    # "retval":Lorg/json/JSONObject;
    .restart local v2    # "sendNotify":Z
    :cond_1
    if-eqz v2, :cond_0

    .line 89
    :try_start_3
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private static webRTCsendCurrent()V
    .locals 5

    .prologue
    .line 240
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 241
    .local v1, "output":Lorg/json/JSONObject;
    const-string v2, "status"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v2, "values"

    new-instance v3, Lorg/json/JSONArray;

    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ReplForm;->returnRetvals(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 249
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "RetValManager"

    const-string v3, "Error building retval"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
