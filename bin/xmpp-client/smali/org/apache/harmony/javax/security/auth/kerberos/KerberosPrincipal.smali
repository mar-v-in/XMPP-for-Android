.class public final Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;
.super Ljava/lang/Object;
.source "KerberosPrincipal.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field public static final KRB_NT_PRINCIPAL:I = 0x1

.field public static final KRB_NT_SRV_HST:I = 0x3

.field public static final KRB_NT_SRV_INST:I = 0x2

.field public static final KRB_NT_SRV_XHST:I = 0x4

.field public static final KRB_NT_UID:I = 0x5

.field public static final KRB_NT_UNKNOWN:I = 0x0

.field private static final serialVersionUID:J = -0x665882a2f0e1ccd7L


# instance fields
.field private transient name:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

.field private transient realm:Ljava/lang/String;

.field private transient strName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->init(ILjava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "type"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0, p2, p1}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->init(ILjava/lang/String;)V

    .line 63
    if-ltz p2, :cond_0

    const/4 v0, 0x5

    if-le p2, v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.25"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    return-void
.end method

.method private init(ILjava/lang/String;)V
    .locals 6
    .parameter "type"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 116
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 117
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "auth.23"

    invoke-static {v3}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_1
    const/16 v2, 0x40

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 121
    .local v1, pos:I
    if-eq v1, v4, :cond_4

    .line 122
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 127
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 128
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 129
    const-string v3, "auth.24"

    invoke-static {v3}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_3
    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 141
    :goto_0
    new-instance v2, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    invoke-direct {v2, p1, p2}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->name:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    .line 142
    return-void

    .line 136
    :cond_4
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->getRealm()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 149
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->instanceOf([B)Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->name:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    .line 150
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 151
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 150
    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/asn1/ASN1StringType;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    .line 154
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 165
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->name:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    invoke-virtual {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 166
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 167
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    if-ne p1, p0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    instance-of v3, p1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    if-nez v3, :cond_2

    move v1, v2

    .line 74
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 77
    check-cast v0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 79
    .local v0, that:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 80
    iget-object v3, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 81
    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->name:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    iget-object v2, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->name:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    invoke-virtual {v1, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->strName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->name:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    invoke-virtual {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->strName:Ljava/lang/String;

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->strName:Ljava/lang/String;

    return-object v0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->name:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    invoke-virtual {v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->strName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameType()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->name:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    invoke-virtual {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->getType()I

    move-result v0

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
