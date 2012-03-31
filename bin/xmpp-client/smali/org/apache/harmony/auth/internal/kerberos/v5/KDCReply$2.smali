.class Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply$2;
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
    .line 149
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 167
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply$2;->setOptional(I)V

    .line 168
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply$2;->setOptional(I)V

    .line 169
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply$2;->setOptional(I)V

    .line 170
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply$2;->setOptional(I)V

    .line 1
    return-void
.end method
