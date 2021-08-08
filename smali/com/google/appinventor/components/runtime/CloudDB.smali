.class public final Lcom/google/appinventor/components/runtime/CloudDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "CloudDB.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnClearListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component allowing you to store data on a Internet connected database server (using Redis software). This allows the users of your App to share data with each other. By default data will be stored in a server maintained by MIT, however you can setup and run your own server. Set the \"RedisServer\" property and \"RedisPort\" Property to access your own server."
    designerHelpDescription = "Non-visible component that communicates with CloudDB server to store and retrieve information."
    iconName = "images/cloudDB.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "jedis.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCESS_NETWORK_STATE,android.permission.READ_EXTERNAL_STORAGE,android.permission.WRITE_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    }
.end annotation


# static fields
.field private static final APPEND_SCRIPT:Ljava/lang/String; = "local key = KEYS[1];local toAppend = cjson.decode(ARGV[1]);local project = ARGV[2];local currentValue = redis.call(\'get\', project .. \":\" .. key);local newTable;local subTable = {};local subTable1 = {};if (currentValue == false) then   newTable = {};else   newTable = cjson.decode(currentValue);  if not (type(newTable) == \'table\') then     return error(\'You can only append to a list\');  end end table.insert(newTable, toAppend);local newValue = cjson.encode(newTable);redis.call(\'set\', project .. \":\" .. key, newValue);table.insert(subTable1, newValue);table.insert(subTable, key);table.insert(subTable, subTable1);redis.call(\"publish\", project, cjson.encode(subTable));return newValue;"

.field private static final APPEND_SCRIPT_SHA1:Ljava/lang/String; = "d6cc0f65b29878589f00564d52c8654967e9bcf8"

.field private static final COMODO_ROOT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

.field private static final COMODO_USRTRUST:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

.field private static final DEBUG:Z = false

.field private static final DST_ROOT_X3:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDSjCCAjKgAwIBAgIQRK+wgNajJ7qJMDmGLvhAazANBgkqhkiG9w0BAQUFADA/\nMSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT\nDkRTVCBSb290IENBIFgzMB4XDTAwMDkzMDIxMTIxOVoXDTIxMDkzMDE0MDExNVow\nPzEkMCIGA1UEChMbRGlnaXRhbCBTaWduYXR1cmUgVHJ1c3QgQ28uMRcwFQYDVQQD\nEw5EU1QgUm9vdCBDQSBYMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB\nAN+v6ZdQCINXtMxiZfaQguzH0yxrMMpb7NnDfcdAwRgUi+DoM3ZJKuM/IUmTrE4O\nrz5Iy2Xu/NMhD2XSKtkyj4zl93ewEnu1lcCJo6m67XMuegwGMoOifooUMM0RoOEq\nOLl5CjH9UL2AZd+3UWODyOKIYepLYYHsUmu5ouJLGiifSKOeDNoJjj4XLh7dIN9b\nxiqKqy69cK3FCxolkHRyxXtqqzTWMIn/5WgTe1QLyNau7Fqckh49ZLOMxt+/yUFw\n7BZy1SbsOFU5Q9D8/RhcQPGX69Wam40dutolucbY38EVAjqr2m7xPi71XAicPNaD\naeQQmxkqtilX4+U9m5/wAl0CAwEAAaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNV\nHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFMSnsaR7LHH62+FLkHX/xBVghYkQMA0GCSqG\nSIb3DQEBBQUAA4IBAQCjGiybFwBcqR7uKGY3Or+Dxz9LwwmglSBd49lZRNI+DT69\nikugdB/OEIKcdBodfpga3csTS7MgROSR6cz8faXbauX+5v3gTt23ADq1cEmv8uXr\nAvHRAosZy5Q6XkjEGB5YGV8eAlrwDPGxrancWYaLbumR9YbK+rlmM6pZW87ipxZz\nR8srzJmwN0jP41ZL9c8PDHIyh8bwRLtTcm1D9SZImlJnt1ir/md2cXjbDaJWFBM5\nJDGFoqgCWjBH4d1QB7wCCZAA62RjYJsWvIjJEubSfZGL+T0yjWW06XyxV3bqxbYo\nOb8VZRzI9neWagqNdwvYkQsEjgfbKbYK7p2CNTUQ\n-----END CERTIFICATE-----\n"

.field private static final LOG_TAG:Ljava/lang/String; = "CloudDB"

