.class Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;
.super Ljava/lang/Object;
.source "ProxyMethod.java"


# instance fields
.field commonExceptions:[Ljava/lang/Class;

.field declaringClass:Ljava/lang/Class;

.field method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 1
    .parameter "declaringClass"
    .parameter "method"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->declaringClass:Ljava/lang/Class;

    .line 32
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    .line 33
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    .line 34
    return-void
.end method

.method private containsClass([Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 5
    .parameter "classArray"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 37
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 42
    :goto_1
    return v1

    .line 37
    :cond_0
    aget-object v0, p1, v2

    .line 38
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    const/4 v1, 0x1

    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method getCheckedExceptions()[Ljava/lang/Class;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 46
    iget-object v9, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    invoke-virtual {v9}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Class;

    .line 47
    .local v6, newExceptions:[Ljava/lang/Class;
    array-length v2, v6

    .line 48
    .local v2, cLength:I
    const/4 v0, 0x0

    .local v0, c:I
    move v1, v2

    .local v1, cL:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 63
    add-int/lit8 v9, v2, 0x2

    new-array v7, v9, [Ljava/lang/Class;

    .line 64
    .local v7, result:[Ljava/lang/Class;
    const/4 v4, 0x0

    .line 65
    .local v4, index:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    const-class v9, Ljava/lang/Error;

    aput-object v9, v7, v4

    .line 66
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    const-class v9, Ljava/lang/RuntimeException;

    aput-object v9, v7, v5

    .line 67
    array-length v9, v6

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    :goto_1
    if-lt v8, v9, :cond_4

    .line 72
    .end local v5           #index:I
    .end local v7           #result:[Ljava/lang/Class;
    :goto_2
    return-object v7

    .line 49
    :cond_0
    aget-object v3, v6, v0

    .line 50
    .local v3, ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v9, Ljava/lang/Throwable;

    if-ne v9, v3, :cond_1

    .line 53
    new-array v7, v8, [Ljava/lang/Class;

    goto :goto_2

    .line 55
    :cond_1
    const-class v9, Ljava/lang/Error;

    invoke-virtual {v9, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 56
    const-class v9, Ljava/lang/RuntimeException;

    invoke-virtual {v9, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 57
    :cond_2
    const/4 v9, 0x0

    aput-object v9, v6, v0

    .line 58
    add-int/lit8 v2, v2, -0x1

    .line 48
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v3           #ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v5       #index:I
    .restart local v7       #result:[Ljava/lang/Class;
    :cond_4
    aget-object v3, v6, v8

    .line 68
    .restart local v3       #ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v3, :cond_5

    .line 69
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aput-object v3, v7, v5

    .line 67
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_1

    :cond_5
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_3
.end method

.method getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method matchMethod(Ljava/lang/reflect/Method;)Z
    .locals 24
    .parameter "otherMethod"

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 81
    const/16 v21, 0x0

    .line 150
    :goto_0
    return v21

    .line 84
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v18

    .line 85
    .local v18, params1:[Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v19

    .line 86
    .local v19, params2:[Ljava/lang/Class;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v17, v0

    .line 87
    .local v17, p:I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 88
    const/16 v21, 0x0

    goto :goto_0

    .line 91
    :cond_1
    aget-object v21, v18, v17

    aget-object v22, v19, v17

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 92
    const/16 v21, 0x0

    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 v17, v17, -0x1

    if-gez v17, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v20

    .line 97
    .local v20, thisMethodReturnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v16

    .line 98
    .local v16, otherMethodReturnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 99
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 101
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    .line 108
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 109
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v15

    .line 110
    .local v15, otherExceptions:[Ljava/lang/Class;
    array-length v0, v15

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 111
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    .line 150
    .end local v15           #otherExceptions:[Ljava/lang/Class;
    :cond_4
    :goto_1
    const/16 v21, 0x1

    goto :goto_0

    .line 103
    :cond_5
    new-instance v21, Ljava/lang/IllegalArgumentException;

    .line 104
    const-string v22, "luni.19"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v23

    .line 103
    invoke-static/range {v22 .. v23}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 113
    .restart local v15       #otherExceptions:[Ljava/lang/Class;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v5, v0

    .line 114
    .local v5, cLength:I
    const/4 v2, 0x0

    .local v2, c:I
    move v4, v5

    .local v4, cL:I
    array-length v14, v15

    .local v14, oL:I
    :goto_2
    if-lt v2, v4, :cond_7

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v5, v0, :cond_4

    .line 139
    new-array v11, v5, [Ljava/lang/Class;

    .line 140
    .local v11, newExceptions:[Ljava/lang/Class;
    const/4 v7, 0x0

    .local v7, i:I
    const/4 v8, 0x0

    .local v8, j:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v10, v0

    .local v10, length:I
    move v9, v8

    .end local v8           #j:I
    .local v9, j:I
    :goto_3
    if-lt v7, v10, :cond_b

    .line 146
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    goto :goto_1

    .line 115
    .end local v7           #i:I
    .end local v9           #j:I
    .end local v10           #length:I
    .end local v11           #newExceptions:[Ljava/lang/Class;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    aget-object v3, v21, v2

    .line 116
    .local v3, cException:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    .local v12, o:I
    :goto_4
    if-lt v12, v14, :cond_9

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v22, v21, v2

    .line 136
    add-int/lit8 v5, v5, -0x1

    .line 114
    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 117
    :cond_9
    aget-object v13, v15, v12

    .line 118
    .local v13, oException:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eq v3, v13, :cond_8

    .line 121
    invoke-virtual {v13, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 124
    invoke-virtual {v3, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->containsClass([Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object v3, v13

    aput-object v13, v21, v2

    goto :goto_5

    .line 116
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 141
    .end local v3           #cException:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v12           #o:I
    .end local v13           #oException:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v7       #i:I
    .restart local v9       #j:I
    .restart local v10       #length:I
    .restart local v11       #newExceptions:[Ljava/lang/Class;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    aget-object v6, v21, v7

    .line 142
    .local v6, ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v6, :cond_c

    .line 143
    add-int/lit8 v8, v9, 0x1

    .end local v9           #j:I
    .restart local v8       #j:I
    aput-object v6, v11, v9

    .line 140
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move v9, v8

    .end local v8           #j:I
    .restart local v9       #j:I
    goto :goto_3

    :cond_c
    move v8, v9

    .end local v9           #j:I
    .restart local v8       #j:I
    goto :goto_6
.end method
