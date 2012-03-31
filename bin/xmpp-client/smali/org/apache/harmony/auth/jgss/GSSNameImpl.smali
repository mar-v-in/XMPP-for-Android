.class public abstract Lorg/apache/harmony/auth/jgss/GSSNameImpl;
.super Ljava/lang/Object;
.source "GSSNameImpl.java"

# interfaces
.implements Lorg/ietf/jgss/GSSName;


# static fields
.field private static final EXPORTED_TOKEN_FIRST_BYTE:B = 0x4t

.field private static final EXPORTED_TOKEN_LENGTH:I = 0x2

.field private static final EXPORTED_TOKEN_SECOND_BYTE:B = 0x1t

.field private static final FIX_CONTENT_LENGTH:I = 0x8

.field private static final NAME_LENGTH_ENCODED_LENGTH:I = 0x4

.field private static final OID_LENGTH_ENCODED_LENGTH:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static importFromString([BLorg/apache/harmony/auth/jgss/GSSManagerImpl;)Lorg/ietf/jgss/GSSName;
    .locals 14
    .parameter "encodedGSSName"
    .parameter "gssManagerImpl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 40
    move-object v0, p0

    .line 41
    .local v0, encoded:[B
    const/4 v4, 0x0

    .line 43
    .local v4, index:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aget-byte v10, v0, v4

    if-ne v10, v12, :cond_1

    .line 44
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aget-byte v10, v0, v5

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 45
    :goto_0
    new-instance v10, Lorg/ietf/jgss/GSSException;

    const/4 v11, 0x3

    .line 47
    const-string v12, "Illegal token in importing string to GSSName"

    .line 45
    invoke-direct {v10, v11, v13, v12}, Lorg/ietf/jgss/GSSException;-><init>(IILjava/lang/String;)V

    throw v10

    .line 51
    :cond_0
    const/4 v10, 0x2

    .line 50
    invoke-static {v0, v4, v10}, Lorg/apache/harmony/auth/jgss/GSSUtils;->toInt([BII)I

    move-result v9

    .line 52
    .local v9, oidLength:I
    add-int/lit8 v4, v4, 0x2

    .line 54
    new-array v1, v9, [B

    .line 55
    .local v1, encodedMech:[B
    invoke-static {v0, v4, v1, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    add-int/lit8 v4, v9, 0x4

    .line 57
    new-instance v6, Lorg/ietf/jgss/Oid;

    invoke-direct {v6, v1}, Lorg/ietf/jgss/Oid;-><init>([B)V

    .line 58
    .local v6, mech:Lorg/ietf/jgss/Oid;
    invoke-virtual {p1, v6}, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->getSpi(Lorg/ietf/jgss/Oid;)Lorg/apache/harmony/auth/jgss/GSSMechSpi;

    move-result-object v3

    .line 60
    .local v3, gssApi:Lorg/apache/harmony/auth/jgss/GSSMechSpi;
    invoke-static {v0, v4, v12}, Lorg/apache/harmony/auth/jgss/GSSUtils;->toInt([BII)I

    move-result v8

    .line 62
    .local v8, nameLength:I
    add-int/lit8 v4, v4, 0x4

    .line 64
    new-array v2, v8, [B

    .line 65
    .local v2, encodedName:[B
    invoke-static {v0, v4, v2, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-static {v2}, Lorg/apache/harmony/auth/jgss/GSSUtils;->toString([B)Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, name:Ljava/lang/String;
    invoke-interface {v3, v7}, Lorg/apache/harmony/auth/jgss/GSSMechSpi;->createName(Ljava/lang/String;)Lorg/ietf/jgss/GSSName;

    move-result-object v10

    return-object v10

    .end local v1           #encodedMech:[B
    .end local v2           #encodedName:[B
    .end local v3           #gssApi:Lorg/apache/harmony/auth/jgss/GSSMechSpi;
    .end local v4           #index:I
    .end local v6           #mech:Lorg/ietf/jgss/Oid;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #nameLength:I
    .end local v9           #oidLength:I
    .restart local v5       #index:I
    :cond_1
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 72
    instance-of v0, p1, Lorg/ietf/jgss/GSSName;

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    check-cast p1, Lorg/ietf/jgss/GSSName;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/auth/jgss/GSSNameImpl;->equals(Lorg/ietf/jgss/GSSName;)Z
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 78
    :goto_0
    return v0

    .line 75
    :catch_0
    move-exception v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public export()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 83
    invoke-virtual {p0}, Lorg/apache/harmony/auth/jgss/GSSNameImpl;->exportMechDependent()[B

    move-result-object v3

    .line 84
    .local v3, name:[B
    invoke-virtual {p0}, Lorg/apache/harmony/auth/jgss/GSSNameImpl;->getMech()Lorg/ietf/jgss/Oid;

    move-result-object v7

    invoke-virtual {v7}, Lorg/ietf/jgss/Oid;->getDER()[B

    move-result-object v5

    .line 86
    .local v5, oid:[B
    array-length v7, v5

    add-int/lit8 v7, v7, 0x8

    .line 87
    array-length v8, v3

    .line 86
    add-int/2addr v7, v8

    new-array v0, v7, [B

    .line 88
    .local v0, encoded:[B
    const/4 v1, 0x0

    .line 89
    .local v1, index:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    aput-byte v10, v0, v1

    .line 90
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    const/4 v7, 0x1

    aput-byte v7, v0, v2

    .line 92
    array-length v7, v5

    invoke-static {v7, v11}, Lorg/apache/harmony/auth/jgss/GSSUtils;->getBytes(II)[B

    move-result-object v6

    .line 94
    .local v6, oid_length:[B
    invoke-static {v6, v9, v0, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    add-int/lit8 v1, v1, 0x2

    .line 97
    array-length v7, v5

    invoke-static {v5, v9, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    array-length v7, v5

    add-int/lit8 v1, v7, 0x4

    .line 100
    array-length v7, v3

    invoke-static {v7, v10}, Lorg/apache/harmony/auth/jgss/GSSUtils;->getBytes(II)[B

    move-result-object v4

    .line 102
    .local v4, name_length:[B
    invoke-static {v4, v9, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    add-int/lit8 v1, v1, 0x4

    .line 105
    array-length v7, v3

    invoke-static {v3, v9, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    return-object v0
.end method

.method protected abstract exportMechDependent()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method protected abstract getMech()Lorg/ietf/jgss/Oid;
.end method
