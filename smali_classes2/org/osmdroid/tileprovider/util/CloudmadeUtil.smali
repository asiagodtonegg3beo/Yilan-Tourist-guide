.class public Lorg/osmdroid/tileprovider/util/CloudmadeUtil;
.super Ljava/lang/Object;
.source "CloudmadeUtil.java"


# static fields
.field private static final CLOUDMADE_ID:Ljava/lang/String; = "CLOUDMADE_ID"

.field private static final CLOUDMADE_KEY:Ljava/lang/String; = "CLOUDMADE_KEY"

.field private static final CLOUDMADE_TOKEN:Ljava/lang/String; = "CLOUDMADE_TOKEN"

.field public static DEBUGMODE:Z

.field private static mAndroidId:Ljava/lang/String;

.field private static mKey:Ljava/lang/String;

.field private static mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field private static mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->DEBUGMODE:Z

    .line 41
    const-string v0, "android_id"

    sput-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mAndroidId:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mKey:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudmadeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getCloudmadeToken()Ljava/lang/String;
    .locals 12

    .prologue
    .line 103
    sget-object v8, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 104
    sget-object v10, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    monitor-enter v10

    .line 106
    :try_start_0
    sget-object v8, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://auth.cloudmade.com/token/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?userid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mAndroidId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 109
    .local v5, "url":Ljava/lang/String;
    const/4 v6, 0x0

    .line 112
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_1
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, "urlToRequest":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 114
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 115
    const-string v8, "POST"

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 116
    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v8

    invoke-interface {v8}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentHttpHeader()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v9

    invoke-interface {v9}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v8

    invoke-interface {v8}, Lorg/osmdroid/config/IConfigurationProvider;->getAdditionalHttpRequestProperties()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 119
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "urlToRequest":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v8, "OsmDroid"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No authorization token received from Cloudmade: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    if-eqz v6, :cond_0

    .line 149
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 157
    :cond_1
    sget-object v8, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    return-object v8

    .line 121
    .restart local v7    # "urlToRequest":Ljava/net/URL;
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 122
    sget-boolean v8, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->DEBUGMODE:Z

    if-eqz v8, :cond_3

    .line 123
    const-string v8, "OsmDroid"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response from Cloudmade auth: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_5

    .line 126
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 128
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x2000

    invoke-direct {v1, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 130
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "line":Ljava/lang/String;
    sget-boolean v8, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->DEBUGMODE:Z

    if-eqz v8, :cond_4

    .line 132
    const-string v8, "OsmDroid"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "First line from Cloudmade auth: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    .line 135
    sget-object v8, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 136
    sget-object v8, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "CLOUDMADE_TOKEN"

    sget-object v11, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    sget-object v8, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    const/4 v8, 0x0

    sput-object v8, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v6, :cond_0

    .line 149
    :try_start_6
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 151
    :catch_1
    move-exception v8

    goto/16 :goto_1

    .line 141
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_6
    :try_start_7
    const-string v8, "OsmDroid"

    const-string v9, "No authorization token received from Cloudmade"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 147
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "urlToRequest":Ljava/net/URL;
    :catchall_0
    move-exception v8

    if-eqz v6, :cond_7

    .line 149
    :try_start_8
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 151
    :cond_7
    :goto_3
    :try_start_9
    throw v8

    .line 154
    :catchall_1
    move-exception v8

    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v8

    .line 151
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    goto/16 :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method public static retrieveCloudmadeKey(Landroid/content/Context;)V
    .locals 5
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mAndroidId:Ljava/lang/String;

    .line 59
    const-string v2, "CLOUDMADE_KEY"

    invoke-static {p0, v2}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mKey:Ljava/lang/String;

    .line 62
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-object v2, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 64
    const-string v2, "CLOUDMADE_ID"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "id":Ljava/lang/String;
    sget-object v2, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mAndroidId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const-string v2, "CLOUDMADE_TOKEN"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    .line 68
    sget-object v2, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 69
    const/4 v2, 0x0

    sput-object v2, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget-object v2, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "CLOUDMADE_ID"

    sget-object v4, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mAndroidId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    sget-object v2, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setCloudmadeKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 93
    sput-object p0, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->mKey:Ljava/lang/String;

    .line 94
    return-void
.end method
