.class public final Landroidx/core/content/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/PermissionChecker$PermissionResult;
    }
.end annotation


# static fields
.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_DENIED_APP_OP:I = -0x2

.field public static final PERMISSION_GRANTED:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 173
    invoke-static {p0, p1, v1, v2, v0}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    return v1

    .line 172
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkCallingPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "packageName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 152
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 153
    const/4 v0, -0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 155
    invoke-static {p0, p1, v0, v1, p2}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v2

    .line 101
    :cond_1
    invoke-static {p1}, Landroidx/core/app/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "op":Ljava/lang/String;
    if-nez v0, :cond_2

    move v2, v3

    .line 103
    goto :goto_0

    .line 106
    :cond_2
    if-nez p4, :cond_3

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 111
    aget-object p4, v1, v3

    .line 114
    .end local v1    # "packageNames":[Ljava/lang/String;
    :cond_3
    invoke-static {p0, v0, p4}, Landroidx/core/app/AppOpsManagerCompat;->noteProxyOpNoThrow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    const/4 v2, -0x2

    goto :goto_0

    :cond_4
    move v2, v3

    .line 119
    goto :goto_0
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 135
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method
