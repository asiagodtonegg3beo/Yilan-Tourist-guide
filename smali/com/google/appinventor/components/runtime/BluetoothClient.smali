.class public final Lcom/google/appinventor/components/runtime/BluetoothClient;
.super Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.source "BluetoothClient.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Bluetooth client component"
    iconName = "images/bluetooth.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.BLUETOOTH, android.permission.BLUETOOTH_ADMIN"
.end annotation


# static fields
.field private static final SPP_UUID:Ljava/lang/String; = "00001101-0000-1000-8000-00805F9B34FB"


# instance fields
.field private acceptableDeviceClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final attachedComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 59
    const-string v0, "BluetoothClient"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->DisconnectOnError(Z)V

    .line 61
    return-void
.end method

.method private connect(Ljava/lang/Object;Ljava/util/UUID;)V
    .locals 4
    .param p1, "bluetoothDevice"    # Ljava/lang/Object;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->secure:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 318
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->createInsecureRfcommSocketToServiceRecord(Ljava/lang/Object;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "bluetoothSocket":Ljava/lang/Object;
    :goto_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->connectToBluetoothSocket(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->setConnection(Ljava/lang/Object;)V

    .line 326
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to Bluetooth device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 327
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 328
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void

    .line 321
    .end local v0    # "bluetoothSocket":Ljava/lang/Object;
    :cond_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->createRfcommSocketToServiceRecord(Ljava/lang/Object;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "bluetoothSocket":Ljava/lang/Object;
    goto :goto_0
.end method

.method private connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "uuidString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 253
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 254
    .local v0, "bluetoothAdapter":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 255
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v7, 0x1f5

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6, p0, p1, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 310
    :goto_0
    return v5

    .line 260
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 261
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v7, 0x1f6

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6, p0, p1, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 268
    :cond_1
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 269
    .local v3, "firstSpace":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_2

    .line 270
    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 273
    :cond_2
    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->checkBluetoothAddress(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 274
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v7, 0x1f7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6, p0, p1, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :cond_3
    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getRemoteDevice(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 280
    .local v1, "bluetoothDevice":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBonded(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 281
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v7, 0x1f8

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6, p0, p1, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 286
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->isDeviceClassAcceptable(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 287
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v7, 0x1f9

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6, p0, p1, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    :cond_5
    :try_start_0
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 301
    .local v4, "uuid":Ljava/util/UUID;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->Disconnect()V

    .line 304
    :try_start_1
    invoke-direct {p0, v1, v4}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/Object;Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v6

    .line 305
    goto :goto_0

    .line 295
    .end local v4    # "uuid":Ljava/util/UUID;
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v8, 0x1fa

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v5

    invoke-virtual {v7, p0, p1, v8, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "uuid":Ljava/util/UUID;
    :catch_1
    move-exception v2

    .line 307
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->Disconnect()V

    .line 308
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v7, 0x1fb

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6, p0, p1, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isDeviceClassAcceptable(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "bluetoothDevice"    # Ljava/lang/Object;

    .prologue
    .line 201
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 203
    const/4 v2, 0x1

    .line 213
    :goto_0
    return v2

    .line 206
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothClass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "bluetoothClass":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 209
    const/4 v2, 0x0

    goto :goto_0

    .line 212
    :cond_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getDeviceClass(Ljava/lang/Object;)I

    move-result v1

    .line 213
    .local v1, "deviceClass":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public AddressesAndNames()Ljava/util/List;
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The addresses and names of paired Bluetooth devices"
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
    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v1, "addressesAndNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v2

    .line 180
    .local v2, "bluetoothAdapter":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 181
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBondedDevices(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 183
    .local v3, "bluetoothDevice":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->isDeviceClassAcceptable(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "name":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothDeviceAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "address":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "bluetoothDevice":Ljava/lang/Object;
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public Connect(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and the Serial Port Profile (SPP). Returns true if the connection was successful."
    .end annotation

    .prologue
    .line 225
    const-string v0, "Connect"

    const-string v1, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ConnectWithUUID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and UUID. Returns true if the connection was successful."
    .end annotation

    .prologue
    .line 238
    const-string v0, "ConnectWithUUID"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public DisconnectOnError(Z)V
    .locals 0
    .param p1, "disconnectOnError"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->disconnectOnError:Z

    .line 82
    return-void
.end method

.method public DisconnectOnError()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Disconnects BluetoothClient automatically when an error occurs."
    .end annotation

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->disconnectOnError:Z

    return v0
.end method

.method public IsDevicePaired(Ljava/lang/String;)Z
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether the Bluetooth device with the specified address is paired."
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 131
    const-string v3, "IsDevicePaired"

    .line 132
    .local v3, "functionName":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "bluetoothAdapter":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 134
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x1f5

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v3, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 159
    :goto_0
    return v4

    .line 139
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 140
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x1f6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v3, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_1
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 148
    .local v2, "firstSpace":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 149
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 152
    :cond_2
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->checkBluetoothAddress(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 153
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x1f7

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v3, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_3
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getRemoteDevice(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 159
    .local v1, "bluetoothDevice":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBonded(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method attachComponent(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Component;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "acceptableDeviceClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    if-nez p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    .line 87
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    if-nez v1, :cond_4

    .line 95
    if-eqz p2, :cond_0

    goto :goto_1

    .line 99
    :cond_4
    if-eqz p2, :cond_1

    .line 102
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-interface {p2, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1
.end method

.method detachComponent(Lcom/google/appinventor/components/runtime/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    .line 120
    :cond_0
    return-void
.end method
