.class public Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
.super Ljava/lang/Object;
.source "ImageryMetaDataResource.java"


# static fields
.field private static final COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final IMAGE_HEIGHT:Ljava/lang/String; = "imageHeight"

.field private static final IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field private static final IMAGE_URL_SUBDOMAINS:Ljava/lang/String; = "imageUrlSubdomains"

.field private static final IMAGE_WIDTH:Ljava/lang/String; = "imageWidth"

.field private static final ZOOM_MAX:Ljava/lang/String; = "ZoomMax"

.field private static final ZOOM_MIN:Ljava/lang/String; = "ZoomMin"


# instance fields
.field public copyright:Ljava/lang/String;

.field public m_imageHeight:I

.field public m_imageUrl:Ljava/lang/String;

.field public m_imageUrlSubdomains:[Ljava/lang/String;

.field public m_imageWidth:I

.field public m_isInitialised:Z

.field private m_subdomainsCounter:I

.field public m_zoomMax:I

.field public m_zoomMin:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->copyright:Ljava/lang/String;

    .line 24
    iput v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageHeight:I

    .line 26
    iput v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageWidth:I

    .line 32
    const/16 v0, 0x16

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMax:I

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMin:I

    .line 36
    iput-boolean v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    .line 39
    iput v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    return-void
.end method

.method public static getDefaultInstance()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;-><init>()V

    return-object v0
.end method

.method public static getInstanceFromJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 7
    .param p0, "a_jsonObject"    # Lorg/json/JSONObject;
    .param p1, "parent"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 57
    new-instance v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-direct {v1}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;-><init>()V

    .line 59
    .local v1, "result":Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    if-nez p0, :cond_0

    .line 60
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "JSON to parse is null"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_0
    const-string v3, "copyright"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->copyright:Ljava/lang/String;

    .line 64
    const-string v3, "imageHeight"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    const-string v3, "imageHeight"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageHeight:I

    .line 67
    :cond_1
    const-string v3, "imageWidth"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    const-string v3, "imageWidth"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageWidth:I

    .line 70
    :cond_2
    const-string v3, "ZoomMin"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    const-string v3, "ZoomMin"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMin:I

    .line 73
    :cond_3
    const-string v3, "ZoomMax"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 74
    const-string v3, "ZoomMax"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMax:I

    .line 76
    :cond_4
    const-string v3, "imageUrl"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    .line 77
    iget-object v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    const-string v4, ".*?\\{.*?\\}.*?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    iget-object v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    const-string v4, "\\{.*?\\}"

    const-string v5, "%s"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    .line 81
    :cond_5
    const-string v3, "imageUrlSubdomains"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 82
    .local v2, "subdomains":Lorg/json/JSONArray;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v3, v6, :cond_6

    .line 84
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 87
    iget-object v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    :cond_6
    iput-boolean v6, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    .line 94
    return-object v1
.end method


# virtual methods
.method public declared-synchronized getSubDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    monitor-exit p0

    return-object v0

    .line 107
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    iget v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    aget-object v0, v1, v2

    .line 108
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 109
    iget v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    .end local v0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 111
    .restart local v0    # "result":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
