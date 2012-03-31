.class public Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;
.super Lorg/apache/harmony/auth/jgss/GSSNameImpl;
.source "KerberosName.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final nameType:Lorg/ietf/jgss/Oid;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/ietf/jgss/Oid;)V
    .locals 4
    .parameter "name"
    .parameter "nameType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Lorg/apache/harmony/auth/jgss/GSSNameImpl;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Lorg/ietf/jgss/GSSException;

    .line 41
    const-string v1, "Cannot import null GSSName"

    .line 38
    invoke-direct {v0, v3, v2, v1}, Lorg/ietf/jgss/GSSException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    if-nez p2, :cond_1

    .line 45
    sget-object p2, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->KRB5_PRINCIPAL_NAMETYPE:Lorg/ietf/jgss/Oid;

    .line 48
    :cond_1
    sget-object v0, Lorg/ietf/jgss/GSSName;->NT_HOSTBASED_SERVICE:Lorg/ietf/jgss/Oid;

    invoke-virtual {p2, v0}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    const-string v0, "@"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    :cond_2
    sget-object v0, Lorg/ietf/jgss/GSSName;->NT_HOSTBASED_SERVICE:Lorg/ietf/jgss/Oid;

    invoke-virtual {p2, v0}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 53
    sget-object v0, Lorg/ietf/jgss/GSSName;->NT_USER_NAME:Lorg/ietf/jgss/Oid;

    invoke-virtual {p2, v0}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    sget-object v0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->KRB5_PRINCIPAL_NAMETYPE:Lorg/ietf/jgss/Oid;

    invoke-virtual {p2, v0}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 55
    new-instance v0, Lorg/ietf/jgss/GSSException;

    .line 58
    const-string v1, "Unsupported OID"

    .line 55
    invoke-direct {v0, v3, v2, v1}, Lorg/ietf/jgss/GSSException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 60
    :cond_3
    iput-object p1, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->name:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->nameType:Lorg/ietf/jgss/Oid;

    .line 62
    return-void
.end method


# virtual methods
.method public canonicalize(Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .locals 2
    .parameter "mech"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;

    invoke-virtual {p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;-><init>(Ljava/lang/String;Lorg/ietf/jgss/Oid;)V

    return-object v0
.end method

.method public equals(Lorg/ietf/jgss/GSSName;)Z
    .locals 8
    .parameter "another"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 71
    invoke-virtual {p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->isAnonymous()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p1}, Lorg/ietf/jgss/GSSName;->isAnonymous()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v5

    .line 75
    :cond_1
    instance-of v7, p1, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;

    if-nez v7, :cond_2

    move v5, v6

    .line 77
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 80
    check-cast v1, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;

    .line 81
    .local v1, anotherNameImpl:Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;
    invoke-virtual {p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->getName()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, thisName:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, anotherName:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    .line 85
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->getStringNameType()Lorg/ietf/jgss/Oid;

    move-result-object v4

    .line 89
    .local v4, thisOid:Lorg/ietf/jgss/Oid;
    invoke-virtual {v1}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->getStringNameType()Lorg/ietf/jgss/Oid;

    move-result-object v2

    .line 91
    .local v2, anotherOid:Lorg/ietf/jgss/Oid;
    sget-object v6, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->KRB5_PRINCIPAL_NAMETYPE:Lorg/ietf/jgss/Oid;

    invoke-virtual {v4, v6}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 92
    sget-object v6, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->KRB5_PRINCIPAL_NAMETYPE:Lorg/ietf/jgss/Oid;

    invoke-virtual {v2, v6}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 95
    invoke-virtual {v4, v2}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method protected exportMechDependent()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/auth/jgss/GSSUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected getMech()Lorg/ietf/jgss/Oid;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->KRB5_MECH:Lorg/ietf/jgss/Oid;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStringNameType()Lorg/ietf/jgss/Oid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->nameType:Lorg/ietf/jgss/Oid;

    return-object v0
.end method

.method public isAnonymous()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->nameType:Lorg/ietf/jgss/Oid;

    sget-object v1, Lorg/ietf/jgss/GSSName;->NT_ANONYMOUS:Lorg/ietf/jgss/Oid;

    invoke-virtual {v0, v1}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMN()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosName;->name:Ljava/lang/String;

    return-object v0
.end method
