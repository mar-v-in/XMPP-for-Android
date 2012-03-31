.class Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;
.super Ljava/lang/Object;
.source "ProxyConstantPool.java"

# interfaces
.implements Lorg/apache/harmony/luni/internal/reflect/ProxyConstants;


# static fields
.field public static final CLASS_INITIAL_SIZE:I = 0x15

.field public static final CONSTANTPOOL_GROW_SIZE:I = 0x3e8

.field public static final CONSTANTPOOL_INITIAL_SIZE:I = 0x1f4

.field public static final FIELD_INITIAL_SIZE:I = 0x7

.field public static final INTERFACE_INITIAL_SIZE:I = 0x15

.field public static final METHOD_INITIAL_SIZE:I = 0x15

.field public static final NAMEANDTYPE_INITIAL_SIZE:I = 0x15

.field public static final STRING_INITIAL_SIZE:I = 0x15

.field public static final UTF8_INITIAL_SIZE:I = 0x32


# instance fields
.field UTF8Cache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

.field classNameCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

.field currentIndex:I

.field currentOffset:I

.field fieldCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

.field interfaceMethodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

.field methodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

.field nameAndTypeCache:Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;

.field poolContent:[B

.field stringCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;)V
    .locals 3
    .parameter "classFile"

    .prologue
    const/16 v2, 0x15

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->UTF8Cache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    .line 65
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->stringCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    .line 66
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->classNameCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    .line 67
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->fieldCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    .line 68
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->methodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    .line 69
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->interfaceMethodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    .line 70
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->nameAndTypeCache:Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;

    .line 71
    iget-object v0, p1, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    .line 72
    iget v0, p1, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    iput v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    .line 74
    return-void
.end method

