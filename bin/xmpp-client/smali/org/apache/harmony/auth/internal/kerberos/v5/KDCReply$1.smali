.class Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "KDCReply.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;
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
    .line 102
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 113
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply$1;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v7, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    .line 121
    .local v7, values:[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;

    const/4 v1, 0x1

    aget-object v1, v7, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    .line 122
    const/4 v2, 0x3

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v3, v7, v3

    check-cast v3, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    .line 123
    const/4 v4, 0x5

    aget-object v4, v7, v4

    check-cast v4, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;

    const/4 v5, 0x6

    aget-object v5, v7, v5

    check-cast v5, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;

    .line 121
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;-><init>(ILjava/lang/String;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;)V

    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .parameter "object"
    .parameter "values"

    .prologue
    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
