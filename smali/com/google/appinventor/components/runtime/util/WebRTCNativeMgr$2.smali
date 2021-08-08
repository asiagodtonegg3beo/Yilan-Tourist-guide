.class Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;
.super Ljava/lang/Object;
.source "WebRTCNativeMgr.java"

# interfaces
.implements Lorg/webrtc/PeerConnection$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddStream(Lorg/webrtc/MediaStream;)V
    .locals 0
    .param p1, "mediaStream"    # Lorg/webrtc/MediaStream;

    .prologue
    .line 141
    return-void
.end method

.method public onAddTrack(Lorg/webrtc/RtpReceiver;[Lorg/webrtc/MediaStream;)V
    .locals 0
    .param p1, "rtpReceiver"    # Lorg/webrtc/RtpReceiver;
    .param p2, "mediaStreamArr"    # [Lorg/webrtc/MediaStream;

    .prologue
    .line 144
    return-void
.end method

.method public onDataChannel(Lorg/webrtc/DataChannel;)V
    .locals 2
    .param p1, "dataChannel"    # Lorg/webrtc/DataChannel;

    .prologue
    .line 148
    const-string v0, "AppInvWebRTC"

    const-string v1, "Have Data Channel!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "AppInvWebRTC"

    const-string v1, "v5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$302(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/webrtc/DataChannel;)Lorg/webrtc/DataChannel;

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataObserver:Lorg/webrtc/DataChannel$Observer;

    invoke-virtual {p1, v0}, Lorg/webrtc/DataChannel;->registerObserver(Lorg/webrtc/DataChannel$Observer;)V

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$402(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 156
    const-string v0, "AppInvWebRTC"

    const-string v1, "Poller() Canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$500(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 159
    return-void
.end method

.method public onIceCandidate(Lorg/webrtc/IceCandidate;)V
    .locals 6
    .param p1, "iceCandidate"    # Lorg/webrtc/IceCandidate;

    .prologue
    .line 164
    :try_start_0
    const-string v3, "AppInvWebRTC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IceCandidate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/webrtc/IceCandidate;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v3, p1, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 166
    const-string v3, "AppInvWebRTC"

    const-string v4, "IceCandidate is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .local v2, "response":Lorg/json/JSONObject;
    const-string v3, "nonce"

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$600(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/Random;

    move-result-object v4

    const v5, 0x186a0

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v1, "jsonCandidate":Lorg/json/JSONObject;
    const-string v3, "candidate"

    iget-object v4, p1, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v3, "sdpMLineIndex"

    iget v4, p1, Lorg/webrtc/IceCandidate;->sdpMLineIndex:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    const-string v3, "sdpMid"

    iget-object v4, p1, Lorg/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v3, "candidate"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$200(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V

    .line 183
    .end local v1    # "jsonCandidate":Lorg/json/JSONObject;
    .end local v2    # "response":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 168
    :cond_0
    const-string v3, "AppInvWebRTC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IceCandidateSDP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AppInvWebRTC"

    const-string v4, "Exception during onIceCandidate"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onIceCandidatesRemoved([Lorg/webrtc/IceCandidate;)V
    .locals 0
    .param p1, "iceCandidateArr"    # [Lorg/webrtc/IceCandidate;

    .prologue
    .line 186
    return-void
.end method

.method public onIceConnectionChange(Lorg/webrtc/PeerConnection$IceConnectionState;)V
    .locals 0
    .param p1, "iceConnectionState"    # Lorg/webrtc/PeerConnection$IceConnectionState;

    .prologue
    .line 189
    return-void
.end method

.method public onIceConnectionReceivingChange(Z)V
    .locals 0
    .param p1, "z"    # Z

    .prologue
    .line 192
    return-void
.end method

.method public onIceGatheringChange(Lorg/webrtc/PeerConnection$IceGatheringState;)V
    .locals 3
    .param p1, "iceGatheringState"    # Lorg/webrtc/PeerConnection$IceGatheringState;

    .prologue
    .line 196
    const-string v0, "AppInvWebRTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIceGatheringChange: iceGatheringState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public onRemoveStream(Lorg/webrtc/MediaStream;)V
    .locals 0
    .param p1, "mediaStream"    # Lorg/webrtc/MediaStream;

    .prologue
    .line 201
    return-void
.end method

.method public onRenegotiationNeeded()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onSignalingChange(Lorg/webrtc/PeerConnection$SignalingState;)V
    .locals 3
    .param p1, "signalingState"    # Lorg/webrtc/PeerConnection$SignalingState;

    .prologue
    .line 208
    const-string v0, "AppInvWebRTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalingChange: signalingState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method
