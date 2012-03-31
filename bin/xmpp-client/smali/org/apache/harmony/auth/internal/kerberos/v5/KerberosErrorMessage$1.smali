.class Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "KerberosErrorMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .parameter "$anonymous0"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 91
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage$1;->setOptional(I)V

    .line 92
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage$1;->setOptional(I)V

    .line 93
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage$1;->setOptional(I)V

    .line 94
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage$1;->setOptional(I)V

    .line 95
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage$1;->setOptional(I)V

    .line 96
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage$1;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 102
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 104
    .local v1, values:[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;

    invoke-direct {v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;-><init>()V

    .line 106
    .local v0, message:Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;
    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Date;

    #setter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->ctime:Ljava/util/Date;
    invoke-static {v0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->access$0(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Ljava/util/Date;)V

    .line 107
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 108
    aget-object v2, v1, v3

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    #setter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->cusec:I
    invoke-static {v0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->access$1(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;I)V

    .line 110
    :cond_0
    const/4 v2, 0x4

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Date;

    #setter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->stime:Ljava/util/Date;
    invoke-static {v0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->access$2(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Ljava/util/Date;)V

    .line 111
    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    #setter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->susec:I
    invoke-static {v0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->access$3(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;I)V

    .line 112
    const/4 v2, 0x6

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    #setter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->errorCode:I
    invoke-static {v0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->access$4(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;I)V

    .line 113
    const/4 v2, 0x7

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    #setter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->crealm:Ljava/lang/String;
    invoke-static {v0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->access$5(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Ljava/lang/String;)V

    .line 114
    const/16 v2, 0x8

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    #setter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->cname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    invoke-static {v0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->access$6(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;)V

    .line 115
    const/16 v2, 0x9

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    #setter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->realm:Ljava/lang/String;
    invoke-static {v0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->access$7(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Ljava/lang/String;)V

    .line 116
    const/16 v2, 0xa

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    #setter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    invoke-static {v0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->access$8(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;)V

    .line 117
    const/16 v2, 0xb

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    #setter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->etext:Ljava/lang/String;
    invoke-static {v0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->access$9(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Ljava/lang/String;)V

    .line 119
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .parameter "object"
    .parameter "values"

    .prologue
    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "auth.64"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
