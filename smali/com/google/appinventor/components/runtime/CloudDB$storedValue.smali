.class Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
.super Ljava/lang/Object;
.source "CloudDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/CloudDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "storedValue"
.end annotation


# instance fields
.field private tag:Ljava/lang/String;

.field private valueList:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueList"    # Lorg/json/JSONArray;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->tag:Ljava/lang/String;

    .line 291
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->valueList:Lorg/json/JSONArray;

    .line 292
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getValueList()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->valueList:Lorg/json/JSONArray;

    return-object v0
.end method