.method private final writeU1(I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 288
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v1, v2

    .line 292
    .local v1, length:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    .line 293
    add-int/lit16 v3, v1, 0x3e8

    new-array v3, v3, [B

    .line 292
    iput-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    invoke-static {v2, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v3, v3, -0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_0
.end method

.method private final writeU2(I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 300
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    :goto_1
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v1, v2

    .line 304
    .local v1, length:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    .line 305
    add-int/lit16 v3, v1, 0x3e8

    new-array v3, v3, [B

    .line 304
    iput-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    invoke-static {v2, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_0

    .line 310
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #length:I
    :catch_1
    move-exception v0

    .line 312
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v1, v2

    .line 313
    .restart local v1       #length:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    .line 314
    add-int/lit16 v3, v1, 0x3e8

    new-array v3, v3, [B

    .line 313
    iput-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    invoke-static {v2, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v3, v3, -0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_1
.end method


# virtual methods
.method literalIndex(Ljava/lang/String;)I
    .locals 6
    .parameter "stringConstant"

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 176
    .local v1, stringCharArray:[C
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->stringCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-virtual {v3, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->get([C)I

    move-result v0

    .local v0, index:I
    if-gez v0, :cond_0

    .line 177
    invoke-virtual {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v2

    .line 178
    .local v2, stringIndex:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->stringCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v3, v1, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->put([CI)I

    move-result v0

    .line 179
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 180
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 182
    .end local v2           #stringIndex:I
    :cond_0
    return v0
.end method

.method literalIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)I
    .locals 7
    .parameter "declaringClass"
    .parameter "name"
    .parameter "clazz"

    .prologue
    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->fieldCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    invoke-virtual {v4, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->get(Ljava/lang/Object;)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    .line 191
    .local v0, classIndex:I
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v4

    .line 192
    invoke-static {p3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/Class;)[C

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v5

    .line 190
    invoke-virtual {p0, v4, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndexForNameAndType(II)I

    move-result v3

    .line 193
    .local v3, nameAndTypeIndex:I
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->fieldCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    iget v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v4, v2, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->put(Ljava/lang/Object;I)I

    move-result v1

    .line 194
    const/16 v4, 0x9

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 195
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 196
    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 198
    .end local v0           #classIndex:I
    .end local v3           #nameAndTypeIndex:I
    :cond_0
    return v1
.end method

.method literalIndex(Ljava/lang/reflect/Constructor;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, aMethod:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->methodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->get(Ljava/lang/Object;)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, classIndex:I
    sget-object v3, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->Init:[C

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v3

    .line 130
    invoke-static {p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/reflect/Constructor;)[C

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v4

    .line 128
    invoke-virtual {p0, v3, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndexForNameAndType(II)I

    move-result v2

    .line 131
    .local v2, nameAndTypeIndex:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->methodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->put(Ljava/lang/Object;I)I

    move-result v1

    .line 132
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 133
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 134
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 136
    .end local v0           #classIndex:I
    .end local v2           #nameAndTypeIndex:I
    :cond_0
    return v1
.end method

.method literalIndex(Ljava/lang/reflect/Field;)I
    .locals 3
    .parameter "aField"

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 140
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method literalIndex(Ljava/lang/reflect/Method;)I
    .locals 6
    .parameter "aMethod"

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->interfaceMethodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->get(Ljava/lang/Object;)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, classIndex:I
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v3

    .line 153
    invoke-static {p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/reflect/Method;)[C

    move-result-object v4

    .line 152
    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v4

    .line 150
    invoke-virtual {p0, v3, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndexForNameAndType(II)I

    move-result v2

    .line 154
    .local v2, nameAndTypeIndex:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->interfaceMethodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->put(Ljava/lang/Object;I)I

    move-result v1

    .line 155
    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 156
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 157
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 170
    .end local v0           #classIndex:I
    .end local v2           #nameAndTypeIndex:I
    :cond_0
    :goto_0
    return v1

    .line 159
    .end local v1           #index:I
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->methodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->get(Ljava/lang/Object;)I

    move-result v1

    .restart local v1       #index:I
    if-gez v1, :cond_0

    .line 160
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    .line 163
    .restart local v0       #classIndex:I
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v3

    .line 164
    invoke-static {p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/reflect/Method;)[C

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v4

    .line 162
    invoke-virtual {p0, v3, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndexForNameAndType(II)I

    move-result v2

    .line 165
    .restart local v2       #nameAndTypeIndex:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->methodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->put(Ljava/lang/Object;I)I

    move-result v1

    .line 166
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 167
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 168
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    goto :goto_0
.end method

.method literalIndex([C)I
    .locals 8
    .parameter "utf8Constant"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 78
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->UTF8Cache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-virtual {v5, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->get([C)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_5

    .line 79
    invoke-direct {p0, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 80
    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 81
    .local v3, savedCurrentOffset:I
    iget v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v6, v6

    if-lt v5, v6, :cond_0

    .line 82
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v2, v5

    .line 83
    .local v2, length:I
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    .line 84
    add-int/lit16 v6, v2, 0x3e8

    new-array v6, v6, [B

    .line 83
    iput-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    invoke-static {v5, v4, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .end local v2           #length:I
    :cond_0
    iget v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 87
    const/4 v2, 0x0

    .line 88
    .restart local v2       #length:I
    array-length v5, p1

    :goto_0
    if-lt v4, v5, :cond_1

    .line 110
    const v4, 0xffff

    if-lt v2, v4, :cond_4

    .line 111
    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 112
    const/4 v4, -0x1

    .line 120
    .end local v2           #length:I
    .end local v3           #savedCurrentOffset:I
    :goto_1
    return v4

    .line 88
    .restart local v2       #length:I
    .restart local v3       #savedCurrentOffset:I
    :cond_1
    aget-char v0, p1, v4

    .line 89
    .local v0, current:C
    if-lt v0, v7, :cond_2

    const/16 v6, 0x7f

    if-gt v0, v6, :cond_2

    .line 91
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 88
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_2
    const/16 v6, 0x7ff

    if-le v0, v6, :cond_3

    .line 95
    add-int/lit8 v2, v2, 0x3

    .line 96
    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 98
    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 100
    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    goto :goto_2

    .line 104
    :cond_3
    add-int/lit8 v2, v2, 0x2

    .line 105
    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x1f

    or-int/lit16 v6, v6, 0xc0

    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 107
    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    goto :goto_2

    .line 114
    .end local v0           #current:C
    :cond_4
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->UTF8Cache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    iget v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v4, p1, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->put([CI)I

    move-result v1

    .line 117
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 118
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    add-int/lit8 v5, v3, 0x1

    int-to-byte v6, v2

    aput-byte v6, v4, v5

    .end local v2           #length:I
    .end local v3           #savedCurrentOffset:I
    :cond_5
    move v4, v1

    .line 120
    goto :goto_1
.end method

.method literalIndexForLdc([C)I
    .locals 11
    .parameter "stringCharArray"

    .prologue
    const v10, 0xffff

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 203
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->stringCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-virtual {v6, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->get([C)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_7

    .line 205
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->UTF8Cache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-virtual {v6, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->get([C)I

    move-result v4

    .local v4, stringIndex:I
    if-gez v4, :cond_6

    .line 206
    invoke-direct {p0, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 207
    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 208
    .local v3, savedCurrentOffset:I
    iget v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 209
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v2, v6

    .line 210
    .local v2, length:I
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    .line 212
    add-int/lit16 v7, v2, 0x3e8

    new-array v7, v7, [B

    .line 211
    iput-object v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    .line 210
    invoke-static {v6, v5, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    .end local v2           #length:I
    :cond_0
    iget v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 215
    const/4 v2, 0x0

    .line 216
    .restart local v2       #length:I
    array-length v7, p1

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_2

    .line 238
    if-lt v2, v10, :cond_5

    .line 239
    add-int/lit8 v5, v3, -0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 240
    const/4 v5, -0x1

    .line 256
    .end local v2           #length:I
    .end local v3           #savedCurrentOffset:I
    .end local v4           #stringIndex:I
    :cond_1
    :goto_1
    return v5

    .line 216
    .restart local v2       #length:I
    .restart local v3       #savedCurrentOffset:I
    .restart local v4       #stringIndex:I
    :cond_2
    aget-char v0, p1, v6

    .line 217
    .local v0, current:C
    if-lt v0, v9, :cond_3

    const/16 v8, 0x7f

    if-gt v0, v8, :cond_3

    .line 219
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 220
    add-int/lit8 v2, v2, 0x1

    .line 216
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 221
    :cond_3
    const/16 v8, 0x7ff

    if-le v0, v8, :cond_4

    .line 223
    add-int/lit8 v2, v2, 0x3

    .line 224
    shr-int/lit8 v8, v0, 0xc

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xe0

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 226
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 228
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v8, v8, 0x80

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    goto :goto_2

    .line 232
    :cond_4
    add-int/lit8 v2, v2, 0x2

    .line 233
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x1f

    or-int/lit16 v8, v8, 0xc0

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 235
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v8, v8, 0x80

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    goto :goto_2

    .line 242
    .end local v0           #current:C
    :cond_5
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->UTF8Cache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v6, p1, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->put([CI)I

    move-result v4

    .line 246
    if-gt v2, v10, :cond_1

    .line 249
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 250
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    add-int/lit8 v6, v3, 0x1

    int-to-byte v7, v2

    aput-byte v7, v5, v6

    .line 252
    .end local v2           #length:I
    .end local v3           #savedCurrentOffset:I
    :cond_6
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->stringCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    iget v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v5, p1, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->put([CI)I

    move-result v1

    .line 253
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 254
    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .end local v4           #stringIndex:I
    :cond_7
    move v5, v1

    .line 256
    goto :goto_1
.end method

.method literalIndexForNameAndType(II)I
    .locals 5
    .parameter "nameIndex"
    .parameter "typeIndex"

    .prologue
    .line 261
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 262
    .local v1, key:[I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->nameAndTypeCache:Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;

    invoke-virtual {v2, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->get([I)I

    move-result v0

    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 263
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->nameAndTypeCache:Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v2, v1, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->put([II)I

    move-result v0

    .line 264
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 265
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 266
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 268
    :cond_0
    return v0
.end method

.method typeIndex(Ljava/lang/String;)I
    .locals 6
    .parameter "typeName"

    .prologue
    const/16 v5, 0x2e

    .line 273
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 274
    const/16 v3, 0x2f

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 276
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 277
    .local v0, charArray:[C
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->classNameCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->get([C)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_1

    .line 278
    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v2

    .line 279
    .local v2, nameIndex:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->classNameCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v3, v0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->put([CI)I

    move-result v1

    .line 280
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 281
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 283
    .end local v2           #nameIndex:I
    :cond_1
    return v1
.end method
