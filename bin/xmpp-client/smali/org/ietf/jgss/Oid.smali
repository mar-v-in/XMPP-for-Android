.class public Lorg/ietf/jgss/Oid;
.super Ljava/lang/Object;
.source "Oid.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;


# instance fields
.field private encoding:[B

.field private final oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v0

    sput-object v0, Lorg/ietf/jgss/Oid;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .parameter "derOid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 56
    :cond_0
    :try_start_0
    new-instance v3, Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    sget-object v2, Lorg/ietf/jgss/Oid;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-direct {v3, v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;-><init>([I)V

    iput-object v3, p0, Lorg/ietf/jgss/Oid;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/ietf/jgss/GSSException;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/ietf/jgss/GSSException;-><init>(I)V

    .line 59
    .local v1, gsse:Lorg/ietf/jgss/GSSException;
    invoke-virtual {v1, v0}, Lorg/ietf/jgss/GSSException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 60
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "strOid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    :try_start_0
    new-instance v2, Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    invoke-direct {v2, p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/ietf/jgss/Oid;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/ietf/jgss/GSSException;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/ietf/jgss/GSSException;-><init>(I)V

    .line 75
    .local v1, gsse:Lorg/ietf/jgss/GSSException;
    invoke-virtual {v1, v0}, Lorg/ietf/jgss/GSSException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 76
    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    :try_start_0
    new-instance v3, Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    sget-object v2, Lorg/ietf/jgss/Oid;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->decode([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-direct {v3, v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;-><init>([I)V

    iput-object v3, p0, Lorg/ietf/jgss/Oid;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/ietf/jgss/GSSException;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/ietf/jgss/GSSException;-><init>(I)V

    .line 44
    .local v1, gsse:Lorg/ietf/jgss/GSSException;
    invoke-virtual {v1, v0}, Lorg/ietf/jgss/GSSException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 45
    throw v1
.end method

.method constructor <init>([I)V
    .locals 1
    .parameter "data"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;-><init>([I)V

    iput-object v0, p0, Lorg/ietf/jgss/Oid;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    .line 67
    return-void
.end method


# virtual methods
.method public containedIn([Lorg/ietf/jgss/Oid;)Z
    .locals 6
    .parameter "oids"

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "auth.0D"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_1

    .line 89
    :goto_1
    return v1

    .line 84
    :cond_1
    aget-object v0, p1, v2

    .line 85
    .local v0, element:Lorg/ietf/jgss/Oid;
    iget-object v4, p0, Lorg/ietf/jgss/Oid;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    iget-object v5, v0, Lorg/ietf/jgss/Oid;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    invoke-virtual {v4, v5}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    const/4 v1, 0x1

    goto :goto_1

    .line 84
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 94
    if-ne p0, p1, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 100
    .end local p1
    :goto_0
    return v0

    .line 97
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/ietf/jgss/Oid;

    if-nez v0, :cond_2

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lorg/ietf/jgss/Oid;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    check-cast p1, Lorg/ietf/jgss/Oid;

    .end local p1
    iget-object v1, p1, Lorg/ietf/jgss/Oid;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDER()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v1, p0, Lorg/ietf/jgss/Oid;->encoding:[B

    if-nez v1, :cond_0

    .line 105
    sget-object v1, Lorg/ietf/jgss/Oid;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

    iget-object v2, p0, Lorg/ietf/jgss/Oid;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    invoke-virtual {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->getOid()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Oid;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/ietf/jgss/Oid;->encoding:[B

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/ietf/jgss/Oid;->encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 108
    .local v0, enc:[B
    iget-object v1, p0, Lorg/ietf/jgss/Oid;->encoding:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/ietf/jgss/Oid;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/ietf/jgss/Oid;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
