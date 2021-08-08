.class Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;
.super Ljava/lang/Object;
.source "BufferedSingleValueSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AveragingBuffer"
.end annotation


# instance fields
.field private data:[Ljava/lang/Float;

.field private next:I

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->this$0:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-array v0, p2, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->data:[Ljava/lang/Float;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;ILcom/google/appinventor/components/runtime/BufferedSingleValueSensor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;-><init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;Ljava/lang/Float;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;
    .param p1, "x1"    # Ljava/lang/Float;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->insert(Ljava/lang/Float;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->getAverage()F

    move-result v0

    return v0
.end method

.method private getAverage()F
    .locals 6

    .prologue
    .line 59
    const-wide/16 v2, 0x0

    .line 60
    .local v2, "sum":D
    const/4 v0, 0x0

    .line 62
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->data:[Ljava/lang/Float;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 63
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->data:[Ljava/lang/Float;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    .line 64
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->data:[Ljava/lang/Float;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    if-nez v0, :cond_2

    .end local v2    # "sum":D
    :goto_1
    double-to-float v4, v2

    return v4

    .restart local v2    # "sum":D
    :cond_2
    int-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_1
.end method

.method private insert(Ljava/lang/Float;)V
    .locals 3
    .param p1, "datum"    # Ljava/lang/Float;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->data:[Ljava/lang/Float;

    iget v1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    aput-object p1, v0, v1

    .line 53
    iget v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->data:[Ljava/lang/Float;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    .line 56
    :cond_0
    return-void
.end method
