.class public final Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;
.super Ljava/lang/Object;
.source "ProxyClassFile.java"

# interfaces
.implements Lorg/apache/harmony/luni/internal/reflect/ProxyConstants;


# static fields
.field private static ClassGetMethod:Ljava/lang/reflect/Method; = null

.field private static HandlerInvokeMethod:Ljava/lang/reflect/Method; = null

.field private static final INCREMENT_SIZE:I = 0xfa

.field private static final INITIAL_CONTENTS_SIZE:I = 0x3e8

.field private static final INITIAL_HEADER_SIZE:I = 0x1f4

.field private static ObjectEqualsMethod:Ljava/lang/reflect/Method;

.field private static ObjectHashCodeMethod:Ljava/lang/reflect/Method;

.field private static ObjectToStringMethod:Ljava/lang/reflect/Method;

.field private static ProxyConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static ProxyHandlerField:Ljava/lang/reflect/Field;

.field private static UndeclaredThrowableExceptionConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

.field private constantPoolOffset:I

.field private contents:[B

.field private contentsOffset:I

.field header:[B

.field headerOffset:I

.field private proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

.field private final typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 11
    .parameter "typeName"
    .parameter "interfaces"

    .prologue
    const/16 v10, 0x31

    const/4 v9, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeName:Ljava/lang/String;

    .line 156
    const/16 v6, 0x1f4

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    .line 158
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    const/16 v8, -0x36

    aput-byte v8, v6, v7

    .line 159
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    const/4 v8, -0x2

    aput-byte v8, v6, v7

    .line 160
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    const/16 v8, -0x46

    aput-byte v8, v6, v7

    .line 161
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    const/16 v8, -0x42

    aput-byte v8, v6, v7

    .line 163
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    aput-byte v9, v6, v7

    .line 164
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    aput-byte v9, v6, v7

    .line 165
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    aput-byte v9, v6, v7

    .line 166
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    aput-byte v10, v6, v7

    .line 167
    iget v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    iput v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPoolOffset:I

    .line 168
    iget v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    .line 169
    new-instance v6, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-direct {v6, p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;-><init>(Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;)V

    iput-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 170
    const/16 v6, 0x3e8

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    .line 172
    const/16 v0, 0x31

    .line 173
    .local v0, accessFlags:I
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    aput-byte v9, v6, v7

    .line 174
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    aput-byte v10, v6, v7

    .line 175
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-virtual {v6, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, classNameIndex:I
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 177
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    int-to-byte v8, v1

    aput-byte v8, v6, v7

    .line 178
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 179
    const-string v7, "java/lang/reflect/Proxy"

    invoke-virtual {v6, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v5

    .line 180
    .local v5, superclassNameIndex:I
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    shr-int/lit8 v8, v5, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 181
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    int-to-byte v8, v5

    aput-byte v8, v6, v7

    .line 182
    array-length v4, p2

    .line 183
    .local v4, interfacesCount:I
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    shr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 184
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    int-to-byte v8, v4

    aput-byte v8, v6, v7

    .line 185
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 191
    return-void

    .line 186
    :cond_0
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    aget-object v7, p2, v2

    .line 187
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 186
    invoke-virtual {v6, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v3

    .line 188
    .local v3, interfaceIndex:I
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    shr-int/lit8 v8, v3, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 189
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    int-to-byte v8, v3

    aput-byte v8, v6, v7

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addAttributes()V
    .locals 4

    .prologue
    .line 194
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 197
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    iget-object v1, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    .line 198
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    iget v1, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    iput v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    .line 199
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    iget v0, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    .line 200
    .local v0, constantPoolCount:I
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPoolOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPoolOffset:I

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 201
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPoolOffset:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 202
    return-void
.end method

.method private addFields()V
    .locals 5

    .prologue
    .line 206
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    array-length v1, v3

    .line 207
    .local v1, methodCount:I
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 208
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 218
    return-void

    .line 209
    :cond_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 211
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-direct {p0, v3, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getFieldNamebyMethodName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, methodName:Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 213
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 212
    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 214
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 215
    const-string v4, "Ljava/lang/reflect/Method;"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v3

    .line 214
    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 216
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addMethods()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 221
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    array-length v5, v8

    .line 222
    .local v5, methodCount:I
    add-int/lit8 v8, v5, 0x2

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 225
    invoke-direct {p0, v12}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 226
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v9, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->Init:[C

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 227
    sget-object v8, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyConstructor:Ljava/lang/reflect/Constructor;

    if-nez v8, :cond_0

    .line 229
    :try_start_0
    const-class v8, Ljava/lang/reflect/Proxy;

    .line 230
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/reflect/InvocationHandler;

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 229
    sput-object v8, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 236
    sget-object v9, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyConstructor:Ljava/lang/reflect/Constructor;

    invoke-static {v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/reflect/Constructor;)[C

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v8

    .line 235
    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 237
    invoke-direct {p0, v12}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 238
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v9, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->CodeName:[C

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 240
    const/4 v0, 0x6

    .line 241
    .local v0, codeLength:I
    const/16 v8, 0x12

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedWord(I)V

    .line 243
    invoke-direct {p0, v14}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 244
    invoke-direct {p0, v14}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 245
    const/4 v8, 0x6

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedWord(I)V

    .line 246
    const/16 v8, 0x2a

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 247
    const/16 v8, 0x2b

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 248
    const/16 v8, 0xb7

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 249
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v9, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Constructor;)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 250
    const/16 v8, 0xb1

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 251
    invoke-direct {p0, v13}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 252
    invoke-direct {p0, v13}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 255
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v5, :cond_1

    .line 285
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeStaticInitializer()V

    .line 286
    return-void

    .line 231
    .end local v0           #codeLength:I
    .end local v3           #i:I
    :catch_0
    move-exception v1

    .line 232
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v8, Ljava/lang/InternalError;

    invoke-direct {v8}, Ljava/lang/InternalError;-><init>()V

    throw v8

    .line 256
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    .restart local v0       #codeLength:I
    .restart local v3       #i:I
    :cond_1
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    aget-object v6, v8, v3

    .line 257
    .local v6, pMethod:Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;
    iget-object v4, v6, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    .line 258
    .local v4, method:Ljava/lang/reflect/Method;
    const/16 v8, 0x11

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 259
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 260
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 259
    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 261
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 262
    invoke-static {v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/reflect/Method;)[C

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v8

    .line 261
    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 264
    iget-object v7, v6, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    .line 265
    .local v7, thrownsExceptions:[Ljava/lang/Class;
    array-length v2, v7

    .line 266
    .local v2, eLength:I
    if-lez v2, :cond_3

    .line 267
    invoke-direct {p0, v14}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 270
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v9, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ExceptionsName:[C

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 273
    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedWord(I)V

    .line 274
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 275
    const/4 v1, 0x0

    .local v1, e:I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 282
    .end local v1           #e:I
    :goto_2
    invoke-direct {p0, v6, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->generateCodeAttribute(Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;I)V

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    .restart local v1       #e:I
    :cond_2
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 277
    aget-object v9, v7, v1

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v8

    .line 276
    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 280
    .end local v1           #e:I
    :cond_3
    invoke-direct {p0, v12}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    goto :goto_2
.end method

.method private completeCodeDescription(III)V
    .locals 2
    .parameter "codeLength"
    .parameter "offset"
    .parameter "maxLocals"

    .prologue
    .line 290
    add-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedWord(II)V

    .line 291
    add-int/lit8 v0, p3, 0xa

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(II)V

    .line 292
    add-int/lit8 v0, p2, 0x6

    invoke-direct {p0, p3, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(II)V

    .line 293
    add-int/lit8 v0, p1, -0xc

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedWord(II)V

    .line 294
    return-void
.end method

.method private findMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p1, nextInterface:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, allMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;>;"
    .local p3, interfacesSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    const/4 v7, 0x0

    .line 337
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 358
    :cond_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 343
    .local v1, existingMethodCount:I
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 344
    .local v4, methods:[Ljava/lang/reflect/Method;
    array-length v9, v4

    move v8, v7

    :goto_0
    if-lt v8, v9, :cond_2

    .line 353
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    .line 354
    .local v5, superInterfaces:[Ljava/lang/Class;
    array-length v8, v5

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v0, v5, v6

    .line 356
    .local v0, element:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, v0, p2, p3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->findMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 354
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 344
    .end local v0           #element:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #superInterfaces:[Ljava/lang/Class;
    :cond_2
    aget-object v3, v4, v8

    .line 345
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-lt v2, v1, :cond_4

    .line 350
    new-instance v6, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    invoke-direct {v6, p1, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 346
    :cond_4
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    invoke-virtual {v6, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->matchMethod(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private findMethods([Ljava/lang/Class;)V
    .locals 10
    .parameter "interfaces"

    .prologue
    const/4 v4, 0x0

    .line 303
    sget-object v5, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectEqualsMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_0

    .line 305
    :try_start_0
    const-class v5, Ljava/lang/Object;

    const-string v6, "equals"

    .line 306
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 305
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectEqualsMethod:Ljava/lang/reflect/Method;

    .line 307
    const-class v5, Ljava/lang/Object;

    const-string v6, "hashCode"

    .line 308
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    .line 307
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectHashCodeMethod:Ljava/lang/reflect/Method;

    .line 309
    const-class v5, Ljava/lang/Object;

    const-string v6, "toString"

    .line 310
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    .line 309
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectToStringMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v5, 0x19

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    .local v0, allMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;>;"
    new-instance v5, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    const-class v6, Ljava/lang/Object;

    sget-object v7, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectEqualsMethod:Ljava/lang/reflect/Method;

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v5, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    const-class v6, Ljava/lang/Object;

    sget-object v7, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectHashCodeMethod:Ljava/lang/reflect/Method;

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v5, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    const-class v6, Ljava/lang/Object;

    sget-object v7, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectToStringMethod:Ljava/lang/reflect/Method;

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 322
    .local v3, interfacesSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    array-length v5, p1

    :goto_0
    if-lt v4, v5, :cond_1

    .line 326
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    .line 327
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 328
    return-void

    .line 311
    .end local v0           #allMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;>;"
    .end local v3           #interfacesSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    :catch_0
    move-exception v2

    .line 312
    .local v2, ex:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    throw v4

    .line 322
    .end local v2           #ex:Ljava/lang/NoSuchMethodException;
    .restart local v0       #allMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;>;"
    .restart local v3       #interfacesSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    :cond_1
    aget-object v1, p1, v4

    .line 323
    .local v1, element:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, v1, v0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->findMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 322
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private genCastReturnType(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v1, 0xc0

    .line 366
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 368
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 369
    const/16 v0, 0xb1

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 392
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 372
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 373
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeWrapperName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    .line 372
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 374
    const/16 v0, 0xb6

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 375
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 376
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeAccessMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Method;)I

    move-result v0

    .line 375
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 377
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 378
    const/16 v0, 0xad

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 379
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 380
    const/16 v0, 0xae

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 381
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 382
    const/16 v0, 0xaf

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 384
    :cond_3
    const/16 v0, 0xac

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 388
    :cond_4
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 389
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 390
    const/16 v0, 0xb0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0
.end method

.method private genInvokeArg(Ljava/lang/Class;I)I
    .locals 3
    .parameter
    .parameter "argByteOffset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v2, 0xff

    .line 577
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 578
    const/16 v0, 0xbb

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 579
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeWrapperName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 580
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 581
    if-le p2, v2, :cond_0

    .line 582
    const/16 v0, 0xc4

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 584
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 585
    packed-switch p2, :pswitch_data_0

    .line 599
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 600
    if-le p2, v2, :cond_1

    .line 601
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 606
    :goto_0
    add-int/lit8 p2, p2, 0x2

    .line 677
    :goto_1
    const/16 v0, 0xb7

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 678
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeInitMethod(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Constructor;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 683
    :goto_2
    return p2

    .line 587
    :pswitch_0
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 590
    :pswitch_1
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 593
    :pswitch_2
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 596
    :pswitch_3
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 603
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 607
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 608
    packed-switch p2, :pswitch_data_1

    .line 622
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 623
    if-le p2, v2, :cond_3

    .line 624
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 629
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 610
    :pswitch_4
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_3

    .line 613
    :pswitch_5
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_3

    .line 616
    :pswitch_6
    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_3

    .line 619
    :pswitch_7
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_3

    .line 626
    :cond_3
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_3

    .line 630
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 631
    packed-switch p2, :pswitch_data_2

    .line 645
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 646
    if-le p2, v2, :cond_5

    .line 647
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 652
    :goto_4
    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 633
    :pswitch_8
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_4

    .line 636
    :pswitch_9
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_4

    .line 639
    :pswitch_a
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_4

    .line 642
    :pswitch_b
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_4

    .line 649
    :cond_5
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_4

    .line 654
    :cond_6
    packed-switch p2, :pswitch_data_3

    .line 668
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 669
    if-le p2, v2, :cond_7

    .line 670
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 675
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    .line 656
    :pswitch_c
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_5

    .line 659
    :pswitch_d
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_5

    .line 662
    :pswitch_e
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_5

    .line 665
    :pswitch_f
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_5

    .line 672
    :cond_7
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_5

    .line 680
    :cond_8
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genLoadArg(I)V

    .line 681
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_2

    .line 585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 608
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 631
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 654
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private genInvokeArgs([Ljava/lang/Class;)I
    .locals 5
    .parameter "argTypes"

    .prologue
    .line 697
    const/4 v0, 0x1

    .line 698
    .local v0, argByteOffset:I
    array-length v2, p1

    .line 699
    .local v2, length:I
    if-nez v2, :cond_1

    .line 700
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 712
    :cond_0
    return v0

    .line 702
    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeIntConstant(I)V

    .line 703
    const/16 v3, 0xbd

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 704
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    const-string v4, "java/lang/Object"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 705
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 706
    const/16 v3, 0x59

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 707
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeIntConstant(I)V

    .line 708
    aget-object v3, p1, v1

    invoke-direct {p0, v3, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genInvokeArg(Ljava/lang/Class;I)I

    move-result v0

    .line 709
    const/16 v3, 0x53

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private genLoadArg(I)V
    .locals 2
    .parameter "argByteOffset"

    .prologue
    const/16 v1, 0x19

    .line 716
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 717
    const/16 v0, 0xc4

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 718
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 719
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 739
    :goto_0
    return-void

    .line 721
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 735
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 736
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 723
    :pswitch_0
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 726
    :pswitch_1
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 729
    :pswitch_2
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 732
    :pswitch_3
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 721
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private genStoreArg(I)V
    .locals 2
    .parameter "argByteOffset"

    .prologue
    const/16 v1, 0x3a

    .line 742
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 743
    const/16 v0, 0xc4

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 744
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 745
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 765
    :goto_0
    return-void

    .line 747
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 761
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 762
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 749
    :pswitch_0
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 752
    :pswitch_1
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 755
    :pswitch_2
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 758
    :pswitch_3
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static generateBytes(Ljava/lang/String;[Ljava/lang/Class;)[B
    .locals 2
    .parameter "typeName"
    .parameter "interfaces"

    .prologue
    .line 55
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 57
    .local v0, classFile:Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;
    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->findMethods([Ljava/lang/Class;)V

    .line 58
    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->addFields()V

    .line 59
    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->addMethods()V

    .line 60
    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->addAttributes()V

    .line 61
    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private generateCodeAttribute(Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;I)V
    .locals 23
    .parameter "pMethod"
    .parameter "index"

    .prologue
    .line 395
    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    .line 396
    .local v8, codeAttributeOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v12, v0

    .line 397
    .local v12, contentsLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int/lit8 v18, v18, 0x64

    move/from16 v0, v18

    if-lt v0, v12, :cond_0

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 399
    add-int/lit16 v0, v12, 0xfa

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 398
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    .line 399
    const/16 v21, 0x0

    .line 398
    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v18, v0

    sget-object v19, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->CodeName:[C

    invoke-virtual/range {v18 .. v19}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xc

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    .line 418
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    .line 419
    .local v11, codeStartOffset:I
    const/16 v18, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 420
    const/16 v18, 0xb4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 421
    sget-object v18, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyHandlerField:Ljava/lang/reflect/Field;

    if-nez v18, :cond_1

    .line 423
    :try_start_0
    const-class v18, Ljava/lang/reflect/Proxy;

    const-string v19, "h"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    sput-object v18, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyHandlerField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v18, v0

    sget-object v19, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyHandlerField:Ljava/lang/reflect/Field;

    invoke-virtual/range {v18 .. v19}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Field;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 429
    const/16 v18, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 430
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    .line 431
    .local v17, method:Ljava/lang/reflect/Method;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 432
    .local v4, argTypes:[Ljava/lang/Class;
    const/16 v18, 0xb2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 434
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getFieldNamebyMethodName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 435
    const-class v21, Ljava/lang/reflect/Method;

    .line 433
    invoke-virtual/range {v18 .. v21}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 436
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genInvokeArgs([Ljava/lang/Class;)I

    move-result v15

    .line 437
    .local v15, maxLocals:I
    const/16 v18, 0xb9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 438
    sget-object v18, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->HandlerInvokeMethod:Ljava/lang/reflect/Method;

    if-nez v18, :cond_2

    .line 440
    :try_start_1
    const-class v18, Ljava/lang/reflect/InvocationHandler;

    .line 441
    const-string v19, "invoke"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Ljava/lang/Object;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-class v22, Ljava/lang/reflect/Method;

    aput-object v22, v20, v21

    const/16 v21, 0x2

    .line 442
    const-class v22, [Ljava/lang/Object;

    aput-object v22, v20, v21

    .line 440
    invoke-virtual/range {v18 .. v20}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    sput-object v18, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->HandlerInvokeMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v18, v0

    sget-object v19, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->HandlerInvokeMethod:Ljava/lang/reflect/Method;

    invoke-virtual/range {v18 .. v19}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Method;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 448
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 449
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 450
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genCastReturnType(Ljava/lang/Class;)V

    .line 451
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move/from16 v18, v0

    sub-int v10, v18, v11

    .line 453
    .local v10, codeLength:I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->getCheckedExceptions()[Ljava/lang/Class;

    move-result-object v5

    .line 454
    .local v5, checkedExceptions:[Ljava/lang/Class;
    array-length v6, v5

    .line 455
    .local v6, checkedLength:I
    if-lez v6, :cond_5

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move/from16 v18, v0

    sub-int v9, v18, v11

    .line 457
    .local v9, codeEndIndex:I
    const/16 v18, 0xbf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 459
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genStoreArg(I)V

    .line 460
    const/16 v18, 0xbb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v18, v0

    .line 462
    const-string v19, "java/lang/reflect/UndeclaredThrowableException"

    invoke-virtual/range {v18 .. v19}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v18

    .line 461
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 463
    const/16 v18, 0x59

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 464
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genLoadArg(I)V

    .line 465
    add-int/lit8 v15, v15, 0x1

    .line 466
    const/16 v18, 0xb7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 467
    sget-object v18, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->UndeclaredThrowableExceptionConstructor:Ljava/lang/reflect/Constructor;

    if-nez v18, :cond_3

    .line 469
    :try_start_2
    const-class v18, Ljava/lang/reflect/UndeclaredThrowableException;

    .line 470
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/lang/Throwable;

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v18

    .line 469
    sput-object v18, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->UndeclaredThrowableExceptionConstructor:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 475
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v18, v0

    .line 476
    sget-object v19, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->UndeclaredThrowableExceptionConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual/range {v18 .. v19}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Constructor;)I

    move-result v18

    .line 475
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 477
    const/16 v18, 0xbf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move/from16 v18, v0

    sub-int v10, v18, v11

    .line 482
    add-int/lit8 v18, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 483
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-lt v14, v6, :cond_4

    .line 490
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 491
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 492
    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v18, v0

    const-string v19, "java/lang/Throwable"

    invoke-virtual/range {v18 .. v19}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 499
    .end local v9           #codeEndIndex:I
    .end local v14           #i:I
    :goto_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 509
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move/from16 v18, v0

    .line 510
    add-int/lit8 v19, v8, 0x6

    .line 509
    sub-int v7, v18, v19

    .line 511
    .local v7, codeAttributeLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x2

    shr-int/lit8 v20, v7, 0x18

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x3

    shr-int/lit8 v20, v7, 0x10

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x4

    shr-int/lit8 v20, v7, 0x8

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x5

    int-to-byte v0, v7

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 516
    add-int/lit8 v16, v15, 0xa

    .line 517
    .local v16, maxStack:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x6

    shr-int/lit8 v20, v16, 0x8

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x7

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x8

    shr-int/lit8 v20, v15, 0x8

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x9

    int-to-byte v0, v15

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0xa

    shr-int/lit8 v20, v10, 0x18

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0xb

    shr-int/lit8 v20, v10, 0x10

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0xc

    shr-int/lit8 v20, v10, 0x8

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0xd

    int-to-byte v0, v10

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 525
    return-void

    .line 424
    .end local v4           #argTypes:[Ljava/lang/Class;
    .end local v5           #checkedExceptions:[Ljava/lang/Class;
    .end local v6           #checkedLength:I
    .end local v7           #codeAttributeLength:I
    .end local v10           #codeLength:I
    .end local v15           #maxLocals:I
    .end local v16           #maxStack:I
    .end local v17           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v13

    .line 425
    .local v13, e:Ljava/lang/NoSuchFieldException;
    new-instance v18, Ljava/lang/InternalError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InternalError;-><init>()V

    throw v18

    .line 443
    .end local v13           #e:Ljava/lang/NoSuchFieldException;
    .restart local v4       #argTypes:[Ljava/lang/Class;
    .restart local v15       #maxLocals:I
    .restart local v17       #method:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v13

    .line 444
    .local v13, e:Ljava/lang/NoSuchMethodException;
    new-instance v18, Ljava/lang/InternalError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InternalError;-><init>()V

    throw v18

    .line 471
    .end local v13           #e:Ljava/lang/NoSuchMethodException;
    .restart local v5       #checkedExceptions:[Ljava/lang/Class;
    .restart local v6       #checkedLength:I
    .restart local v9       #codeEndIndex:I
    .restart local v10       #codeLength:I
    :catch_2
    move-exception v13

    .line 472
    .restart local v13       #e:Ljava/lang/NoSuchMethodException;
    new-instance v18, Ljava/lang/InternalError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InternalError;-><init>()V

    throw v18

    .line 484
    .end local v13           #e:Ljava/lang/NoSuchMethodException;
    .restart local v14       #i:I
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 485
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 486
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v18, v0

    aget-object v19, v5, v14

    .line 488
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 487
    invoke-virtual/range {v18 .. v19}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 483
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 496
    .end local v9           #codeEndIndex:I
    .end local v14           #i:I
    :cond_5
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    goto/16 :goto_1
.end method

.method private generateCodeAttribute3()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 528
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v6, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->CodeName:[C

    invoke-virtual {v5, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 529
    iget v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    .line 530
    .local v0, codeStart:I
    invoke-direct {p0, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedWord(I)V

    .line 531
    invoke-direct {p0, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedWord(I)V

    .line 532
    invoke-direct {p0, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedWord(I)V

    .line 533
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    array-length v5, v5

    if-lt v3, v5, :cond_0

    .line 536
    iget v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    .line 537
    .local v1, gotoTarget:I
    const/16 v5, 0xa7

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 538
    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    .line 539
    .local v4, targetForGotoOffset:I
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 540
    iget v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    sub-int/2addr v5, v0

    add-int/lit8 v2, v5, -0xc

    .line 541
    .local v2, handlerStart:I
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->generateExceptionHandler()V

    .line 542
    iget v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    sub-int v1, v5, v1

    .line 543
    const/16 v5, 0xb1

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 544
    invoke-direct {p0, v1, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(II)V

    .line 545
    iget v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    sub-int/2addr v5, v0

    invoke-direct {p0, v5, v0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->completeCodeDescription(III)V

    .line 546
    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 547
    invoke-direct {p0, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 548
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 549
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 550
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    const-string v6, "java/lang/Exception"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 551
    invoke-direct {p0, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 552
    return-void

    .line 534
    .end local v1           #gotoTarget:I
    .end local v2           #handlerStart:I
    .end local v4           #targetForGotoOffset:I
    :cond_0
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    aget-object v5, v5, v3

    invoke-direct {p0, v5, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->initializeField(Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;I)V

    .line 533
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private generateExceptionHandler()V
    .locals 7

    .prologue
    .line 557
    const/16 v2, 0x4b

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 558
    const/16 v2, 0x2a

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 560
    const/16 v2, 0xb2

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 561
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    const-string v3, "java/lang/System"

    const-string v4, "err"

    .line 562
    const-class v5, Ljava/io/PrintStream;

    .line 561
    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 563
    const/4 v1, 0x0

    .line 565
    .local v1, m:Ljava/lang/reflect/Method;
    :try_start_0
    const-class v2, Ljava/lang/Exception;

    const-string v3, "printStackTrace"

    .line 566
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/io/PrintStream;

    aput-object v6, v4, v5

    .line 565
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 571
    :goto_0
    const/16 v2, 0xb6

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 572
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-virtual {v2, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Method;)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 573
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method private getBytes()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 768
    iget v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 769
    .local v0, fullContents:[B
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    .line 771
    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    .line 770
    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    return-object v0
.end method

.method static getConstantPoolName(Ljava/lang/Class;)[C
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[C"
        }
    .end annotation

    .prologue
    .local p0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v4, 0x2f

    const/16 v3, 0x2e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 72
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 73
    new-array v0, v1, [C

    const/16 v1, 0x56

    aput-char v1, v0, v2

    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 76
    new-array v0, v1, [C

    const/16 v1, 0x49

    aput-char v1, v0, v2

    goto :goto_0

    .line 78
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 79
    new-array v0, v1, [C

    const/16 v1, 0x5a

    aput-char v1, v0, v2

    goto :goto_0

    .line 81
    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 82
    new-array v0, v1, [C

    const/16 v1, 0x42

    aput-char v1, v0, v2

    goto :goto_0

    .line 84
    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 85
    new-array v0, v1, [C

    const/16 v1, 0x43

    aput-char v1, v0, v2

    goto :goto_0

    .line 87
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 88
    new-array v0, v1, [C

    const/16 v1, 0x53

    aput-char v1, v0, v2

    goto :goto_0

    .line 90
    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 91
    new-array v0, v1, [C

    const/16 v1, 0x4a

    aput-char v1, v0, v2

    goto :goto_0

    .line 93
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 94
    new-array v0, v1, [C

    const/16 v1, 0x46

    aput-char v1, v0, v2

    goto :goto_0

    .line 96
    :cond_8
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    .line 97
    new-array v0, v1, [C

    const/16 v1, 0x44

    aput-char v1, v0, v2

    goto :goto_0

    .line 100
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto/16 :goto_0
.end method

.method static getConstantPoolName(Ljava/lang/reflect/Constructor;)[C
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)[C"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, method:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 108
    .local v2, parameters:[Ljava/lang/Class;
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    array-length v3, v2

    add-int/lit8 v3, v3, 0x14

    .line 108
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 114
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/Class;)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    return-object v3

    .line 111
    :cond_0
    aget-object v1, v2, v3

    .line 112
    .local v1, element:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/Class;)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static getConstantPoolName(Ljava/lang/reflect/Method;)[C
    .locals 6
    .parameter "method"

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 124
    .local v2, parameters:[Ljava/lang/Class;
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    array-length v3, v2

    add-int/lit8 v3, v3, 0x14

    .line 124
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 130
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/Class;)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    return-object v3

    .line 127
    :cond_0
    aget-object v1, v2, v3

    .line 128
    .local v1, element:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/Class;)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getFieldNamebyMethodName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "methodName"
    .parameter "index"

    .prologue
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeField(Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;I)V
    .locals 10
    .parameter "m"
    .parameter "index"

    .prologue
    .line 780
    iget-object v5, p1, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, methodName:Ljava/lang/String;
    iget-object v5, p1, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 782
    .local v4, params:[Ljava/lang/Class;
    array-length v3, v4

    .line 783
    .local v3, paramLengths:I
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeLdcWithClass(Ljava/lang/String;)V

    .line 784
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeLdc(Ljava/lang/String;)V

    .line 785
    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeIntConstant(I)V

    .line 786
    const/16 v5, 0xbd

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 787
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    const-string v6, "java/lang/Class"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 788
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 802
    sget-object v5, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ClassGetMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_0

    .line 804
    :try_start_0
    const-class v5, Ljava/lang/Class;

    const-string v6, "getMethod"

    .line 805
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, [Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 804
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ClassGetMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :cond_0
    const/16 v5, 0xb6

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 811
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v6, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ClassGetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Method;)I

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 812
    const/16 v5, 0xb3

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 813
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeName:Ljava/lang/String;

    .line 814
    invoke-direct {p0, v2, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getFieldNamebyMethodName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-class v8, Ljava/lang/reflect/Method;

    .line 813
    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)I

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 815
    return-void

    .line 789
    :cond_1
    const/16 v5, 0x59

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 790
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeIntConstant(I)V

    .line 791
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 792
    const/16 v5, 0xb2

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 793
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 794
    aget-object v6, v4, v1

    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeWrapperName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TYPE"

    const-class v8, Ljava/lang/Class;

    .line 793
    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)I

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 799
    :goto_1
    const/16 v5, 0x53

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 788
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 797
    :cond_2
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeLdcWithClass(Ljava/lang/String;)V

    goto :goto_1

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/InternalError;

    invoke-direct {v5}, Ljava/lang/InternalError;-><init>()V

    throw v5
.end method

.method private typeAccessMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p1, baseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 819
    :try_start_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_1

    .line 820
    const-class v1, Ljava/lang/Integer;

    const-string v2, "intValue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 846
    :cond_0
    :goto_0
    return-object v1

    .line 822
    :cond_1
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_2

    .line 823
    const-class v1, Ljava/lang/Short;

    const-string v2, "shortValue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    .line 825
    :cond_2
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_3

    .line 826
    const-class v1, Ljava/lang/Byte;

    const-string v2, "byteValue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    .line 828
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_4

    .line 829
    const-class v1, Ljava/lang/Boolean;

    const-string v2, "booleanValue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    .line 831
    :cond_4
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_5

    .line 832
    const-class v1, Ljava/lang/Character;

    const-string v2, "charValue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    .line 834
    :cond_5
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_6

    .line 835
    const-class v1, Ljava/lang/Long;

    const-string v2, "longValue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    .line 837
    :cond_6
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_7

    .line 838
    const-class v1, Ljava/lang/Float;

    const-string v2, "floatValue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    .line 840
    :cond_7
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    .line 841
    const-class v1, Ljava/lang/Double;

    const-string v2, "doubleValue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method private typeInitMethod(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 851
    .local p1, baseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    .line 852
    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 881
    :goto_0
    return-object v1

    .line 854
    :cond_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    .line 855
    const-class v1, Ljava/lang/Short;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    .line 857
    :cond_1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    .line 858
    const-class v1, Ljava/lang/Byte;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    .line 860
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    .line 861
    const-class v1, Ljava/lang/Boolean;

    .line 862
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    .line 864
    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    .line 865
    const-class v1, Ljava/lang/Character;

    .line 866
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    .line 868
    :cond_4
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5

    .line 869
    const-class v1, Ljava/lang/Long;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    .line 871
    :cond_5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    .line 872
    const-class v1, Ljava/lang/Float;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    .line 874
    :cond_6
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_7

    .line 875
    const-class v1, Ljava/lang/Double;

    .line 876
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 881
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private typeWrapperName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 885
    .local p1, baseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 886
    const-string v0, "java/lang/Integer"

    .line 909
    :goto_0
    return-object v0

    .line 888
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 889
    const-string v0, "java/lang/Short"

    goto :goto_0

    .line 891
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 892
    const-string v0, "java/lang/Byte"

    goto :goto_0

    .line 894
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 895
    const-string v0, "java/lang/Boolean"

    goto :goto_0

    .line 897
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 898
    const-string v0, "java/lang/Character"

    goto :goto_0

    .line 900
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 901
    const-string v0, "java/lang/Long"

    goto :goto_0

    .line 903
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 904
    const-string v0, "java/lang/Float"

    goto :goto_0

    .line 906
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 907
    const-string v0, "java/lang/Double"

    goto :goto_0

    .line 909
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeIntConstant(I)V
    .locals 1
    .parameter "b"

    .prologue
    .line 913
    packed-switch p1, :pswitch_data_0

    .line 933
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 934
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 936
    :goto_0
    return-void

    .line 915
    :pswitch_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 918
    :pswitch_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 921
    :pswitch_2
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 924
    :pswitch_3
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 927
    :pswitch_4
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 930
    :pswitch_5
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0

    .line 913
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private writeLdc(Ljava/lang/String;)V
    .locals 3
    .parameter "constant"

    .prologue
    .line 939
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 940
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 939
    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndexForLdc([C)I

    move-result v0

    .line 941
    .local v0, index:I
    if-gtz v0, :cond_0

    .line 942
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 944
    :cond_0
    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 945
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 946
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 951
    :goto_0
    return-void

    .line 948
    :cond_1
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 949
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0
.end method

.method private writeLdcWithClass(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 954
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    .line 955
    .local v0, index:I
    if-gtz v0, :cond_0

    .line 956
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 958
    :cond_0
    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 959
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 960
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 965
    :goto_0
    return-void

    .line 962
    :cond_1
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 963
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_0
.end method

.method private writeStaticInitializer()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 968
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 969
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 971
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 972
    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v0

    .line 971
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 973
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 974
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->generateCodeAttribute3()V

    .line 975
    return-void

    .line 969
    :array_0
    .array-data 0x2
        0x3ct 0x0t
        0x63t 0x0t
        0x6ct 0x0t
        0x69t 0x0t
        0x6et 0x0t
        0x69t 0x0t
        0x74t 0x0t
        0x3et 0x0t
    .end array-data

    .line 972
    :array_1
    .array-data 0x2
        0x28t 0x0t
        0x29t 0x0t
        0x56t 0x0t
    .end array-data
.end method

.method private writeUnsignedByte(I)V
    .locals 6
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 979
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :goto_0
    return-void

    .line 980
    :catch_0
    move-exception v1

    .line 981
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    array-length v0, v2

    .line 982
    .local v0, actualLength:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    .line 983
    add-int/lit16 v3, v0, 0xfa

    new-array v3, v3, [B

    .line 982
    iput-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 984
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v3, v3, -0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_0
.end method

.method private writeUnsignedByte(II)V
    .locals 5
    .parameter "b"
    .parameter "offset"

    .prologue
    const/4 v4, 0x0

    .line 990
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    int-to-byte v3, p1

    aput-byte v3, v2, p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :goto_0
    return-void

    .line 991
    :catch_0
    move-exception v1

    .line 992
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    array-length v0, v2

    .line 993
    .local v0, actualLength:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    .line 994
    add-int/lit16 v3, v0, 0xfa

    new-array v3, v3, [B

    .line 993
    iput-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 995
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    add-int/lit8 v3, p2, -0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_0
.end method

.method private writeUnsignedShort(I)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1000
    ushr-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 1001
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 1002
    return-void
.end method

.method private writeUnsignedShort(II)V
    .locals 1
    .parameter "b"
    .parameter "offset"

    .prologue
    .line 1005
    ushr-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(II)V

    .line 1006
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(II)V

    .line 1007
    return-void
.end method

.method private writeUnsignedWord(I)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1010
    ushr-int/lit8 v0, p1, 0x18

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 1011
    ushr-int/lit8 v0, p1, 0x10

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 1012
    ushr-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 1013
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 1014
    return-void
.end method

.method private writeUnsignedWord(II)V
    .locals 2
    .parameter "b"
    .parameter "offset"

    .prologue
    .line 1017
    ushr-int/lit8 v0, p1, 0x18

    invoke-direct {p0, v0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(II)V

    .line 1018
    ushr-int/lit8 v0, p1, 0x10

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(II)V

    .line 1019
    ushr-int/lit8 v0, p1, 0x8

    add-int/lit8 v1, p2, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(II)V

    .line 1020
    add-int/lit8 v0, p2, 0x3

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(II)V

    .line 1021
    return-void
.end method
