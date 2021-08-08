.class public abstract Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "BluetoothConnectionBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final bluetoothConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private byteOrder:Ljava/nio/ByteOrder;

.field private connectedBluetoothSocket:Ljava/lang/Object;

.field private delimiter:B

.field protected disconnectOnError:Z

.field private encoding:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field protected final logTag:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field private final sdkLevel:I

.field protected secure:Z


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "logTag"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)V
    .locals 2
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "sdkLevel"    # I

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    .line 69
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    .line 70
    iput p3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->sdkLevel:I

    .line 71
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    .line 73
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->HighByteFirst(Z)V

    .line 74
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->CharacterEncoding(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->DelimiterByte(I)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Secure(Z)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 83
    move-object v0, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/Form;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)V

    .line 84
    const-string v0, "Not Null"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 86
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 87
    return-void
.end method

.method private fireAfterConnectEvent()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    .line 109
    .local v0, "listener":Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    goto :goto_0

    .line 111
    .end local v0    # "listener":Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
    :cond_0
    return-void
.end method

.method private fireBeforeDisconnectEvent()V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    .line 115
    .local v0, "listener":Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;->beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    goto :goto_0

    .line 117
    .end local v0    # "listener":Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
    :cond_0
    return-void
.end method

.method private prepareToDie()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 858
    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is available on the device"
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 145
    .local v0, "bluetoothAdapter":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 146
    const/4 v1, 0x1

    .line 148
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public BluetoothError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The BluetoothError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .prologue
    .line 129
    return-void
.end method

.method public BytesAvailableToReceive()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an estimate of the number of bytes that can be received without blocking"
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 565
    const-string v1, "BytesAvailableToReceive"

    .line 566
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 567
    const/16 v3, 0x203

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 581
    :goto_0
    return v2

    .line 573
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO Exception during Getting Receive Availability "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v3, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 579
    :cond_1
    const/16 v3, 0x205

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 580
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 579
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public CharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public CharacterEncoding(Ljava/lang/String;)V
    .locals 5
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "UTF-8"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 279
    :try_start_0
    const-string v1, "check"

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 280
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "CharacterEncoding"

    const/16 v2, 0x207

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public DelimiterByte()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 325
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    return v0
.end method

.method public DelimiterByte(I)V
    .locals 7
    .param p1, "number"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 306
    const-string v1, "DelimiterByte"

    .line 307
    .local v1, "functionName":Ljava/lang/String;
    move v2, p1

    .line 308
    .local v2, "n":I
    int-to-byte v0, v2

    .line 309
    .local v0, "b":B
    shr-int/lit8 v2, v2, 0x8

    .line 310
    if-eqz v2, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 311
    const/16 v3, 0x1ff

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 311
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_0
    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    goto :goto_0
.end method

.method public final Disconnect()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Disconnect from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireBeforeDisconnectEvent()V

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->closeBluetoothSocket(Ljava/lang/Object;)V

    .line 186
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    const-string v2, "Disconnected from Bluetooth device."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 192
    :cond_0
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 193
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 194
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while disconnecting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected DisconnectOnError()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    return v0
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is enabled"
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "bluetoothAdapter":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 161
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const/4 v1, 0x1

    .line 165
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public HighByteFirst(Z)V
    .locals 1
    .param p1, "highByteFirst"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 267
    if-eqz p1, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    .line 268
    return-void

    .line 267
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0
.end method

