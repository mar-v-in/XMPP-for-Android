.class public Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
.super Ljava/lang/Object;
.source "KerberosKey.java"

# interfaces
.implements Ljavax/crypto/SecretKey;
.implements Ljavax/security/auth/Destroyable;


# static fields
.field private static final serialVersionUID:J = -0x4030badd944f0dd1L


# instance fields
.field private transient destroyed:Z

.field private final key:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

.field private principal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

.field private versionNum:I


# direct methods
.method public constructor <init>(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;[BII)V
    .locals 2
    .parameter "principal"
    .parameter "keyBytes"
    .parameter "keyType"
    .parameter "versionNumber"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "auth.47"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->principal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 53
    iput p4, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->versionNum:I

    .line 55
    new-instance v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-direct {v0, p2, p3}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->key:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;[CLjava/lang/String;)V
    .locals 1
    .parameter "principal"
    .parameter "password"
    .parameter "algorithm"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->principal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 64
    new-instance v0, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;-><init>(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;[CLjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->key:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    .line 65
    return-void
.end method

.method private checkState()V
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->destroyed:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "auth.48"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->destroyed:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->principal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 78
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->key:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->destroy()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->destroyed:Z

    .line 81
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 85
    instance-of v2, p1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, p1

    .line 86
    check-cast v0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    .line 87
    .local v0, that:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->versionNum:I

    iget v3, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->versionNum:I

    if-ne v2, v3, :cond_0

    .line 88
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->key:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    check-cast p1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    .end local p1
    iget-object v3, p1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->key:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->principal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    if-eqz v2, :cond_1

    .line 90
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->principal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    iget-object v2, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->principal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v1, v2}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 97
    .end local v0           #that:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    :cond_0
    :goto_0
    return v1

    .line 92
    .restart local v0       #that:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    :cond_1
    iget-object v2, v0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->principal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->key:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEncoded()[B
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->key:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->key:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyType()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->key:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->getKeyType()I

    move-result v0

    return v0
.end method

.method public final getPrincipal()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->checkState()V

    .line 121
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->principal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    return-object v0
.end method

.method public final getVersionNumber()I
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->checkState()V

    .line 126
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->versionNum:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, hashcode:I
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->principal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->principal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_0
    iget v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->versionNum:I

    add-int/2addr v0, v1

    .line 136
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->key:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->destroyed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->checkState()V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "KerberosPrincipal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->principal:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "KeyVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->versionNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->key:Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/kerberos/KeyImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
