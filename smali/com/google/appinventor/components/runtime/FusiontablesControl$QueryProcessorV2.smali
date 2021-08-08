.class Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;
.super Landroid/os/AsyncTask;
.source "FusiontablesControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FusiontablesControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryProcessorV2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final STAG:Ljava/lang/String; = "FUSION_SERVICE_ACCOUNT"

.field private static final TAG:Ljava/lang/String; = "QueryProcessorV2"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V
    .locals 2
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 828
    const-string v0, "QueryProcessorV2"

    const-string v1, "Creating AsyncFusiontablesQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->activity:Landroid/app/Activity;

    .line 830
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    .line 831
    return-void
.end method

.method private serviceAuthRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 892
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 893
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1000(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$902(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 895
    invoke-static {}, Lcom/google/api/client/extensions/android2/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    .line 896
    .local v1, "TRANSPORT":Lcom/google/api/client/http/HttpTransport;
    new-instance v0, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    .line 898
    .local v0, "JSON_FACTORY":Lcom/google/api/client/json/JsonFactory;
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "keyPath "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1100(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :try_start_0
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1200(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_0

    .line 905
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1300(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v8

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1100(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1202(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/io/File;)Ljava/io/File;

    .line 907
    :cond_0
    new-instance v7, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v7}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    .line 908
    invoke-virtual {v7, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v7

    .line 909
    invoke-virtual {v7, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 910
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 911
    invoke-static {v10}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1400(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountScopes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 912
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1200(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountPrivateKeyFromP12File(Ljava/io/File;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v7

    .line 913
    invoke-virtual {v7}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v2

    .line 915
    .local v2, "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    new-instance v7, Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    invoke-direct {v7, v1, v0, v2}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    new-instance v8, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 916
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ApiKey()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v7

    .line 917
    invoke-virtual {v7}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->build()Lcom/google/api/services/fusiontables/Fusiontables;

    move-result-object v4

    .line 920
    .local v4, "fusiontables":Lcom/google/api/services/fusiontables/Fusiontables;
    invoke-virtual {v4}, Lcom/google/api/services/fusiontables/Fusiontables;->query()Lcom/google/api/services/fusiontables/Fusiontables$Query;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Query;->sql(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;

    move-result-object v6

    .line 921
    .local v6, "sql":Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    const-string v7, "alt"

    const-string v8, "csv"

    invoke-virtual {v6, v7, v8}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 923
    const/4 v5, 0x0

    .line 929
    .local v5, "response":Lcom/google/api/client/http/HttpResponse;
    :try_start_1
    invoke-virtual {v6}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;
    :try_end_1
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 960
    :goto_0
    if-eqz v5, :cond_1

    .line 962
    :try_start_2
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 963
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nResultStr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :goto_1
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    const-string v8, "executed sql query"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 980
    .end local v2    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .end local v4    # "fusiontables":Lcom/google/api/services/fusiontables/Fusiontables;
    .end local v5    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v6    # "sql":Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    :goto_2
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "returning queryResultStr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 931
    .restart local v2    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .restart local v4    # "fusiontables":Lcom/google/api/services/fusiontables/Fusiontables;
    .restart local v5    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v6    # "sql":Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    :catch_0
    move-exception v3

    .line 935
    .local v3, "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    :try_start_3
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    const-string v8, "Got a JsonResponse exception on sql.executeUnparsed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->parseJsonResponseException(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$902(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 941
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->signalJsonResponseError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 974
    .end local v2    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .end local v3    # "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .end local v4    # "fusiontables":Lcom/google/api/services/fusiontables/Fusiontables;
    .end local v5    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v6    # "sql":Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    :catch_1
    move-exception v3

    .line 975
    .local v3, "e":Ljava/lang/Throwable;
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    const-string v8, "in Catch Throwable e"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 977
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 943
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v2    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .restart local v4    # "fusiontables":Lcom/google/api/services/fusiontables/Fusiontables;
    .restart local v5    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v6    # "sql":Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    :catch_2
    move-exception v3

    .line 945
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    const-string v8, "Got an unanticipated exception on sql.executeUnparsed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception class is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception message is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    const-string v8, "Point e"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    const-string v8, "end of printing exception"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$902(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 955
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->signalJsonResponseError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 968
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 969
    const-string v7, "FUSION_SERVICE_ACCOUNT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error with null response:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method private userAuthRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 856
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 859
    new-instance v1, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;-><init>()V

    .line 860
    .local v1, "oauthHelper":Lcom/google/appinventor/components/runtime/util/OAuth2Helper;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$600(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "authToken":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 867
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "create table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 868
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$700(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$800(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 869
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v3

    .line 886
    :goto_0
    return-object v3

    .line 873
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v3, p1, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->sendQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v2

    .line 876
    .local v2, "response":Lcom/google/api/client/http/HttpResponse;
    if-eqz v2, :cond_1

    .line 877
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 878
    const-string v3, "QueryProcessorV2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nResultStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :goto_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 880
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 881
    const-string v3, "QueryProcessorV2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 886
    .end local v2    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_2
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 815
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 846
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 847
    .local v0, "query":Ljava/lang/String;
    const-string v1, "QueryProcessorV2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting doInBackground "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$400(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->serviceAuthRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 851
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->userAuthRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 815
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 999
    const-string v0, "FUSION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    if-nez p1, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1004
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->GotResult(Ljava/lang/String;)V

    .line 1005
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ShowLoadingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->LoadingDialogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 839
    :cond_0
    return-void
.end method

.method parseJsonResponseException(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 986
    const-string v0, "FUSION_SERVICE_ACCOUNT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseJsonResponseException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-object p1
.end method