.method public HighByteFirst()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Initialize()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public final IsConnected()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "On devices with API level 14 (LEVEL_ICE_CREAM_SANDWICH) or higher, this property returned is accurate. But on old devices with API level lower than 14, it may not return the current state of connection(e.g., it might be disconnected but you may not know until you attempt to read/write the socket."
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 205
    iget v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->sdkLevel:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    .line 206
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothSocketConnected(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 206
    goto :goto_0

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public ReceiveSigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 1-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 616
    const-string v2, "ReceiveSigned1ByteNumber"

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 617
    .local v0, "bytes":[B
    array-length v2, v0

    if-eq v2, v3, :cond_0

    .line 621
    :goto_0
    return v1

    :cond_0
    aget-byte v1, v0, v1

    goto :goto_0
.end method

.method public ReceiveSigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 2-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 644
    const-string v2, "ReceiveSigned2ByteNumber"

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 645
    .local v0, "bytes":[B
    array-length v2, v0

    if-eq v2, v3, :cond_0

    .line 652
    :goto_0
    return v1

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    .line 650
    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    goto :goto_0

    .line 652
    :cond_1
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public ReceiveSigned4ByteNumber()J
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 4-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 680
    const-string v1, "ReceiveSigned4ByteNumber"

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 681
    .local v0, "bytes":[B
    array-length v1, v0

    if-eq v1, v2, :cond_0

    .line 682
    const-wide/16 v2, 0x0

    .line 691
    :goto_0
    return-wide v2

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 686
    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    int-to-long v2, v1

    goto :goto_0

    .line 691
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, v0, v6

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    int-to-long v2, v1

    goto :goto_0
.end method

.method public ReceiveSignedBytes(I)Ljava/util/List;
    .locals 5
    .param p1, "numberOfBytes"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple signed byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 736
    const-string v4, "ReceiveSignedBytes"

    invoke-virtual {p0, v4, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 737
    .local v0, "bytes":[B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 739
    aget-byte v3, v0, v1

    .line 740
    .local v3, "n":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    .end local v3    # "n":I
    :cond_0
    return-object v2
.end method

.method public ReceiveText(I)Ljava/lang/String;
    .locals 6
    .param p1, "numberOfBytes"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive text from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .prologue
    .line 596
    const-string v2, "ReceiveText"

    invoke-virtual {p0, v2, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 598
    .local v0, "bytes":[B
    if-gez p1, :cond_0

    .line 600
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 606
    :goto_0
    return-object v2

    .line 602
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 604
    :catch_0
    move-exception v1

    .line 605
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public ReceiveUnsigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive an unsigned 1-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 630
    const-string v2, "ReceiveUnsigned1ByteNumber"

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 631
    .local v0, "bytes":[B
    array-length v2, v0

    if-eq v2, v3, :cond_0

    .line 635
    :goto_0
    return v1

    :cond_0
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public ReceiveUnsigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 2-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 662
    const-string v2, "ReceiveUnsigned2ByteNumber"

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 663
    .local v0, "bytes":[B
    array-length v2, v0

    if-eq v2, v3, :cond_0

    .line 670
    :goto_0
    return v1

    .line 667
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    .line 668
    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    goto :goto_0

    .line 670
    :cond_1
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public ReceiveUnsigned4ByteNumber()J
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 4-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0xff

    .line 704
    const-string v1, "ReceiveUnsigned4ByteNumber"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 705
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 706
    const-wide/16 v2, 0x0

    .line 715
    :goto_0
    return-wide v2

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 710
    aget-byte v1, v0, v11

    int-to-long v2, v1

    and-long/2addr v2, v6

    aget-byte v1, v0, v10

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x8

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-byte v1, v0, v9

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-byte v1, v0, v8

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    goto :goto_0

    .line 715
    :cond_1
    aget-byte v1, v0, v8

    int-to-long v2, v1

    and-long/2addr v2, v6

    aget-byte v1, v0, v9

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x8

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-byte v1, v0, v10

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-byte v1, v0, v11

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    goto :goto_0
.end method

.method public ReceiveUnsignedBytes(I)Ljava/util/List;
    .locals 5
    .param p1, "numberOfBytes"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple unsigned byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    const-string v4, "ReceiveUnsignedBytes"

    invoke-virtual {p0, v4, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 760
    .local v0, "bytes":[B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 762
    aget-byte v4, v0, v1

    and-int/lit16 v3, v4, 0xff

    .line 763
    .local v3, "n":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    .end local v3    # "n":I
    :cond_0
    return-object v2
.end method

.method public Secure(Z)V
    .locals 0
    .param p1, "secure"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    .line 241
    return-void
.end method

.method public Secure()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to invoke SSP (Simple Secure Pairing), which is supported on devices with Bluetooth v2.1 or higher. When working with embedded Bluetooth devices, this property may need to be set to False. For Android 2.0-2.2, this property setting will be ignored."
    .end annotation

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    return v0
.end method

.method public Send1ByteNumber(Ljava/lang/String;)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 1-byte number to the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 361
    const-string v2, "Send1ByteNumber"

    .line 364
    .local v2, "functionName":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 370
    .local v3, "n":I
    int-to-byte v0, v3

    .line 371
    .local v0, "b":B
    shr-int/lit8 v3, v3, 0x8

    .line 372
    if-eqz v3, :cond_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 373
    const/16 v4, 0x1ff

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 378
    .end local v0    # "b":B
    .end local v3    # "n":I
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/16 v4, 0x1fe

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 377
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "b":B
    .restart local v3    # "n":I
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public Send2ByteNumber(Ljava/lang/String;)V
    .locals 9
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 2-byte number to the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 392
    const-string v2, "Send2ByteNumber"

    .line 395
    .local v2, "functionName":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 401
    .local v3, "n":I
    new-array v0, v8, [B

    .line 402
    .local v0, "bytes":[B
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_0

    .line 403
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    .line 404
    shr-int/lit8 v3, v3, 0x8

    .line 405
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 411
    :goto_0
    shr-int/lit8 v3, v3, 0x8

    .line 412
    if-eqz v3, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 413
    const/16 v4, 0x200

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 414
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 413
    invoke-virtual {p0, v2, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 418
    .end local v0    # "bytes":[B
    .end local v3    # "n":I
    :goto_1
    return-void

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/16 v4, 0x1fe

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 407
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "bytes":[B
    .restart local v3    # "n":I
    :cond_0
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 408
    shr-int/lit8 v3, v3, 0x8

    .line 409
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public Send4ByteNumber(Ljava/lang/String;)V
    .locals 14
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 4-byte number to the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x8

    const-wide/16 v8, 0xff

    .line 432
    const-string v2, "Send4ByteNumber"

    .line 435
    .local v2, "functionName":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 441
    .local v4, "n":J
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 442
    .local v0, "bytes":[B
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v6, :cond_0

    .line 443
    const/4 v3, 0x3

    and-long v6, v4, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 444
    shr-long/2addr v4, v10

    .line 445
    and-long v6, v4, v8

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v13

    .line 446
    shr-long/2addr v4, v10

    .line 447
    and-long v6, v4, v8

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v12

    .line 448
    shr-long/2addr v4, v10

    .line 449
    and-long v6, v4, v8

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v11

    .line 459
    :goto_0
    shr-long/2addr v4, v10

    .line 460
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 461
    const/16 v3, 0x200

    new-array v6, v13, [Ljava/lang/Object;

    aput-object p1, v6, v11

    const/4 v7, 0x4

    .line 462
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    .line 461
    invoke-virtual {p0, v2, v3, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 466
    .end local v0    # "bytes":[B
    .end local v4    # "n":J
    :goto_1
    return-void

    .line 436
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/16 v3, 0x1fe

    new-array v6, v12, [Ljava/lang/Object;

    aput-object p1, v6, v11

    invoke-virtual {p0, v2, v3, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 451
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "bytes":[B
    .restart local v4    # "n":J
    :cond_0
    and-long v6, v4, v8

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v11

    .line 452
    shr-long/2addr v4, v10

    .line 453
    and-long v6, v4, v8

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v12

    .line 454
    shr-long/2addr v4, v10

    .line 455
    and-long v6, v4, v8

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v13

    .line 456
    shr-long/2addr v4, v10

    .line 457
    const/4 v3, 0x3

    and-long v6, v4, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public SendBytes(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 12
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a list of byte values to the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 480
    const-string v4, "SendBytes"

    .line 481
    .local v4, "functionName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 482
    .local v0, "array":[Ljava/lang/Object;
    array-length v8, v0

    new-array v1, v8, [B

    .line 483
    .local v1, "bytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, v0

    if-ge v5, v8, :cond_1

    .line 486
    aget-object v3, v0, v5

    .line 487
    .local v3, "element":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 490
    .local v7, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 496
    .local v6, "n":I
    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    .line 497
    shr-int/lit8 v6, v6, 0x8

    .line 498
    if-eqz v6, :cond_0

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 499
    const/16 v8, 0x202

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v10, v5, 0x1

    .line 500
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    .line 499
    invoke-virtual {p0, v4, v8, v9}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 505
    .end local v3    # "element":Ljava/lang/Object;
    .end local v6    # "n":I
    .end local v7    # "s":Ljava/lang/String;
    :goto_1
    return-void

    .line 491
    .restart local v3    # "element":Ljava/lang/Object;
    .restart local v7    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 492
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/16 v8, 0x201

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v10, v5, 0x1

    .line 493
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    .line 492
    invoke-virtual {p0, v4, v8, v9}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 483
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "n":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 504
    .end local v3    # "element":Ljava/lang/Object;
    .end local v6    # "n":I
    .end local v7    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public SendText(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send text to the connected Bluetooth device."
    .end annotation

    .prologue
    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 342
    .local v0, "bytes":[B
    :goto_0
    const-string v2, "SendText"

    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    .line 343
    return-void

    .line 338
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto :goto_0
.end method

.method addBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method protected varargs bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "errorNumber"    # I
    .param p3, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    .line 852
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    .line 845
    return-void
.end method

.method protected final read(Ljava/lang/String;I)[B
    .locals 12
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "numberOfBytes"    # I

    .prologue
    const/16 v11, 0x205

    const/4 v10, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 779
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 780
    const/16 v6, 0x203

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 782
    new-array v6, v9, [B

    .line 837
    :goto_0
    return-object v6

    .line 785
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 787
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    if-ltz p2, :cond_4

    .line 789
    new-array v1, p2, [B

    .line 790
    .local v1, "bytes":[B
    const/4 v4, 0x0

    .line 791
    .local v4, "totalBytesRead":I
    :goto_1
    if-ge v4, p2, :cond_1

    .line 793
    :try_start_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    array-length v7, v1

    sub-int/2addr v7, v4

    invoke-virtual {v6, v1, v4, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 794
    .local v3, "numBytesRead":I
    if-ne v3, v8, :cond_2

    .line 795
    const/16 v6, 0x206

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    .end local v3    # "numBytesRead":I
    :cond_1
    :goto_2
    invoke-virtual {v0, v1, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 837
    .end local v1    # "bytes":[B
    .end local v4    # "totalBytesRead":I
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0

    .line 799
    .restart local v1    # "bytes":[B
    .restart local v3    # "numBytesRead":I
    .restart local v4    # "totalBytesRead":I
    :cond_2
    add-int/2addr v4, v3

    goto :goto_1

    .line 800
    .end local v3    # "numBytesRead":I
    :catch_0
    move-exception v2

    .line 801
    .local v2, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO Exception during Reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v6, :cond_3

    .line 803
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 805
    :cond_3
    new-array v6, v10, [Ljava/lang/Object;

    .line 806
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 805
    invoke-virtual {p0, p1, v11, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    .line 815
    .end local v1    # "bytes":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "totalBytesRead":I
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 816
    .local v5, "value":I
    if-ne v5, v8, :cond_6

    .line 817
    const/16 v6, 0x206

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 825
    .end local v5    # "value":I
    :catch_1
    move-exception v2

    .line 826
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO Exception during Reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v6, :cond_5

    .line 828
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 830
    :cond_5
    new-array v6, v10, [Ljava/lang/Object;

    .line 831
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 830
    invoke-virtual {p0, p1, v11, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_3

    .line 821
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "value":I
    :cond_6
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 822
    iget-byte v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v5, v6, :cond_4

    goto :goto_3
.end method

.method removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method protected final setConnection(Ljava/lang/Object;)V
    .locals 2
    .param p1, "bluetoothSocket"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 171
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 172
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 173
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 174
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireAfterConnectEvent()V

    .line 175
    return-void
.end method

.method protected write(Ljava/lang/String;B)V
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "b"    # B

    .prologue
    const/4 v4, 0x0

    .line 514
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    const/16 v1, 0x203

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 531
    :goto_0
    return-void

    .line 521
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 522
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception during Writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v1, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 528
    :cond_1
    const/16 v1, 0x204

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 529
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 528
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected write(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    const/16 v1, 0x203

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 557
    :goto_0
    return-void

    .line 547
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 548
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception during Writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v1, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 554
    :cond_1
    const/16 v1, 0x204

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 555
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 554
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
