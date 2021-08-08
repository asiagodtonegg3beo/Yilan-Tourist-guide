.class public Lcom/google/appinventor/components/runtime/PhoneCall;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "PhoneCall.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A non-visible component that makes a phone call to the number specified in the <code>PhoneNumber</code> property, which can be set either in the Designer or Blocks Editor. The component has a <code>MakePhoneCall</code> method, enabling the program to launch a phone call.</p><p>Often, this component is used with the <code>ContactPicker</code> component, which lets the user select a contact from the ones stored on the phone and sets the <code>PhoneNumber</code> property to the contact\'s phone number.</p><p>To directly specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text with the specified digits (e.g., \"6505551212\").  Dashes, dots, and parentheses may be included (e.g., \"(650)-555-1212\") but will be ignored; spaces may not be included.</p>"
    iconName = "images/phoneCall.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;
    }
.end annotation


# static fields
.field private static final PHONECALL_REQUEST_CODE:I = 0x50484f4e


# instance fields
.field private final callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

.field private final context:Landroid/content/Context;

.field private didRegisterReceiver:Z

.field private havePermission:Z

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 90
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->havePermission:Z

    .line 91
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->didRegisterReceiver:Z

    .line 100
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    const v1, 0x50484f4e

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V

    .line 103
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneNumber(Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/PhoneCall;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PhoneCall;->registerCallStateMonitor()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/PhoneCall;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/PhoneCall;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->havePermission:Z

    return p1
.end method

.method private registerCallStateMonitor()V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->didRegisterReceiver:Z

    .line 329
    return-void
.end method

.method private unregisterCallStateMonitor()V
    .locals 2

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->didRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->didRegisterReceiver:Z

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method public IncomingCallAnswered(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that an incoming phone call is answered. phoneNumber is the incoming call phone number."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.PROCESS_OUTGOING_CALLS",
            "android.permission.READ_CALL_LOG",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .prologue
    .line 251
    const-string v0, "IncomingCallAnswered"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public Initialize()V
    .locals 6

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->doesAppDeclarePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/PhoneCall$1;

    const-string v2, "Initialize"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "android.permission.READ_PHONE_STATE"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "android.permission.READ_CALL_LOG"

    aput-object v5, v3, v4

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/google/appinventor/components/runtime/PhoneCall$1;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 118
    :cond_0
    return-void
.end method

.method public MakePhoneCall()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launches the default dialer app set to start a phone call usingthe number in the PhoneNumber property."
    .end annotation

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    const v2, 0x50484f4e

    invoke-virtual {v1, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 151
    :cond_0
    return-void
.end method

.method public MakePhoneCallDirect()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Directly initiates a phone call using the number in the PhoneNumber property."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.CALL_PHONE"
        }
    .end annotation

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->havePermission:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.CALL_PHONE"

    new-instance v2, Lcom/google/appinventor/components/runtime/PhoneCall$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/PhoneCall$2;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/PhoneCallUtil;->makePhoneCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public PhoneCallEnded(ILjava/lang/String;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a phone call has ended. If status is 1, incoming call is missed or rejected; if status is 2, incoming call is answered before hanging up; if status is 3, outgoing call is hung up. phoneNumber is the ended call phone number."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.PROCESS_OUTGOING_CALLS",
            "android.permission.READ_CALL_LOG",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .prologue
    .line 231
    const-string v0, "PhoneCallEnded"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public PhoneCallStarted(ILjava/lang/String;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a phonecall has started. If status is 1, incoming call is ringing; if status is 2, outgoing call is dialled. phoneNumber is the incoming/outgoing phone number."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.PROCESS_OUTGOING_CALLS",
            "android.permission.READ_CALL_LOG",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .prologue
    .line 203
    const-string v0, "PhoneCallStarted"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PhoneCall;->unregisterCallStateMonitor()V

    .line 344
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 256
    const v0, 0x50484f4e

    if-ne p1, v0, :cond_0

    .line 257
    const/4 v0, 0x2

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStarted(ILjava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method
