.class public Lcom/google/appinventor/components/runtime/util/PropertyUtil;
.super Ljava/lang/Object;
.source "PropertyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyComponentProperties(Lcom/google/appinventor/components/runtime/Component;Lcom/google/appinventor/components/runtime/Component;)Lcom/google/appinventor/components/runtime/Component;
    .locals 16
    .param p0, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p1, "target"    # Lcom/google/appinventor/components/runtime/Component;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 32
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Source and target classes must be identical"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 35
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 36
    .local v1, "componentClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 37
    .local v3, "componentMethods":[Ljava/lang/reflect/Method;
    array-length v13, v3

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_3

    aget-object v2, v3, v12

    .line 39
    .local v2, "componentMethod":Ljava/lang/reflect/Method;
    const-class v14, Lcom/google/appinventor/components/annotations/SimpleProperty;

    invoke-virtual {v2, v14}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 40
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 41
    move-object v9, v2

    .line 43
    .local v9, "propertySetterMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, "propertyName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Copy"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 47
    invoke-static {v14, v1}, Lcom/google/appinventor/components/runtime/util/PropertyUtil;->getPropertyCopierMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 48
    .local v6, "propertyCopierMethod":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_2

    .line 49
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v6    # "propertyCopierMethod":Ljava/lang/reflect/Method;
    .end local v8    # "propertyName":Ljava/lang/String;
    .end local v9    # "propertySetterMethod":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 55
    .restart local v6    # "propertyCopierMethod":Ljava/lang/reflect/Method;
    .restart local v8    # "propertyName":Ljava/lang/String;
    .restart local v9    # "propertySetterMethod":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 56
    .local v7, "propertyGetterMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v10, v14, v15

    .line 59
    .local v10, "propertySetterParameterType":Ljava/lang/Class;
    const-class v14, Lcom/google/appinventor/components/annotations/SimpleProperty;

    invoke-virtual {v7, v14}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 60
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 61
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 62
    .local v11, "propertyValue":Ljava/lang/Object;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 64
    .end local v6    # "propertyCopierMethod":Ljava/lang/reflect/Method;
    .end local v7    # "propertyGetterMethod":Ljava/lang/reflect/Method;
    .end local v8    # "propertyName":Ljava/lang/String;
    .end local v10    # "propertySetterParameterType":Ljava/lang/Class;
    .end local v11    # "propertyValue":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 66
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 67
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v5

    .line 69
    .local v5, "e2":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    throw v12

    .line 73
    .end local v2    # "componentMethod":Ljava/lang/reflect/Method;
    .end local v5    # "e2":Ljava/lang/reflect/InvocationTargetException;
    .end local v9    # "propertySetterMethod":Ljava/lang/reflect/Method;
    :cond_3
    return-object p1
.end method

.method private static getPropertyCopierMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "copierMethodName"    # Ljava/lang/String;
    .param p1, "componentClass"    # Ljava/lang/Class;

    .prologue
    .line 84
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p1, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 85
    .local v0, "propertyCopierMethod":Ljava/lang/reflect/Method;
    const-class v1, Lcom/google/appinventor/components/annotations/SimplePropertyCopier;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    .end local v0    # "propertyCopierMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 92
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method
