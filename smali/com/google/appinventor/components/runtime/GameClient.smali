.class public Lcom/google/appinventor/components/runtime/GameClient;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "GameClient.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Provides a way for applications to communicate with online game servers"
    iconName = "images/gameClient.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, com.google.android.googleapps.permission.GOOGLE_AUTH"
.end annotation


# static fields
.field private static final COMMAND_ARGUMENTS_KEY:Ljava/lang/String; = "args"

.field private static final COMMAND_TYPE_KEY:Ljava/lang/String; = "command"

.field private static final COUNT_KEY:Ljava/lang/String; = "count"

.field private static final ERROR_RESPONSE_KEY:Ljava/lang/String; = "e"

.field private static final GAME_ID_KEY:Ljava/lang/String; = "gid"

.field private static final GET_INSTANCE_LISTS_COMMAND:Ljava/lang/String; = "getinstancelists"

.field private static final GET_MESSAGES_COMMAND:Ljava/lang/String; = "messages"

.field private static final INSTANCE_ID_KEY:Ljava/lang/String; = "iid"

.field private static final INSTANCE_PUBLIC_KEY:Ljava/lang/String; = "makepublic"

.field private static final INVITED_LIST_KEY:Ljava/lang/String; = "invited"

.field private static final INVITEE_KEY:Ljava/lang/String; = "inv"

.field private static final INVITE_COMMAND:Ljava/lang/String; = "invite"

.field private static final JOINED_LIST_KEY:Ljava/lang/String; = "joined"

.field private static final JOIN_INSTANCE_COMMAND:Ljava/lang/String; = "joininstance"

.field private static final LEADER_KEY:Ljava/lang/String; = "leader"

.field private static final LEAVE_INSTANCE_COMMAND:Ljava/lang/String; = "leaveinstance"

.field private static final LOG_TAG:Ljava/lang/String; = "GameClient"

.field private static final MESSAGES_LIST_KEY:Ljava/lang/String; = "messages"

.field private static final MESSAGE_CONTENT_KEY:Ljava/lang/String; = "contents"

.field private static final MESSAGE_RECIPIENTS_KEY:Ljava/lang/String; = "mrec"

.field private static final MESSAGE_SENDER_KEY:Ljava/lang/String; = "msender"

.field private static final MESSAGE_TIME_KEY:Ljava/lang/String; = "mtime"

.field private static final NEW_INSTANCE_COMMAND:Ljava/lang/String; = "newinstance"

.field private static final NEW_MESSAGE_COMMAND:Ljava/lang/String; = "newmessage"

.field private static final PLAYERS_LIST_KEY:Ljava/lang/String; = "players"

.field private static final PLAYER_ID_KEY:Ljava/lang/String; = "pid"

.field private static final PUBLIC_LIST_KEY:Ljava/lang/String; = "public"

.field private static final SERVER_COMMAND:Ljava/lang/String; = "servercommand"

.field private static final SERVER_RETURN_VALUE_KEY:Ljava/lang/String; = "response"

.field private static final SET_LEADER_COMMAND:Ljava/lang/String; = "setleader"

.field private static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private activityContext:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private gameId:Ljava/lang/String;

.field private instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

.field private invitedInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private joinedInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private publicInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceUrl:Ljava/lang/String;

