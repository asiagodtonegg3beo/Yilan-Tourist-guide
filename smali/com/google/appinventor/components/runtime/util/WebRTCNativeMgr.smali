.class public Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
.super Ljava/lang/Object;
.source "WebRTCNativeMgr.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AppInvWebRTC"

.field private static final utf8Decoder:Ljava/nio/charset/CharsetDecoder;


# instance fields
.field private dataChannel:Lorg/webrtc/DataChannel;

.field dataObserver:Lorg/webrtc/DataChannel$Observer;

.field private first:Z

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private volatile haveLocalDescription:Z

.field private haveOffer:Z

.field private iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile keepPolling:Z

.field observer:Lorg/webrtc/PeerConnection$Observer;

.field private peerConnection:Lorg/webrtc/PeerConnection;

.field private rCode:Ljava/lang/String;

.field private random:Ljava/util/Random;

.field private rendezvousServer:Ljava/lang/String;

.field private rendezvousServer2:Ljava/lang/String;

.field sdpObserver:Lorg/webrtc/SdpObserver;

.field private seenNonces:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "rendezvousServer"    # Ljava/lang/String;
    .param p2, "rendezvousResult"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    .line 78
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    .line 80
    iput-boolean v9, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    .line 81
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveLocalDescription:Z

    .line 82
    iput-boolean v9, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    .line 83
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->random:Ljava/util/Random;

    .line 84
    iput-object v7, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    .line 85
    iput-object v7, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    .line 86
    iput-object v7, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    .line 87
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    .line 89
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    .line 92
    new-instance v6, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    .line 139
    new-instance v6, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->observer:Lorg/webrtc/PeerConnection$Observer;

    .line 214
    new-instance v6, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataObserver:Lorg/webrtc/DataChannel$Observer;

    .line 237
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    .line 238
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "OK"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    :cond_0
    const-string p2, "{\"rendezvous2\" : \"rendezvous.appinventor.mit.edu\",\"iceservers\" : [{ \"server\" : \"stun:stun.l.google.com:19302\" },{ \"server\" : \"turn:turn.appinventor.mit.edu:3478\",\"username\" : \"oh\",\"password\" : \"boy\"}]}"

    .line 248
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    .local v5, "resultJson":Lorg/json/JSONObject;
    const-string v6, "rendezvous2"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    .line 250
    const-string v6, "iceservers"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 251
    .local v3, "iceServerArray":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    .line 252
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 253
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 254
    .local v4, "jsonServer":Lorg/json/JSONObject;
    const-string v6, "server"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/webrtc/PeerConnection$IceServer;->builder(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    move-result-object v0

    .line 256
    .local v0, "builder":Lorg/webrtc/PeerConnection$IceServer$Builder;
    const-string v6, "AppInvWebRTC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding iceServer = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "server"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v6, "username"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 259
    const-string v6, "username"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/webrtc/PeerConnection$IceServer$Builder;->setUsername(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    .line 261
    :cond_2
    const-string v6, "password"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    const-string v6, "password"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/webrtc/PeerConnection$IceServer$Builder;->setPassword(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    .line 264
    :cond_3
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    invoke-virtual {v0}, Lorg/webrtc/PeerConnection$IceServer$Builder;->createIceServer()Lorg/webrtc/PeerConnection$IceServer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "builder":Lorg/webrtc/PeerConnection$IceServer$Builder;
    .end local v2    # "i":I
    .end local v3    # "iceServerArray":Lorg/json/JSONArray;
    .end local v4    # "jsonServer":Lorg/json/JSONObject;
    .end local v5    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "AppInvWebRTC"

    const-string v7, "parsing iceServers:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    return-void
.end method

.method private Poller()V
    .locals 28

    .prologue
    .line 301
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 434
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string v24, "AppInvWebRTC"

    const-string v25, "Poller() Called"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v24, "AppInvWebRTC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Poller: rendezvousServer2 = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 310
    .local v4, "client":Lorg/apache/http/client/HttpClient;
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "http://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/rendezvous2/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-s"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 311
    .local v15, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v4, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 312
    .local v16, "response":Lorg/apache/http/HttpResponse;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 314
    .local v18, "sb":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 316
    .local v13, "rd":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    .line 318
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 319
    .end local v13    # "rd":Ljava/io/BufferedReader;
    .local v14, "rd":Ljava/io/BufferedReader;
    :try_start_2
    const-string v10, ""

    .line 320
    .local v10, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 321
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 324
    .end local v10    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v24

    move-object v13, v14

    .end local v14    # "rd":Ljava/io/BufferedReader;
    .restart local v13    # "rd":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v13, :cond_1

    .line 325
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    :cond_1
    throw v24
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 427
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v13    # "rd":Ljava/io/BufferedReader;
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    .line 428
    .local v5, "e":Ljava/io/IOException;
    const-string v24, "AppInvWebRTC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Caught IOException: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 324
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v14    # "rd":Ljava/io/BufferedReader;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v14, :cond_3

    .line 325
    :try_start_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 329
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 331
    const-string v24, "AppInvWebRTC"

    const-string v25, "keepPolling is false, we\'re done!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 429
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v10    # "line":Ljava/lang/String;
    .end local v14    # "rd":Ljava/io/BufferedReader;
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v5

    .line 430
    .local v5, "e":Lorg/json/JSONException;
    const-string v24, "AppInvWebRTC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Caught JSONException: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 336
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v14    # "rd":Ljava/io/BufferedReader;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 339
    .local v17, "responseText":Ljava/lang/String;
    const-string v24, "AppInvWebRTC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "response = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v24, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 344
    const-string v24, "AppInvWebRTC"

    const-string v25, "Received an empty response"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 431
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v10    # "line":Ljava/lang/String;
    .end local v14    # "rd":Ljava/io/BufferedReader;
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "responseText":Ljava/lang/String;
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v5

    .line 432
    .local v5, "e":Ljava/lang/Exception;
    const-string v24, "AppInvWebRTC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Caught Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 350
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v14    # "rd":Ljava/io/BufferedReader;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v17    # "responseText":Ljava/lang/String;
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_6
    new-instance v9, Lorg/json/JSONArray;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 352
    .local v9, "jsonArray":Lorg/json/JSONArray;
    const-string v24, "AppInvWebRTC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "jsonArray.length() = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v7, 0x0

    .line 355
    .local v7, "i":I
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_c

    .line 357
    const-string v24, "AppInvWebRTC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "i = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v24, "AppInvWebRTC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "element = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 361
    .local v6, "element":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 362
    const-string v24, "offer"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 363
    add-int/lit8 v7, v7, 0x1

    .line 364
    goto :goto_3

    .line 366
    :cond_6
    const-string v24, "offer"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 367
    .local v12, "offer":Lorg/json/JSONObject;
    const-string v24, "sdp"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 368
    .local v19, "sdp":Ljava/lang/String;
    const-string v24, "type"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 369
    .local v23, "type":Ljava/lang/String;
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    .line 371
    const-string v24, "AppInvWebRTC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sdb = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v24, "AppInvWebRTC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "type = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v24, "AppInvWebRTC"

    const-string v25, "About to set remote offer"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v24, "AppInvWebRTC"

    const-string v25, "Got offer, about to set remote description (maincode)"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    move-object/from16 v25, v0

    new-instance v26, Lorg/webrtc/SessionDescription;

    sget-object v27, Lorg/webrtc/SessionDescription$Type;->OFFER:Lorg/webrtc/SessionDescription$Type;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/webrtc/SessionDescription;-><init>(Lorg/webrtc/SessionDescription$Type;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v26}, Lorg/webrtc/PeerConnection;->setRemoteDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    move-object/from16 v25, v0

    new-instance v26, Lorg/webrtc/MediaConstraints;

    invoke-direct/range {v26 .. v26}, Lorg/webrtc/MediaConstraints;-><init>()V

    invoke-virtual/range {v24 .. v26}, Lorg/webrtc/PeerConnection;->createAnswer(Lorg/webrtc/SdpObserver;Lorg/webrtc/MediaConstraints;)V

    .line 382
    const-string v24, "AppInvWebRTC"

    const-string v25, "createAnswer returned"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v7, -0x1

    .line 422
    .end local v12    # "offer":Lorg/json/JSONObject;
    .end local v19    # "sdp":Ljava/lang/String;
    .end local v23    # "type":Ljava/lang/String;
    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 423
    goto/16 :goto_3

    .line 385
    :cond_8
    const-string v24, "nonce"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 386
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveLocalDescription:Z

    move/from16 v24, v0

    if-nez v24, :cond_9

    .line 388
    const-string v24, "AppInvWebRTC"

    const-string v25, "Incoming candidate before local description set, punting"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 392
    :cond_9
    const-string v24, "offer"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 393
    add-int/lit8 v7, v7, 0x1

    .line 395
    const-string v24, "AppInvWebRTC"

    const-string v25, "skipping offer, already processed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 399
    :cond_a
    const-string v24, "candidate"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 400
    add-int/lit8 v7, v7, 0x1

    .line 402
    goto/16 :goto_3

    .line 404
    :cond_b
    const-string v24, "nonce"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 405
    .local v11, "nonce":Ljava/lang/String;
    const-string v24, "candidate"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 406
    .local v3, "candidate":Lorg/json/JSONObject;
    const-string v24, "candidate"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 407
    .local v22, "sdpcandidate":Ljava/lang/String;
    const-string v24, "sdpMid"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 408
    .local v21, "sdpMid":Ljava/lang/String;
    const-string v24, "sdpMLineIndex"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    .line 409
    .local v20, "sdpMLineIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 412
    const-string v24, "AppInvWebRTC"

    const-string v25, "new nonce, about to add candidate!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v24, "AppInvWebRTC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "candidate = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v8, Lorg/webrtc/IceCandidate;

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v8, v0, v1, v2}, Lorg/webrtc/IceCandidate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    .local v8, "iceCandidate":Lorg/webrtc/IceCandidate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lorg/webrtc/PeerConnection;->addIceCandidate(Lorg/webrtc/IceCandidate;)Z

    .line 418
    const-string v24, "AppInvWebRTC"

    const-string v25, "addIceCandidate returned"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 425
    .end local v3    # "candidate":Lorg/json/JSONObject;
    .end local v6    # "element":Lorg/json/JSONObject;
    .end local v8    # "iceCandidate":Lorg/webrtc/IceCandidate;
    .end local v11    # "nonce":Ljava/lang/String;
    .end local v20    # "sdpMLineIndex":I
    .end local v21    # "sdpMid":Ljava/lang/String;
    .end local v22    # "sdpcandidate":Ljava/lang/String;
    :cond_c
    const-string v24, "AppInvWebRTC"

    const-string v25, "exited loop"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 324
    .end local v7    # "i":I
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "line":Ljava/lang/String;
    .end local v14    # "rd":Ljava/io/BufferedReader;
    .end local v17    # "responseText":Ljava/lang/String;
    .restart local v13    # "rd":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v24

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lorg/webrtc/PeerConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveLocalDescription:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sendRendezvous(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/webrtc/DataChannel;)Lorg/webrtc/DataChannel;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    .param p1, "x1"    # Lorg/webrtc/DataChannel;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/TreeSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->random:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$700()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->Poller()V

    return-void
.end method

.method private sendRendezvous(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 437
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 464
    return-void
.end method


# virtual methods
.method public initiate(Lcom/google/appinventor/components/runtime/ReplForm;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/ReplForm;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 274
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/webrtc/PeerConnectionFactory;->initializeAndroidGlobals(Landroid/content/Context;Z)V

    .line 278
    new-instance v7, Lorg/webrtc/PeerConnectionFactory$Options;

    invoke-direct {v7}, Lorg/webrtc/PeerConnectionFactory$Options;-><init>()V

    .line 280
    .local v7, "options":Lorg/webrtc/PeerConnectionFactory$Options;
    new-instance v6, Lorg/webrtc/PeerConnectionFactory;

    invoke-direct {v6, v7}, Lorg/webrtc/PeerConnectionFactory;-><init>(Lorg/webrtc/PeerConnectionFactory$Options;)V

    .line 282
    .local v6, "factory":Lorg/webrtc/PeerConnectionFactory;
    new-instance v8, Lorg/webrtc/PeerConnection$RTCConfiguration;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    invoke-direct {v8, v0}, Lorg/webrtc/PeerConnection$RTCConfiguration;-><init>(Ljava/util/List;)V

    .line 283
    .local v8, "rtcConfig":Lorg/webrtc/PeerConnection$RTCConfiguration;
    sget-object v0, Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;->GATHER_CONTINUALLY:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    iput-object v0, v8, Lorg/webrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    .line 284
    new-instance v0, Lorg/webrtc/MediaConstraints;

    invoke-direct {v0}, Lorg/webrtc/MediaConstraints;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->observer:Lorg/webrtc/PeerConnection$Observer;

    invoke-virtual {v6, v8, v0, v1}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    .line 286
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 292
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 5
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 468
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    if-nez v3, :cond_0

    .line 469
    const-string v3, "AppInvWebRTC"

    const-string v4, "No Data Channel in Send"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-void

    .line 472
    :cond_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 473
    .local v0, "bbuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Lorg/webrtc/DataChannel$Buffer;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lorg/webrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 474
    .local v1, "buffer":Lorg/webrtc/DataChannel$Buffer;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    invoke-virtual {v3, v1}, Lorg/webrtc/DataChannel;->send(Lorg/webrtc/DataChannel$Buffer;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    .end local v0    # "bbuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "buffer":Lorg/webrtc/DataChannel$Buffer;
    :catch_0
    move-exception v2

    .line 476
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "AppInvWebRTC"

    const-string v4, "While encoding data to send to companion"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
