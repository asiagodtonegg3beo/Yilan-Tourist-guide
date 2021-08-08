.class public Lcom/google/appinventor/components/runtime/ContactPicker;
.super Lcom/google/appinventor/components/runtime/Picker;
.source "ContactPicker.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A button that, when clicked on, displays a list of the contacts to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul>\n<li> <code>ContactName</code>: the contact\'s name </li>\n <li> <code>EmailAddress</code>: the contact\'s primary email address </li>\n <li> <code>ContactUri</code>: the contact\'s URI on the device </li>\n<li> <code>EmailAddressList</code>: a list of the contact\'s email addresses </li>\n <li> <code>PhoneNumber</code>: the contact\'s primary phone number (on Later Android Verisons)</li>\n <li> <code>PhoneNumberList</code>: a list of the contact\'s phone numbers (on Later Android Versions)</li>\n <li> <code>Picture</code>: the name of the file containing the contact\'s image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul>\n</p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).\n</p><p>The ContactPicker component might not work on all phones. For example, on Android systems before system 3.0, it cannot pick phone numbers, and the list of email addresses will contain only one email."
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# static fields
.field private static CONTACT_PROJECTION:[Ljava/lang/String; = null

.field private static DATA_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_INDEX:I = 0x1

.field private static final NAME_INDEX:I = 0x0

.field private static final PHONE_INDEX:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field protected final activityContext:Landroid/app/Activity;

.field protected contactName:Ljava/lang/String;

.field protected contactPictureUri:Ljava/lang/String;

.field protected contactUri:Ljava/lang/String;

.field protected emailAddress:Ljava/lang/String;

.field protected emailAddressList:Ljava/util/List;

.field private havePermission:Z

.field private final intentUri:Landroid/net/Uri;

.field protected phoneNumber:Ljava/lang/String;

.field protected phoneNumberList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/appinventor/components/runtime/ContactPicker;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 113
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V

    .line 114
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "intentUri"    # Landroid/net/Uri;

    .prologue
    const/16 v1, 0xc

    .line 117
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Picker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->havePermission:Z

    .line 118
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    .line 120
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->intentUri:Landroid/net/Uri;

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->intentUri:Landroid/net/Uri;

    goto :goto_0

    .line 125
    :cond_1
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->intentUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/ContactPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ContactPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->havePermission:Z

    return p1
.end method


# virtual methods
.method public ContactName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ContactUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "URI that specifies the location of the contact on the device."
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EmailAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EmailAddressList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddressList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public PhoneNumberList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumberList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ViewContact(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "view a contact via its URI"
    .end annotation

    .prologue
    .line 230
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 236
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .param p1, "suspectUri"    # Landroid/net/Uri;
    .param p2, "requiredPattern"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x453

    const/4 v1, 0x0

    .line 402
    const-string v2, "ContactPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contactUri is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-eqz p1, :cond_0

    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 404
    :cond_0
    const-string v2, "ContactPicker"

    const-string v3, "checkContactUri failed: A"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/ContactPicker;->puntContactSelection(I)V

    .line 416
    :goto_0
    return v1

    .line 409
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "UriSpecific":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 411
    const-string v2, "ContactPicker"

    const-string v3, "checkContactUri failed: C"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v2, "ContactPicker"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/ContactPicker;->puntContactSelection(I)V

    goto :goto_0

    .line 416
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public click()V
    .locals 3

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->havePermission:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    new-instance v2, Lcom/google/appinventor/components/runtime/ContactPicker$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/ContactPicker$1;-><init>(Lcom/google/appinventor/components/runtime/ContactPicker;)V

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Picker;->click()V

    goto :goto_0
.end method

.method protected ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    const-string p1, ""

    .line 487
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected ensureNotNull(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p1, "value"    # Ljava/util/List;

    .prologue
    .line 492
    if-nez p1, :cond_0

    .line 493
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "value":Ljava/util/List;
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 495
    :cond_0
    return-object p1
.end method

.method protected getEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "emailId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 435
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 440
    .local v9, "id":I
    const-string v7, ""

    .line 441
    .local v7, "data":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_methods._id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data"

    aput-object v0, v2, v5

    .line 445
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 449
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 453
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 457
    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "data":Ljava/lang/String;
    .end local v9    # "id":I
    :goto_0
    return-object v0

    .line 436
    :catch_0
    move-exception v8

    .line 437
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v0, ""

    goto :goto_0

    .line 453
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v9    # "id":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->intentUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "index"    # I

    .prologue
    .line 473
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 480
    .local v1, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 474
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public postHoneycombGetContactEmailAndPhone(Landroid/database/Cursor;)V
    .locals 12
    .param p1, "dataCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x0

    .line 348
    const-string v8, ""

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    .line 349
    const-string v8, ""

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 350
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v5, "phoneListToStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v3, "emailListToStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 354
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 355
    .local v2, "PHONE_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailIndex(Landroid/database/Cursor;)I

    move-result v0

    .line 356
    .local v0, "EMAIL_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getMimeIndex(Landroid/database/Cursor;)I

    move-result v1

    .line 358
    .local v1, "MIME_INDEX":I
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneType()Ljava/lang/String;

    move-result-object v6

    .line 359
    .local v6, "phoneType":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailType()Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "emailType":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_2

    .line 362
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    .line 363
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 364
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 366
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 368
    :cond_1
    const-string v8, "ContactPicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Type mismatch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 376
    .end local v0    # "EMAIL_INDEX":I
    .end local v1    # "MIME_INDEX":I
    .end local v2    # "PHONE_INDEX":I
    .end local v4    # "emailType":Ljava/lang/String;
    .end local v6    # "phoneType":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 377
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    .line 379
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 380
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 382
    :cond_4
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumberList:Ljava/util/List;

    .line 383
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddressList:Ljava/util/List;

    .line 385
    return-void
.end method

.method public postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 8
    .param p1, "contactCursor"    # Landroid/database/Cursor;

    .prologue
    .line 328
    const-string v4, ""

    .line 329
    .local v4, "id":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getIdIndex(Landroid/database/Cursor;)I

    move-result v0

    .line 331
    .local v0, "ID_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getNameIndex(Landroid/database/Cursor;)I

    move-result v1

    .line 332
    .local v1, "NAME_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getThumbnailIndex(Landroid/database/Cursor;)I

    move-result v3

    .line 333
    .local v3, "THUMBNAIL_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhotoIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 334
    .local v2, "PHOTO_INDEX":I
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    .line 336
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 338
    const-string v5, "ContactPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "photo_uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v0    # "ID_INDEX":I
    .end local v1    # "NAME_INDEX":I
    .end local v2    # "PHOTO_INDEX":I
    .end local v3    # "THUMBNAIL_INDEX":I
    :cond_0
    return-object v4
.end method

.method public preHoneycombGetContactInfo(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 5
    .param p1, "contactCursor"    # Landroid/database/Cursor;
    .param p2, "theContactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 313
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    .line 315
    invoke-virtual {p0, p1, v4}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "emailId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->getEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 317
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    .line 318
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddressList:Ljava/util/List;

    .line 321
    .end local v0    # "emailId":Ljava/lang/String;
    :cond_0
    return-void

    .line 319
    .restart local v0    # "emailId":Ljava/lang/String;
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method protected puntContactSelection(I)V
    .locals 3
    .param p1, "errorNumber"    # I

    .prologue
    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    .line 424
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 425
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 427
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xc

    .line 253
    iget v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->requestCode:I

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 254
    const-string v0, "ContactPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received intent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 258
    .local v1, "receivedContactUri":Landroid/net/Uri;
    const-string v8, ""

    .line 259
    .local v8, "desiredContactUri":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v4, :cond_3

    .line 260
    const-string v8, "//com.android.contacts/contact"

    .line 265
    :goto_0
    invoke-virtual {p0, v1, v8}, Lcom/google/appinventor/components/runtime/ContactPicker;->checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    const/4 v6, 0x0

    .line 267
    .local v6, "contactCursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 269
    .local v7, "dataCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v4, :cond_4

    .line 270
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getContactProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ContactPicker;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/appinventor/components/runtime/ContactPicker;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/ContactPicker;->postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    .line 276
    .local v10, "id":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ContactPicker;->DATA_PROJECTION:[Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    sget-object v2, Lcom/google/appinventor/components/runtime/ContactPicker;->DATA_PROJECTION:[Ljava/lang/String;

    invoke-static {v10, v0, v2}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 278
    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/ContactPicker;->postHoneycombGetContactEmailAndPhone(Landroid/database/Cursor;)V

    .line 281
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    .line 287
    .end local v10    # "id":Ljava/lang/String;
    :goto_1
    const-string v0, "ContactPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", email address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",contact Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phone number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contactPhotoUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    if-eqz v6, :cond_0

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_0
    if-eqz v7, :cond_1

    .line 301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 305
    .end local v6    # "contactCursor":Landroid/database/Cursor;
    .end local v7    # "dataCursor":Landroid/database/Cursor;
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ContactPicker;->AfterPicking()V

    .line 307
    .end local v1    # "receivedContactUri":Landroid/net/Uri;
    .end local v8    # "desiredContactUri":Ljava/lang/String;
    :cond_2
    return-void

    .line 262
    .restart local v1    # "receivedContactUri":Landroid/net/Uri;
    .restart local v8    # "desiredContactUri":Ljava/lang/String;
    :cond_3
    const-string v8, "//contacts/people"

    goto/16 :goto_0

    .line 283
    .restart local v6    # "contactCursor":Landroid/database/Cursor;
    .restart local v7    # "dataCursor":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/appinventor/components/runtime/ContactPicker;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 285
    invoke-virtual {p0, v6, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->preHoneycombGetContactInfo(Landroid/database/Cursor;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 290
    :catch_0
    move-exception v9

    .line 294
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ContactPicker"

    const-string v2, "checkContactUri failed: D"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/16 v0, 0x453

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->puntContactSelection(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    if-eqz v6, :cond_5

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_5
    if-eqz v7, :cond_1

    .line 301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 297
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_6
    if-eqz v7, :cond_7

    .line 301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method