.field private userEmailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 148
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->userEmailAddress:Ljava/lang/String;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    .line 153
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->activityContext:Landroid/app/Activity;

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->gameId:Ljava/lang/String;

    .line 157
    new-instance v0, Lcom/google/appinventor/components/runtime/util/GameInstance;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/GameInstance;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 158
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->joinedInstances:Ljava/util/List;

    .line 159
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->invitedInstances:Ljava/util/List;

    .line 160
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->publicInstances:Ljava/util/List;

    .line 161
    const-string v0, "http://appinvgameserver.appspot.com"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->serviceUrl:Ljava/lang/String;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/GameClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GameClient;->postGetInstanceLists()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->processInstanceLists(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->postSetLeader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->updateInstanceInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient;->postGetMessages(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/GameClient;)Lcom/google/appinventor/components/runtime/util/GameInstance;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/GameClient;Lcom/google/appinventor/components/runtime/util/GameInstance;)Lcom/google/appinventor/components/runtime/util/GameInstance;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/util/GameInstance;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->postInvite(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/GameClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GameClient;->postLeaveInstance()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Boolean;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient;->postMakeNewInstance(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "x3"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GameClient;->postNewMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient;->postServerCommand(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GameClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->postSetInstance(Ljava/lang/String;)V

    return-void
.end method

.method private postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 1
    .param p1, "commandName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1129
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V

    .line 1130
    return-void
.end method

.method private postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V
    .locals 6
    .param p1, "commandName"    # Ljava/lang/String;
    .param p4, "allowInstanceIdChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Lorg/json/JSONObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1135
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$32;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/GameClient$32;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;ZLjava/util/List;)V

    .line 1181
    .local v0, "thisCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->ServiceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommandReturningObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1183
    return-void
.end method

.method private postGetInstanceLists()V
    .locals 7

    .prologue
    .line 629
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$15;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$15;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 639
    .local v0, "readMessagesCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "getinstancelists"

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    .line 641
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    .line 642
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    .line 643
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 640
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 639
    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 645
    return-void
.end method

.method private postGetMessages(Ljava/lang/String;I)V
    .locals 7
    .param p1, "requestedType"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 713
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$17;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$17;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    .line 745
    .local v0, "myCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    const-string v1, "You must join an instance before attempting to fetch messages."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 759
    :goto_0
    return-void

    .line 750
    :cond_0
    const-string v1, "messages"

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    .line 752
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    .line 753
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    .line 754
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "count"

    .line 755
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mtime"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 756
    invoke-virtual {v6, p1}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getMessageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "type"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 751
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 750
    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private postInvite(Ljava/lang/String;)V
    .locals 7
    .param p1, "inviteeEmail"    # Ljava/lang/String;

    .prologue
    .line 782
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$19;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$19;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 803
    .local v0, "inviteCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    const-string v1, "You must have joined an instance before you can invite new players."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 815
    :goto_0
    return-void

    .line 808
    :cond_0
    const-string v1, "invite"

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    .line 810
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    .line 811
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    .line 812
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "inv"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 809
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 808
    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private postLeaveInstance()V
    .locals 7

    .prologue
    .line 841
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$21;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$21;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 852
    .local v0, "setInstanceCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "leaveinstance"

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    .line 854
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    .line 855
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    .line 856
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 853
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 852
    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 858
    return-void
.end method

.method private postMakeNewInstance(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "requestedInstanceId"    # Ljava/lang/String;
    .param p2, "makePublic"    # Ljava/lang/Boolean;

    .prologue
    const/4 v7, 0x1

    .line 889
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$23;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$23;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 900
    .local v0, "makeNewGameCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "newinstance"

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    .line 902
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "gid"

    .line 903
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v7

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "makepublic"

    .line 905
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 901
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 900
    invoke-direct {p0, v1, v2, v0, v7}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V

    .line 907
    return-void
.end method

.method private postNewMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "recipients"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "contents"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 936
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$25;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$25;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 945
    .local v0, "myCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    const-string v1, "You must have joined an instance before you can send messages."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 960
    :goto_0
    return-void

    .line 950
    :cond_0
    const-string v1, "newmessage"

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    .line 952
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    .line 953
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    .line 954
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "type"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mrec"

    .line 956
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "contents"

    .line 957
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mtime"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 958
    invoke-virtual {v6, p1}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getMessageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 951
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 950
    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private postServerCommand(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "arguments"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 984
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$27;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$27;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1002
    .local v0, "myCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "GameClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to post "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with args "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v1, "servercommand"

    const/4 v2, 0x5

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    .line 1005
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    .line 1006
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    .line 1007
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "command"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "args"

    .line 1009
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 1004
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1003
    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1011
    return-void
.end method

.method private postSetInstance(Ljava/lang/String;)V
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1039
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$29;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$29;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 1049
    .local v0, "setInstanceCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const-string v1, "joininstance"

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    .line 1051
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "iid"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v7

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    .line 1053
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 1050
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1049
    invoke-direct {p0, v1, v2, v0, v7}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V

    .line 1055
    return-void
.end method

.method private postSetLeader(Ljava/lang/String;)V
    .locals 7
    .param p1, "newLeader"    # Ljava/lang/String;

    .prologue
    .line 1080
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$31;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$31;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 1089
    .local v0, "setLeaderCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    const-string v1, "You must join an instance before attempting to set a leader."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 1101
    :goto_0
    return-void

    .line 1094
    :cond_0
    const-string v1, "setleader"

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gid"

    .line 1096
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "iid"

    .line 1097
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pid"

    .line 1098
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "leader"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 1095
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1094
    invoke-direct {p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private processInstanceLists(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "instanceLists"    # Lorg/json/JSONObject;

    .prologue
    .line 649
    :try_start_0
    const-string v5, "joined"

    .line 650
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 649
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/GameClient;->joinedInstances:Ljava/util/List;

    .line 652
    const-string v5, "public"

    .line 653
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 652
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/GameClient;->publicInstances:Ljava/util/List;

    .line 655
    const-string v5, "invited"

    .line 656
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 655
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 658
    .local v4, "receivedInstancesInvited":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InvitedInstances()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 659
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient;->invitedInstances:Ljava/util/List;

    .line 660
    .local v3, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/GameClient;->invitedInstances:Ljava/util/List;

    .line 661
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 662
    .local v2, "newInvites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 664
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 665
    .local v1, "instanceInvited":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Invited(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 669
    .end local v1    # "instanceInvited":Ljava/lang/String;
    .end local v2    # "newInvites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "receivedInstancesInvited":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "GameClient"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    const-string v5, "Instance lists failed to parse."

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 673
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method private updateInstanceInfo(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "responseObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1186
    const/4 v1, 0x0

    .line 1187
    .local v1, "newLeader":Z
    const-string v5, "leader"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, "leader":Ljava/lang/String;
    const-string v5, "players"

    .line 1189
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1188
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 1191
    .local v4, "receivedPlayers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->Leader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1192
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v5, v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->setLeader(Ljava/lang/String;)V

    .line 1193
    const/4 v1, 0x1

    .line 1196
    :cond_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v5, v4}, Lcom/google/appinventor/components/runtime/util/GameInstance;->setPlayers(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    move-result-object v3

    .line 1197
    .local v3, "playersDelta":Lcom/google/appinventor/components/runtime/util/PlayerListDelta;
    sget-object v5, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->NO_CHANGE:Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    if-eq v3, v5, :cond_2

    .line 1198
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->getPlayersRemoved()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1199
    .local v2, "player":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/GameClient;->PlayerLeft(Ljava/lang/String;)V

    goto :goto_0

    .line 1201
    .end local v2    # "player":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->getPlayersAdded()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1202
    .restart local v2    # "player":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/GameClient;->PlayerJoined(Ljava/lang/String;)V

    goto :goto_1

    .line 1206
    .end local v2    # "player":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 1207
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->Leader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/GameClient;->NewLeader(Ljava/lang/String;)V

    .line 1209
    :cond_3
    return-void
.end method


# virtual methods
.method public FunctionCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a function call completed."
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$1;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method

.method public GameId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The game name for this application. The same game ID can have one or more game instances."
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public GameId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->gameId:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public GetInstanceLists()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Updates the InstancesJoined and InstancesInvited lists. This procedure can be called before setting the InstanceId."
    .end annotation

    .prologue
    .line 624
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$14;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$14;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 626
    return-void
.end method

.method public GetMessages(Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieves messages of the specified type."
    .end annotation

    .prologue
    .line 708
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$16;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 710
    return-void
.end method

.method public GotMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new message has been received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p3, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GameClient$2;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    return-void
.end method

.method public Info(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that something has occurred which the player should know about."
    .end annotation

    .prologue
    .line 585
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$12;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$12;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 591
    return-void
.end method

.method public Initialize()V
    .locals 3

    .prologue
    .line 387
    const-string v0, "GameClient"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->gameId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "Game Id must not be empty."

    const-string v2, "GameClient Configuration Error."

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    return-void
.end method

.method public InstanceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The game instance id.  Taken together,the game ID and the instance ID uniquely identify the game."
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public InstanceIdChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the InstanceId property has changed as a result of calling MakeNewInstance or SetInstance."
    .end annotation

    .prologue
    .line 422
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance id changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$3;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method public Invite(Ljava/lang/String;)V
    .locals 1
    .param p1, "playerEmail"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Invites a player to this game instance."
    .end annotation

    .prologue
    .line 777
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$18;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$18;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 779
    return-void
.end method

.method public Invited(Ljava/lang/String;)V
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a user has been invited to this game instance."
    .end annotation

    .prologue
    .line 439
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player invited to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$4;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    return-void
.end method

.method public InvitedInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The set of game instances to which this player has been invited but has not yet joined.  To ensure current values are returned, first invoke GetInstanceLists."
    .end annotation

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
    .line 234
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->invitedInstances:Ljava/util/List;

    return-object v0
.end method

.method public JoinedInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The set of game instances in which this player is participating.  To ensure current values are returned, first invoke GetInstanceLists."
    .end annotation

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
    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->joinedInstances:Ljava/util/List;

    return-object v0
.end method

.method public Leader()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The game\'s leader. At any time, each game instance has only one leader, but the leader may change with time.  Initially, the leader is the game instance creator. Application writers determine special properties of the leader. The leader value is updated each time a successful communication is made with the server."
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getLeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LeaveInstance()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Leaves the current instance."
    .end annotation

    .prologue
    .line 833
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$20;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$20;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 838
    return-void
.end method

.method public MakeNewInstance(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "makePublic"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Asks the server to create a new instance of this game."
    .end annotation

    .prologue
    .line 884
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$22;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 886
    return-void
.end method

.method public NewInstanceMade(Ljava/lang/String;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new instance was successfully created after calling MakeNewInstance."
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$6;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$6;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    return-void
.end method

.method public NewLeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "playerId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that this game has a new leader as specified through SetLeader"
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$5;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 464
    return-void
.end method

.method public PlayerJoined(Ljava/lang/String;)V
    .locals 2
    .param p1, "playerId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new player has joined this game instance."
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$7;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$7;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method public PlayerLeft(Ljava/lang/String;)V
    .locals 2
    .param p1, "playerId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a player has left this game instance."
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$8;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$8;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    return-void
.end method

.method public Players()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The current set of players for this game instance. Each player is designated by an email address, which is a string. The list of players is updated each time a successful communication is made with the game server."
    .end annotation

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
    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getPlayers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public PublicInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The set of game instances that have been marked public. To ensure current values are returned, first invoke {@link #GetInstanceLists}. "
    .end annotation

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
    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->publicInstances:Ljava/util/List;

    return-object v0
.end method

.method public SendMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "recipients"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "contents"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends a keyed message to all recipients in the recipients list. The message will consist of the contents list."
    .end annotation

    .prologue
    .line 931
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$24;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GameClient$24;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 933
    return-void
.end method

.method public ServerCommand(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "arguments"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends the specified command to the game server."
    .end annotation

    .prologue
    .line 979
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$26;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 981
    return-void
.end method

.method public ServerCommandFailure(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "arguments"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a server command failed."
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$9;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void
.end method

.method public ServerCommandSuccess(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a server command returned successfully."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p2, "response":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server command returned."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$10;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    return-void
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "http://appinvgameserver.appspot.com"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 321
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->serviceUrl:Ljava/lang/String;

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->serviceUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public ServiceUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL of the game server."
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->serviceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public SetInstance(Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets InstanceId and joins the specified instance."
    .end annotation

    .prologue
    .line 1022
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$28;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$28;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1036
    return-void
.end method

.method public SetLeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "playerEmail"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Tells the server to set the leader to playerId. Only the current leader may successfully set a new leader."
    .end annotation

    .prologue
    .line 1075
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$30;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$30;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1077
    return-void
.end method

.method public UserEmailAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The email address that is being used as the player id for this game client.   At present, users must set this manually in oder to join a game.  But this property will change in the future so that is set automatically, and users will not be able to change it."
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->userEmailAddress:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "User email address is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->userEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public UserEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 359
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->userEmailAddress:Ljava/lang/String;

    .line 360
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddressSet(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public UserEmailAddressSet(Ljava/lang/String;)V
    .locals 2
    .param p1, "emailAddress"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the user email address has been set."
    .end annotation

    .prologue
    .line 566
    const-string v0, "GameClient"

    const-string v1, "Email address set."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$11;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$11;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    return-void
.end method

.method public WebServiceError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that an error occurred while communicating with the web server."
    .end annotation

    .prologue
    .line 604
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebServiceError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$13;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 609
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1112
    const-string v0, "GameClient"

    const-string v1, "Activity Resumed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1121
    const-string v0, "GameClient"

    const-string v1, "Activity Stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void
.end method