.field private static final MIT_CA:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n"

.field private static final POP_FIRST_SCRIPT:Ljava/lang/String; = "local key = KEYS[1];local project = ARGV[1];local currentValue = redis.call(\'get\', project .. \":\" .. key);local decodedValue = cjson.decode(currentValue);local subTable = {};local subTable1 = {};if (type(decodedValue) == \'table\') then   local removedValue = table.remove(decodedValue, 1);  local newValue = cjson.encode(decodedValue);  redis.call(\'set\', project .. \":\" .. key, newValue);  table.insert(subTable, key);  table.insert(subTable1, newValue);  table.insert(subTable, subTable1);  redis.call(\"publish\", project, cjson.encode(subTable));  return cjson.encode(removedValue);else   return error(\'You can only remove elements from a list\');end"

.field private static final POP_FIRST_SCRIPT_SHA1:Ljava/lang/String; = "ed4cb4717d157f447848fe03524da24e461028e1"

.field private static final SET_SUB_SCRIPT:Ljava/lang/String; = "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

.field private static final SET_SUB_SCRIPT_SHA1:Ljava/lang/String; = "765978e4c340012f50733280368a0ccc4a14dfb7"


# instance fields
.field private INSTANCE:Lredis/clients/jedis/Jedis;

.field private SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final activity:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private volatile background:Ljava/util/concurrent/ExecutorService;

.field private cm:Landroid/net/ConnectivityManager;

.field private volatile currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

.field private volatile dead:Z

.field private defaultRedisServer:Ljava/lang/String;

.field private havePermission:Z

.field private importProject:Z

.field private isPublic:Z

.field private volatile listenerRunning:Z

.field private projectID:Ljava/lang/String;

.field private volatile redisPort:I

.field private volatile redisServer:Ljava/lang/String;

.field private volatile shutdown:Z

.field private final storeQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/CloudDB$storedValue;",
            ">;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private useDefault:Z

.field private volatile useSSL:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 308
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 114
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->importProject:Z

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    .line 117
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->isPublic:Z

    .line 119
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->dead:Z

    .line 246
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    .line 247
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    .line 252
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    .line 253
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    .line 255
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    .line 256
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->shutdown:Z

    .line 259
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 263
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z

    .line 271
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    .line 284
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->havePermission:Z

    .line 313
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    .line 314
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->activity:Landroid/app/Activity;

    .line 316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    .line 317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    .line 319
    const/16 v0, 0x18ed

    iput v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    .line 321
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/CloudDB;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/CloudDB;Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;
    .param p1, "x1"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/CloudDB;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/CloudDB;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->dead:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/CloudDB;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->shutdown:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V

    return-void
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/CloudDB;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->havePermission:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/CloudDB;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/CloudDB;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkProjectIDNotBlank()V
    .locals 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CloudDB ProjectID property cannot be blank."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CloudDB Token property cannot be blank"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :cond_1
    return-void
.end method

