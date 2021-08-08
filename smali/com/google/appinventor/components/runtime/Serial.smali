.class public Lcom/google/appinventor/components/runtime/Serial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Serial.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0xc
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Serial component which can be used to connect to devices like Arduino"
    iconName = "images/arduino.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "physicaloid.jar"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Serial Component"


# instance fields
.field private baudRate:I

.field private bytes:I

.field private context:Landroid/content/Context;

.field private mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 44
    const/16 v0, 0x2580

    iput v0, p0, Lcom/google/appinventor/components/runtime/Serial;->baudRate:I

    .line 45
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/appinventor/components/runtime/Serial;->bytes:I

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->context:Landroid/content/Context;

    .line 50
    const-string v0, "Serial Component"

    const-string v1, "Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method


# virtual methods
.method public BaudRate()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the current baud rate"
    .end annotation

    .prologue
    .line 132
    iget v0, p0, Lcom/google/appinventor/components/runtime/Serial;->baudRate:I

    return v0
.end method

.method public BaudRate(I)V
    .locals 3
    .param p1, "baudRate"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "9600"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 138
    iput p1, p0, Lcom/google/appinventor/components/runtime/Serial;->baudRate:I

    .line 139
    const-string v0, "Serial Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Baud Rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/Physicaloid;->setBaudrate(I)Z

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v0, "Serial Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set Serial Baud Rate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Just saved, not applied to serial! Maybe you forgot to initialize it?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public BufferSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the buffer size in bytes"
    .end annotation

    .prologue
    .line 148
    iget v0, p0, Lcom/google/appinventor/components/runtime/Serial;->bytes:I

    return v0
.end method

.method public BufferSize(I)V
    .locals 3
    .param p1, "bytes"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "256"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 154
    iput p1, p0, Lcom/google/appinventor/components/runtime/Serial;->bytes:I

    .line 155
    const-string v0, "Serial Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public CloseSerial()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Closes serial connection. Returns true when closed."
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    const-string v1, "Serial Component"

    const-string v2, "Closing connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Serial;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "CloseSerial"

    const/16 v3, 0xf3d

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v0}, Lcom/physicaloid/lib/Physicaloid;->close()Z

    move-result v0

    goto :goto_0
.end method

.method public InitializeSerial()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes serial connection."
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/physicaloid/lib/Physicaloid;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Serial;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/physicaloid/lib/Physicaloid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    .line 56
    iget v0, p0, Lcom/google/appinventor/components/runtime/Serial;->baudRate:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Serial;->BaudRate(I)V

    .line 57
    const-string v0, "Serial Component"

    const-string v1, "Initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public IsInitialized()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true when the Serial has been initialized."
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsOpen()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true when the Serial connection is open."
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 118
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Serial;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "IsOpen"

    const/16 v3, 0xf3d

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 122
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v0}, Lcom/physicaloid/lib/Physicaloid;->isOpened()Z

    move-result v0

    goto :goto_0
.end method

.method public OpenSerial()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens serial connection. Returns true when opened."
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 62
    const-string v1, "Serial Component"

    const-string v2, "Opening connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Serial;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "OpenSerial"

    const/16 v3, 0xf3d

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v0}, Lcom/physicaloid/lib/Physicaloid;->open()Z

    move-result v0

    goto :goto_0
.end method

.method public PrintSerial(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes given data to serial, and appends a new line at the end."
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Serial;->WriteSerial(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method public ReadSerial()Ljava/lang/String;
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads data from serial."
    .end annotation

    .prologue
    .line 82
    const-string v1, ""

    .line 83
    .local v1, "data":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v4, :cond_1

    .line 84
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Serial;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v5, "ReadSerial"

    const/16 v6, 0xf3d

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 95
    :cond_0
    :goto_0
    return-object v1

    .line 86
    :cond_1
    iget v4, p0, Lcom/google/appinventor/components/runtime/Serial;->bytes:I

    new-array v0, v4, [B

    .line 87
    .local v0, "buf":[B
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v4, v0}, Lcom/physicaloid/lib/Physicaloid;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 89
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "data":Ljava/lang/String;
    .local v2, "data":Ljava/lang/String;
    move-object v1, v2

    .line 92
    .end local v2    # "data":Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/String;
    goto :goto_0

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, "mEr":Ljava/io/UnsupportedEncodingException;
    const-string v4, "Serial Component"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public WriteSerial(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes given data to serial."
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 102
    .local v0, "buf":[B
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v2, v0}, Lcom/physicaloid/lib/Physicaloid;->write([B)I

    move-result v1

    .line 103
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Serial;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "WriteSerial"

    const/16 v4, 0xf3e

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 108
    .end local v0    # "buf":[B
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Serial;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "WriteSerial"

    const/16 v4, 0xf3d

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
