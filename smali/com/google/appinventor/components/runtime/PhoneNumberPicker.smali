.class public Lcom/google/appinventor/components/runtime/PhoneNumberPicker;
.super Lcom/google/appinventor/components/runtime/ContactPicker;
.source "PhoneNumberPicker.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A button that, when clicked on, displays a list of the contacts\' phone numbers to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul>\n<li> <code>ContactName</code>: the contact\'s name </li>\n <li> <code>PhoneNumber</code>: the contact\'s phone number </li>\n <li> <code>EmailAddress</code>: the contact\'s email address </li> <li> <code>Picture</code>: the name of the file containing the contact\'s image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul>\n</p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).</p>\n<p>The PhoneNumberPicker component may not work on all Android devices. For example, on Android systems before system 3.0, the returned lists of phone numbers and email addresses will be empty.\n"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# static fields
.field private static DATA_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_INDEX:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneNumberPicker"

.field private static final NAME_INDEX:I = 0x0

.field private static NAME_PROJECTION:[Ljava/lang/String; = null

.field private static final NUMBER_INDEX:I = 0x1

.field private static final PERSON_INDEX:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 93
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V

    .line 94
    return-void
.end method


# virtual methods
.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public postHoneycombGetContactEmailsAndPhones(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "dataCursor"    # Landroid/database/Cursor;

    .prologue
    .line 214
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v5, "phoneListToStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v3, "emailListToStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 217
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 218
    .local v2, "PHONE_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailIndex(Landroid/database/Cursor;)I

    move-result v0

    .line 219
    .local v0, "EMAIL_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getMimeIndex(Landroid/database/Cursor;)I

    move-result v1

    .line 221
    .local v1, "MIME_INDEX":I
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneType()Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "phoneType":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailType()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "emailType":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_2

    .line 226
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 228
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
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

    .line 238
    .end local v7    # "type":Ljava/lang/String;
    :cond_2
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumberList:Ljava/util/List;

    .line 239
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    .line 240
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 241
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    .line 246
    .end local v0    # "EMAIL_INDEX":I
    .end local v1    # "MIME_INDEX":I
    .end local v2    # "PHONE_INDEX":I
    .end local v4    # "emailType":Ljava/lang/String;
    .end local v6    # "phoneType":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 243
    .restart local v0    # "EMAIL_INDEX":I
    .restart local v1    # "MIME_INDEX":I
    .restart local v2    # "PHONE_INDEX":I
    .restart local v4    # "emailType":Ljava/lang/String;
    .restart local v6    # "phoneType":Ljava/lang/String;
    :cond_4
    const-string v8, ""

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    goto :goto_2
.end method

.method public postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .param p1, "contactCursor"    # Landroid/database/Cursor;

    .prologue
    .line 195
    const-string v4, ""

    .line 196
    .local v4, "id":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getContactIdIndex(Landroid/database/Cursor;)I

    move-result v0

    .line 198
    .local v0, "CONTACT_ID_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getNameIndex(Landroid/database/Cursor;)I

    move-result v1

    .line 199
    .local v1, "NAME_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getThumbnailIndex(Landroid/database/Cursor;)I

    move-result v3

    .line 200
    .local v3, "PHOTO_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 201
    .local v2, "PHONE_INDEX":I
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    .line 204
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    .line 206
    .end local v0    # "CONTACT_ID_INDEX":I
    .end local v1    # "NAME_INDEX":I
    .end local v2    # "PHONE_INDEX":I
    .end local v3    # "PHOTO_INDEX":I
    :cond_0
    return-object v4
.end method

.method public preHoneycombGetContactInfo(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    .line 181
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    .line 182
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 183
    .local v1, "contactId":I
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 184
    .local v0, "cUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    .line 185
    const/4 v3, 0x3

    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "emailId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->getEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    .line 188
    .end local v0    # "cUri":Landroid/net/Uri;
    .end local v1    # "contactId":I
    .end local v2    # "emailId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xc

    .line 122
    iget v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->requestCode:I

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 123
    const-string v0, "PhoneNumberPicker"

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

    .line 124
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 126
    .local v1, "phoneUri":Landroid/net/Uri;
    const-string v8, ""

    .line 127
    .local v8, "desiredPhoneUri":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v4, :cond_3

    .line 128
    const-string v8, "//com.android.contacts/data"

    .line 133
    :goto_0
    invoke-virtual {p0, v1, v8}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const/4 v6, 0x0

    .line 135
    .local v6, "contactCursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 137
    .local v7, "dataCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v4, :cond_4

    .line 138
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getNameProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->NAME_PROJECTION:[Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->NAME_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 141
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, "id":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->DATA_PROJECTION:[Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->DATA_PROJECTION:[Ljava/lang/String;

    invoke-static {v10, v0, v2}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 145
    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->postHoneycombGetContactEmailsAndPhones(Landroid/database/Cursor;)V

    .line 152
    .end local v10    # "id":Ljava/lang/String;
    :goto_1
    const-string v0, "PhoneNumberPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phone number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emailAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contactPhotoUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-eqz v6, :cond_0

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_0
    if-eqz v7, :cond_1

    .line 166
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 170
    .end local v6    # "contactCursor":Landroid/database/Cursor;
    .end local v7    # "dataCursor":Landroid/database/Cursor;
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->AfterPicking()V

    .line 172
    .end local v1    # "phoneUri":Landroid/net/Uri;
    .end local v8    # "desiredPhoneUri":Ljava/lang/String;
    :cond_2
    return-void

    .line 130
    .restart local v1    # "phoneUri":Landroid/net/Uri;
    .restart local v8    # "desiredPhoneUri":Ljava/lang/String;
    :cond_3
    const-string v8, "//contacts/phones"

    goto/16 :goto_0

    .line 147
    .restart local v6    # "contactCursor":Landroid/database/Cursor;
    .restart local v7    # "dataCursor":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 149
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->preHoneycombGetContactInfo(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 155
    :catch_0
    move-exception v9

    .line 159
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "PhoneNumberPicker"

    const-string v2, "Exception in resultReturned"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/16 v0, 0x453

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->puntContactSelection(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    if-eqz v6, :cond_5

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_5
    if-eqz v7, :cond_1

    .line 166
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 162
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_6
    if-eqz v7, :cond_7

    .line 166
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method