.method private declared-synchronized ensureSslSockFactory()V
    .locals 18

    .prologue
    .line 1364
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/CloudDB;->SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_0

    .line 1421
    :goto_0
    monitor-exit p0

    return-void

    .line 1368
    :cond_0
    :try_start_1
    const-string v13, "X.509"

    invoke-static {v13}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 1369
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v13, "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n"

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1370
    .local v2, "caInput":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v4, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 1371
    .local v1, "ca":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1372
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .end local v2    # "caInput":Ljava/io/ByteArrayInputStream;
    const-string v13, "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n"

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1373
    .restart local v2    # "caInput":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v4, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    .line 1374
    .local v9, "inter":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1375
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .end local v2    # "caInput":Ljava/io/ByteArrayInputStream;
    const-string v13, "-----BEGIN CERTIFICATE-----\nMIIDSjCCAjKgAwIBAgIQRK+wgNajJ7qJMDmGLvhAazANBgkqhkiG9w0BAQUFADA/\nMSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT\nDkRTVCBSb290IENBIFgzMB4XDTAwMDkzMDIxMTIxOVoXDTIxMDkzMDE0MDExNVow\nPzEkMCIGA1UEChMbRGlnaXRhbCBTaWduYXR1cmUgVHJ1c3QgQ28uMRcwFQYDVQQD\nEw5EU1QgUm9vdCBDQSBYMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB\nAN+v6ZdQCINXtMxiZfaQguzH0yxrMMpb7NnDfcdAwRgUi+DoM3ZJKuM/IUmTrE4O\nrz5Iy2Xu/NMhD2XSKtkyj4zl93ewEnu1lcCJo6m67XMuegwGMoOifooUMM0RoOEq\nOLl5CjH9UL2AZd+3UWODyOKIYepLYYHsUmu5ouJLGiifSKOeDNoJjj4XLh7dIN9b\nxiqKqy69cK3FCxolkHRyxXtqqzTWMIn/5WgTe1QLyNau7Fqckh49ZLOMxt+/yUFw\n7BZy1SbsOFU5Q9D8/RhcQPGX69Wam40dutolucbY38EVAjqr2m7xPi71XAicPNaD\naeQQmxkqtilX4+U9m5/wAl0CAwEAAaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNV\nHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFMSnsaR7LHH62+FLkHX/xBVghYkQMA0GCSqG\nSIb3DQEBBQUAA4IBAQCjGiybFwBcqR7uKGY3Or+Dxz9LwwmglSBd49lZRNI+DT69\nikugdB/OEIKcdBodfpga3csTS7MgROSR6cz8faXbauX+5v3gTt23ADq1cEmv8uXr\nAvHRAosZy5Q6XkjEGB5YGV8eAlrwDPGxrancWYaLbumR9YbK+rlmM6pZW87ipxZz\nR8srzJmwN0jP41ZL9c8PDHIyh8bwRLtTcm1D9SZImlJnt1ir/md2cXjbDaJWFBM5\nJDGFoqgCWjBH4d1QB7wCCZAA62RjYJsWvIjJEubSfZGL+T0yjWW06XyxV3bqxbYo\nOb8VZRzI9neWagqNdwvYkQsEjgfbKbYK7p2CNTUQ\n-----END CERTIFICATE-----\n"

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1376
    .restart local v2    # "caInput":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v4, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    .line 1377
    .local v7, "dstx3":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1378
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .end local v2    # "caInput":Ljava/io/ByteArrayInputStream;
    const-string v13, "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n"

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1379
    .restart local v2    # "caInput":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v4, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    .line 1380
    .local v11, "mitca":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1387
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    .line 1388
    .local v10, "keyStore":Ljava/security/KeyStore;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1390
    const/4 v5, 0x1

    .line 1391
    .local v5, "count":I
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/CloudDB;->getSystemCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v14

    array-length v15, v14

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v15, :cond_1

    aget-object v3, v14, v13

    .line 1392
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "root"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1393
    add-int/lit8 v5, v5, 0x1

    .line 1391
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1399
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    const-string v13, "comodo"

    invoke-virtual {v10, v13, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1400
    const-string v13, "inter"

    invoke-virtual {v10, v13, v9}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1401
    const-string v13, "dstx3"

    invoke-virtual {v10, v13, v7}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1402
    const-string v13, "mitca"

    invoke-virtual {v10, v13, v11}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1404
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v13

    .line 1403
    invoke-static {v13}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v12

    .line 1405
    .local v12, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v12, v10}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1413
    const-string v13, "TLS"

    invoke-static {v13}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    .line 1414
    .local v6, "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v13, 0x0

    invoke-virtual {v12}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v14, v15}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1415
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/appinventor/components/runtime/CloudDB;->SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1416
    .end local v1    # "ca":Ljava/security/cert/Certificate;
    .end local v2    # "caInput":Ljava/io/ByteArrayInputStream;
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "count":I
    .end local v6    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v7    # "dstx3":Ljava/security/cert/Certificate;
    .end local v9    # "inter":Ljava/security/cert/Certificate;
    .end local v10    # "keyStore":Ljava/security/KeyStore;
    .end local v11    # "mitca":Ljava/security/cert/Certificate;
    .end local v12    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v8

    .line 1417
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v13, "CloudDB"

    const-string v14, "Could not setup SSL Trust Store for CloudDB"

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1418
    new-instance v13, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v14, "Could Not setup SSL Trust Store for CloudDB: "

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1364
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method private flushJedis(Z)V
    .locals 2
    .param p1, "restartListener"    # Z

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    if-nez v0, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    .line 1280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$13;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/CloudDB$13;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1290
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->stopListener()V

    .line 1291
    if-eqz p1, :cond_0

    .line 1292
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V

    goto :goto_0

    .line 1273
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fullName"    # Ljava/lang/String;

    .prologue
    .line 1337
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1338
    .local v1, "fileName":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1339
    .local v0, "dotIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getSystemCertificates()[Ljava/security/cert/X509Certificate;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1430
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 1429
    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 1431
    .local v2, "otmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v3, 0x0

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1432
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 1433
    .local v1, "otm":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1436
    .end local v1    # "otm":Ljavax/net/ssl/X509TrustManager;
    .end local v2    # "otmf":Ljavax/net/ssl/TrustManagerFactory;
    :goto_0
    return-object v3

    .line 1434
    :catch_0
    move-exception v0

    .line 1435
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CloudDB"

    const-string v4, "Getting System Certificates"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1436
    new-array v3, v5, [Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method private readFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1312
    move-object v4, p1

    .line 1314
    .local v4, "originalFileName":Ljava/lang/String;
    :try_start_0
    const-string v6, "file://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1315
    const/4 v6, 0x7

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1317
    :cond_0
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1318
    new-instance v6, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid fileName, was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ReadFrom"

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1327
    :catch_0
    move-exception v1

    .line 1328
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Read"

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 1320
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1321
    .local v3, "extension":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v6, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->readFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)[B

    move-result-object v0

    .line 1322
    .local v0, "content":[B
    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 1323
    .local v2, "encodedContent":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Object;

    .line 1324
    .local v5, "results":[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1325
    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 1326
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    return-object v6

    .line 1329
    .end local v0    # "content":[B
    .end local v2    # "encodedContent":Ljava/lang/String;
    .end local v3    # "extension":Ljava/lang/String;
    .end local v5    # "results":[Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 1330
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Read"

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6
.end method

.method private declared-synchronized startListener()V
    .locals 2

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 434
    :goto_0
    monitor-exit p0

    return-void

    .line 382
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z

    .line 386
    new-instance v0, Lcom/google/appinventor/components/runtime/CloudDB$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/CloudDB$1;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    .line 433
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 376
    .end local v0    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private stopListener()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->terminate()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->listenerRunning:Z

    .line 349
    :cond_0
    return-void
.end method


# virtual methods
.method public AppendValueToList(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "itemToAdd"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Append a value to the end of a list atomically. If two devices use this function simultaneously, both will be appended and no data lost."
    .end annotation

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 1000
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1002
    .local v2, "itemObject":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 1003
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v2    # "itemObject":Ljava/lang/Object;
    :cond_0
    move-object v1, v2

    .line 1009
    check-cast v1, Ljava/lang/String;

    .line 1010
    .local v1, "item":Ljava/lang/String;
    move-object v3, p1

    .line 1012
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/google/appinventor/components/runtime/CloudDB$8;

    invoke-direct {v5, p0, v3, v1}, Lcom/google/appinventor/components/runtime/CloudDB$8;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1023
    return-void

    .line 1005
    .end local v1    # "item":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .restart local v2    # "itemObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v5, "Value failed to convert to JSON."

    const-string v6, "JSON Creation Error."

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public ClearTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove the tag from CloudDB."
    .end annotation

    .prologue
    .line 1070
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 1071
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$9;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB$9;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1082
    return-void
.end method

.method public CloudConnected()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "returns True if we are on the network and will likely be able to connect to the CloudDB server."
    .end annotation

    .prologue
    .line 878
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 879
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 880
    .local v0, "isConnected":Z
    :goto_0
    return v0

    .line 879
    .end local v0    # "isConnected":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CloudDBError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that an error occurred while communicating with the CloudDB Redis server."
    .end annotation

    .prologue
    .line 1176
    const-string v0, "CloudDB"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/CloudDB$12;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/CloudDB$12;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1189
    return-void
.end method

.method public DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1149
    const-string v2, ""

    .line 1151
    .local v2, "tagValue":Ljava/lang/String;
    if-eqz p2, :cond_0

    :try_start_0
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1152
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    const/4 v3, 0x1

    invoke-static {p2, v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "tagValue":Ljava/lang/Object;
    move-object v1, v2

    .line 1159
    .end local v2    # "tagValue":Ljava/lang/Object;
    .local v1, "finalTagValue":Ljava/lang/Object;
    .local v1, "tagValue":Ljava/lang/Object;
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/appinventor/components/runtime/CloudDB$11;

    invoke-direct {v4, p0, p1, v1}, Lcom/google/appinventor/components/runtime/CloudDB$11;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1165
    return-void

    .line 1154
    .end local v1    # "tagValue":Ljava/lang/Object;
    .local v2, "tagValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v4, "Value failed to convert from JSON."

    const-string v5, "JSON Retrieval Error."

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .end local v0    # "e":Lorg/json/JSONException;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    move-object v1, v2

    .local v1, "tagValue":Ljava/lang/Object;
    goto :goto_0
.end method

.method public DefaultRedisServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "server"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Default Redis Server to use."
        userVisible = false
    .end annotation

    .prologue
    .line 482
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    .line 483
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    if-eqz v0, :cond_0

    .line 484
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    .line 486
    :cond_0
    return-void
.end method

.method public FirstRemoved(Ljava/lang/Object;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered by the \"RemoveFirstFromList\" function. The argument \"value\" is the object that was the first in the list, and which is now removed."
    .end annotation

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 899
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 900
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 906
    :cond_0
    move-object v2, p1

    .line 907
    .local v2, "sValue":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB;->androidUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/appinventor/components/runtime/CloudDB$6;

    invoke-direct {v4, p0, v2}, Lcom/google/appinventor/components/runtime/CloudDB$6;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 913
    .end local v2    # "sValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 902
    :catch_0
    move-exception v1

    .line 903
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "CloudDB"

    const-string v4, "error while converting to JSON..."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public GetTagList()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the list of tags for this application. When complete a \"TagList\" event will be triggered with the list of known tags."
    .end annotation

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 1093
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1094
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1095
    .local v0, "isConnected":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1096
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/appinventor/components/runtime/CloudDB$10;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/CloudDB$10;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1125
    :goto_1
    return-void

    .line 1094
    .end local v0    # "isConnected":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1123
    .restart local v0    # "isConnected":Z
    :cond_1
    const-string v2, "Not connected to the Internet, cannot list tags"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public GetValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 17
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueIfTagNotThere"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Value for a tag, doesn\'t return the value but will cause a GotValue event to fire when the value is looked up."
    .end annotation

    .prologue
    .line 788
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 789
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/appinventor/components/runtime/CloudDB;->havePermission:Z

    if-nez v3, :cond_0

    .line 790
    move-object/from16 v8, p0

    .line 791
    .local v8, "me":Lcom/google/appinventor/components/runtime/CloudDB;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/CloudDB$4;

    const-string v6, "CloudDB"

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v5, v7, v4

    const/4 v4, 0x1

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v7, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/google/appinventor/components/runtime/CloudDB$4;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 867
    .end local v8    # "me":Lcom/google/appinventor/components/runtime/CloudDB;
    :goto_0
    return-void

    .line 801
    :cond_0
    new-instance v15, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v15}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 802
    .local v15, "value":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    const/4 v11, 0x0

    .line 803
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 804
    .local v12, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    .line 805
    .local v14, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v13, 0x1

    .line 807
    .local v13, "isConnected":Z
    :goto_1
    if-eqz v13, :cond_2

    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/google/appinventor/components/runtime/CloudDB$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v15, v2}, Lcom/google/appinventor/components/runtime/CloudDB$5;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 805
    .end local v13    # "isConnected":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 865
    .restart local v13    # "isConnected":Z
    :cond_2
    const-string v3, "Cannot fetch variables while off-line."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1036
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 1040
    if-nez p2, :cond_0

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trouble getting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from the server."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1058
    :goto_0
    return-void

    .line 1049
    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1050
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 1057
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v1, "GotValue"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1052
    .end local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Value failed to convert from JSON."

    const-string v3, "JSON Retrieval Error."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->currentListener:Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    if-nez v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V

    .line 335
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 336
    return-void
.end method

.method public ProjectID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the ProjectID for this CloudDB project."
    .end annotation

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 512
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    return-object v0
.end method

.method public ProjectID(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->projectID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CloudDB ProjectID property cannot be blank."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_1
    return-void
.end method

.method public RedisPort()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Redis Server port to use. Defaults to 6381"
    .end annotation

    .prologue
    .line 500
    iget v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    return v0
.end method

.method public RedisPort(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "6381"
        editorType = "integer"
    .end annotation

    .prologue
    .line 491
    iget v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    if-eq p1, v0, :cond_0

    .line 492
    iput p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    .line 493
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 495
    :cond_0
    return-void
.end method

.method public RedisServer()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Redis Server to use to store data. A setting of \"DEFAULT\" means that the MIT server will be used."
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const-string v0, "DEFAULT"

    .line 467
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    goto :goto_0
.end method

.method public RedisServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "servername"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "string"
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 439
    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    if-nez v0, :cond_0

    .line 441
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    .line 442
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 449
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 458
    :cond_0
    :goto_1
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->defaultRedisServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    goto :goto_0

    .line 452
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useDefault:Z

    .line 453
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    .line 455
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    goto :goto_1
.end method

.method public RemoveFirstFromList(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the first element of a list and atomically remove it. If two devices use this function simultaneously, one will get the first element and the the other will get the second element, or an error if there is no available element. When the element is available, the \"FirstRemoved\" event will be triggered."
    .end annotation

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 952
    move-object v0, p1

    .line 954
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/CloudDB$7;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB$7;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 965
    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 20
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueToStore"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Store a value at a tag."
    .end annotation

    .prologue
    .line 616
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 617
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/appinventor/components/runtime/CloudDB;->havePermission:Z

    if-nez v3, :cond_0

    .line 618
    move-object/from16 v8, p0

    .line 619
    .local v8, "me":Lcom/google/appinventor/components/runtime/CloudDB;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v19, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/CloudDB$2;

    const-string v6, "CloudDB"

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v5, v7, v4

    const/4 v4, 0x1

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v7, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/google/appinventor/components/runtime/CloudDB$2;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 769
    .end local v8    # "me":Lcom/google/appinventor/components/runtime/CloudDB;
    :goto_0
    return-void

    .line 630
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/CloudDB;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    .line 631
    .local v14, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v12, 0x1

    .line 634
    .local v12, "isConnected":Z
    :goto_1
    if-eqz p2, :cond_6

    .line 635
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 636
    .local v15, "strval":Ljava/lang/String;
    const-string v3, "file:///"

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "/storage"

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 637
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/appinventor/components/runtime/CloudDB;->readFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 648
    .end local v15    # "strval":Ljava/lang/String;
    .local v16, "value":Ljava/lang/String;
    :goto_2
    if-eqz v12, :cond_7

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    monitor-enter v4

    .line 653
    const/4 v13, 0x0

    .line 654
    .local v13, "kickit":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 658
    const/4 v13, 0x1

    .line 664
    :cond_2
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    .local v17, "valueList":Lorg/json/JSONArray;
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 670
    :try_start_3
    new-instance v18, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 671
    .local v18, "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/CloudDB;->storeQueue:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    if-eqz v13, :cond_3

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/google/appinventor/components/runtime/CloudDB$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/appinventor/components/runtime/CloudDB$3;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 765
    :cond_3
    monitor-exit v4

    goto :goto_0

    .end local v17    # "valueList":Lorg/json/JSONArray;
    .end local v18    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 631
    .end local v12    # "isConnected":Z
    .end local v13    # "kickit":Z
    .end local v16    # "value":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 639
    .restart local v12    # "isConnected":Z
    .restart local v15    # "strval":Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-static/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_2

    .line 642
    .end local v15    # "strval":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_6
    const-string v16, ""
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_2

    .line 644
    .end local v16    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 645
    .local v11, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v4, "Value failed to convert to JSON."

    const-string v5, "JSON Creation Error."

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 667
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v13    # "kickit":Z
    .restart local v16    # "value":Ljava/lang/String;
    .restart local v17    # "valueList":Lorg/json/JSONArray;
    :catch_1
    move-exception v11

    .line 668
    .restart local v11    # "e":Lorg/json/JSONException;
    :try_start_5
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v5, "JSON Error putting value."

    const-string v6, "value is not convertable"

    invoke-direct {v3, v5, v6}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 767
    .end local v11    # "e":Lorg/json/JSONException;
    .end local v13    # "kickit":Z
    .end local v17    # "valueList":Lorg/json/JSONArray;
    :cond_7
    const-string v3, "Cannot store values off-line."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public TagList(Ljava/util/List;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when we have received the list of known tags. Used with the \"GetTagList\" Function."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1136
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 1137
    const-string v0, "TagList"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1138
    return-void
.end method

.method public Token()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This field contains the authentication token used to login to the backed Redis server. For the \"DEFAULT\" server, do not edit this value, the system will fill it in for you. A system administrator may also provide a special value to you which can be used to share data between multiple projects from multiple people. If using your own Redis server, set a password in the server\'s config and enter it here."
        userVisible = false
    .end annotation

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->checkProjectIDNotBlank()V

    .line 568
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    return-object v0
.end method

.method public Token(Ljava/lang/String;)V
    .locals 2
    .param p1, "authToken"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CloudDB Token property cannot be blank."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_1
    return-void
.end method

.method public UseSSL(Z)V
    .locals 1
    .param p1, "useSSL"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    if-eq v0, p1, :cond_0

    .line 581
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    .line 582
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 584
    :cond_0
    return-void
.end method

.method public UseSSL()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set to true to use SSL to talk to CloudDB/Redis server. This should be set to True for the \"DEFAULT\" server."
        userVisible = false
    .end annotation

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    return v0
.end method

.method public getBackground()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->background:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getForm()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public declared-synchronized getJedis()Lredis/clients/jedis/Jedis;
    .locals 1

    .prologue
    .line 1253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    if-nez v0, :cond_0

    .line 1254
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis(Z)Lredis/clients/jedis/Jedis;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->INSTANCE:Lredis/clients/jedis/Jedis;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getJedis(Z)Lredis/clients/jedis/Jedis;
    .locals 10
    .param p1, "createNew"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1206
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->dead:Z

    if-eqz v1, :cond_0

    move-object v0, v8

    .line 1249
    :goto_0
    return-object v0

    .line 1216
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->useSSL:Z

    if-eqz v1, :cond_1

    .line 1219
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->ensureSslSockFactory()V

    .line 1220
    new-instance v0, Lredis/clients/jedis/Jedis;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    iget v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB;->SslSockFactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/Jedis;-><init>(Ljava/lang/String;IZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 1230
    .local v0, "jedis":Lredis/clients/jedis/Jedis;
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1231
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Jedis;->auth(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lredis/clients/jedis/exceptions/JedisDataException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1238
    .end local v0    # "jedis":Lredis/clients/jedis/Jedis;
    :catch_0
    move-exception v7

    .line 1239
    .local v7, "e":Lredis/clients/jedis/exceptions/JedisConnectionException;
    const-string v1, "CloudDB"

    const-string v2, "in getJedis()"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1240
    invoke-virtual {v7}, Lredis/clients/jedis/exceptions/JedisConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    move-object v0, v8

    .line 1241
    goto :goto_0

    .line 1222
    .end local v7    # "e":Lredis/clients/jedis/exceptions/JedisConnectionException;
    :cond_1
    :try_start_1
    new-instance v0, Lredis/clients/jedis/Jedis;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisServer:Ljava/lang/String;

    iget v2, p0, Lcom/google/appinventor/components/runtime/CloudDB;->redisPort:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lredis/clients/jedis/Jedis;-><init>(Ljava/lang/String;IZ)V

    .restart local v0    # "jedis":Lredis/clients/jedis/Jedis;
    goto :goto_1

    .line 1233
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Jedis;->auth(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lredis/clients/jedis/exceptions/JedisDataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1242
    .end local v0    # "jedis":Lredis/clients/jedis/Jedis;
    :catch_1
    move-exception v7

    .line 1244
    .local v7, "e":Lredis/clients/jedis/exceptions/JedisDataException;
    const-string v1, "CloudDB"

    const-string v2, "in getJedis()"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lredis/clients/jedis/exceptions/JedisDataException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CloudDB disabled, restart to re-enable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1246
    iput-boolean v9, p0, Lcom/google/appinventor/components/runtime/CloudDB;->dead:Z

    move-object v0, v8

    .line 1247
    goto :goto_0
.end method

.method public varargs jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "scriptsha1"    # Ljava/lang/String;
    .param p3, "argcount"    # I
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lredis/clients/jedis/exceptions/JedisException;
        }
    .end annotation

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v1

    .line 1349
    .local v1, "jedis":Lredis/clients/jedis/Jedis;
    :try_start_0
    invoke-virtual {v1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->evalsha(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisNoScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1356
    :goto_0
    return-object v2

    .line 1350
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "e":Lredis/clients/jedis/exceptions/JedisNoScriptException;
    invoke-virtual {v1, p1, p3, p4}, Lredis/clients/jedis/Jedis;->eval(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public onClear()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/CloudDB;->shutdown:Z

    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB;->flushJedis(Z)V

    .line 362
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CloudDB;->onClear()V

    .line 370
    return-void
.end method
